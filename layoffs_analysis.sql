USE world_layoffs;

/*------------------------------------------------------------------------------
  01 | Create staging table as an exact copy of the raw layoffs data
------------------------------------------------------------------------------*/
DROP   TABLE IF EXISTS stage_layoffs;
CREATE TABLE       stage_layoffs LIKE layoffs;
INSERT INTO        stage_layoffs SELECT * FROM layoffs;

/*------------------------------------------------------------------------------
  02 | Eliminate duplicate records based on all key dimensions
------------------------------------------------------------------------------*/
DELETE s
FROM   stage_layoffs AS s
JOIN  (
        SELECT company, location, industry, total_laid_off,
               percentage_laid_off, `date`, country, funds_raised_millions,
               ROW_NUMBER() OVER (
                 PARTITION BY company, location, industry,
                              total_laid_off, percentage_laid_off,
                              `date`, country, funds_raised_millions
               ) AS rn
        FROM stage_layoffs
      ) d
      ON  s.company   = d.company
      AND s.location  = d.location
      AND s.industry  = d.industry
      AND s.total_laid_off        = d.total_laid_off
      AND s.percentage_laid_off <=> d.percentage_laid_off
      AND s.`date`                = d.`date`
      AND s.country               = d.country
      AND s.funds_raised_millions <=> d.funds_raised_millions
WHERE d.rn > 1;

/*------------------------------------------------------------------------------
  03 | Standardize text fields and harmonize naming conventions
------------------------------------------------------------------------------*/
UPDATE stage_layoffs
SET
    company   = TRIM(company),
    location  = TRIM(location),
    industry  = TRIM(industry),
    stage     = TRIM(stage),
    country   = TRIM(TRAILING '.' FROM country);

UPDATE stage_layoffs
SET country = 'United States'
WHERE country LIKE 'United States%';

UPDATE stage_layoffs
SET industry = 'Crypto'
WHERE industry IN ('CryptoCurrency', 'Crypto Currency')
   OR industry LIKE 'Crypto%';

/*------------------------------------------------------------------------------
  04 | Convert string-based dates to proper DATE type
------------------------------------------------------------------------------*/
UPDATE stage_layoffs
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');
ALTER TABLE stage_layoffs MODIFY `date` DATE;

/*------------------------------------------------------------------------------
  05 | Delete entries lacking layoff metrics
------------------------------------------------------------------------------*/
DELETE FROM stage_layoffs
WHERE total_laid_off      IS NULL
  AND percentage_laid_off IS NULL;

/*------------------------------------------------------------------------------
  06 | Create analytical views for reporting and export
------------------------------------------------------------------------------*/
CREATE OR REPLACE VIEW v_layoffs_clean AS
SELECT *
FROM stage_layoffs;

CREATE OR REPLACE VIEW v_monthly_layoffs AS
SELECT
    DATE_FORMAT(`date`, '%Y-%m')     AS month,
    SUM(total_laid_off)              AS total_laid_off,
    SUM(total_laid_off) / COUNT(*)   AS average_laid_off
FROM stage_layoffs
GROUP BY month
ORDER BY month;

CREATE OR REPLACE VIEW v_country_totals AS
SELECT
    country,
    SUM(total_laid_off) AS total_laid_off
FROM stage_layoffs
GROUP BY country
ORDER BY total_laid_off DESC;
