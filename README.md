# Company Layoffs Analysis - [Dashboard Link](https://public.tableau.com/app/profile/danylo.butynskyy/viz/LayoffAnalysisAcrossCompanies/LayoffsDashboard)


# Company Layoffs Analysis

## Inhaltsverzeichnis
1. [Projektübersicht](#projektübersicht)  
2. [Motivation](#motivation)  
3. [Methodik](#methodik)  
4. [Dashboard-Beschreibung](#dashboard-beschreibung)  
   - [Top-10-Industrien](#top-10-industrien)  
   - [Top-10-Unternehmen](#top-10-unternehmen)  
   - [Entlassungen nach Land](#entlassungen-nach-land)  
   - [Monatliche Entlassungen & kumulatives Total](#monatliche-entlassungen--kumulatives-total)  
5. [Interpretation und Hintergründe](#interpretation-und-hintergründe)  
   - [Soziale Faktoren](#soziale-faktoren)  
   - [Politische Rahmenbedingungen](#politische-rahmenbedingungen)  
   - [Wirtschaftliche Einflüsse](#wirtschaftliche-einflüsse)  
6. [Fazit](#fazit)

## Projektübersicht
Dieses Projekt analysiert Entlassungszahlen großer Unternehmen und Branchen im Jahresverlauf. Das interaktive Dashboard visualisiert Top-Entlassungen nach Industrie und Unternehmen, kartiert die Verteilung nach Ländern und zeigt zeitliche Muster inkl. kumulativem Verlauf. Ziel ist es, Muster und Treiber von Massenentlassungen sichtbar zu machen.

## Motivation
Unternehmensentlassungen wirken sich nachhaltig auf Mitarbeiter, Zulieferketten und Volkswirtschaften aus. Insbesondere in Phasen wirtschaftlicher Unsicherheit oder technologischer Umbrüche ist ein fundiertes Verständnis der betroffenen Branchen und Regionen essenziell. Die Analyse unterstützt Entscheidungsträger in Wirtschaft und Politik, Entlassungstrends zu antizipieren und Gegenstrategien zu entwickeln.

## Methodik
1. **Datenaufbereitung:** Harmonisierung von Branchenbezeichnungen, Konsolidierung mehrerer Datenquellen  
2. **Aggregationen:** Summierung der Entlassungen pro Branche, Unternehmen und Land; Berechnung kumulativer Monatswerte  
3. **Visualisierung:** Erstellung von Balken-, Karten- und Liniendiagrammen in Tableau für interaktives Reporting  

## Dashboard-Beschreibung

### Top-10-Industrien
Ein horizontales Balkendiagramm listet die zehn Branchen mit den höchsten Entlassungszahlen. Die Einzelhandelsbranche führt mit 43 613 Entlassungen, dicht gefolgt von Konsumgütern (42 882). Transport- und Logistikunternehmen weisen ebenfalls hohe Abschlagszahlen auf, oft bedingt durch gestiegene Treibstoffkosten und verändertes Konsumverhalten. Finanzinstitute und Gesundheitsdienstleister erscheinen weiter unten, was auf unterschiedliche Krisenresistenz und Regulierung zurückzuführen ist. Diese Rangfolge verdeutlicht, welche Wirtschaftsbereiche bei Abschwungzyklen besonders exponiert sind.

### Top-10-Unternehmen
Ein weiteres Balkendiagramm zeigt die zehn Firmen mit den größten Entlassungsrunden. Technologiegigant **Amazon** steht mit 18 150 entlassenen Mitarbeitern an der Spitze, gefolgt von **Google** (12 000) und **Meta** (11 000). Die Liste enthält multinationale Konzerne aus Tech, Software und Einzelhandel, was die Digitalisierungseffekte und den Umsatzdruck im E-Commerce-Markt widerspiegelt. Die Zahlen werden durch Quartalsberichte und strategische Neuausrichtungen beeinflusst. Diese Übersicht hilft, die Schlagkraft einzelner Entlassungen im Vergleich zu Branchenaggregaten einzuordnen.

### Entlassungen nach Land
Eine Weltkarte zeigt Entlassungszahlen pro Land farblich abgestuft. Die **USA** dominieren mit 254 959 Fällen aufgrund der zahlreichen globalen Konzerne und umfangreicher Tech- und Retail-Branche. **Indien** folgt mit 35 995 Entlassungen, getrieben durch IT- und Dienstleistungsunternehmen. **Deutschland** liegt im Mittelfeld, was den robusten Arbeitsmarkt und Rückendeckung durch Kurzarbeitsregelungen erklärt. Geringere Werte in skandinavischen Ländern deuten auf stärkeren Sozialstaat und kleineren Marktumfang hin. Die geografische Verteilung zeigt, wie regionale Wirtschaftspolitik und Arbeitsmarktsysteme Entlassungen modulieren.

### Monatliche Entlassungen & kumulatives Total
Ein kombiniertes Liniendiagramm stellt die monatlichen Entlassungen (blaue Linie) und deren kumulative Summe (rote Linie) dar. Im Jänner gab es 92 037 Entlassungen, gefolgt von einem Rückgang im März auf 19 789. Die sommerlichen Monate zeigen moderate Zunahmen, während im November mit 55 458 erneut ein Hoch verzeichnet wurde. Die kumulative Kurve steigt linear an und erreicht im Dezember 380 439. Diese Dynamik illustriert saisonale Effekte, Quartalsberichte und Jahresendprüfungen. Das Zusammenspiel beider Kurven macht Spitzen- und Ruhephasen sowie den Gesamttrend auf einen Blick sichtbar.

## Interpretation und Hintergründe

### Soziale Faktoren
Massenentlassungen in Einzelhandel und Transport resultieren oft aus veränderten Konsumgewohnheiten – etwa E-Commerce-Wachstum und Debatten um Treibhausgasemissionen. Große Tech-Firmen passen Personal an Automatisierungs- und KI-Trends an, wodurch Routineaufgaben abgebaut werden. In Ländern mit starkem Arbeitnehmerschutz (z. B. Deutschland) dämpfen Kurzarbeitsregelungen die brutalen Entlassungswellen. Regionen mit jungen, digitalaffinen Bevölkerungsgruppen (z. B. Indien) verzeichnen höhere Fluktuation in Tech-Dienstleistungen. Diese sozialen Rahmenbedingungen prägen die Branchenanfälligkeit.

### Politische Rahmenbedingungen
Arbeitsmarktgesetze und Sozialversicherungssysteme bestimmen, wie schnell Unternehmen Personal abbauen können. In den USA ermöglichen „at-will“-Regelungen schnelle Entlassungen, während in Europa komplexe Kündigungsschutzverfahren und Abfindungsansprüche abschreckend wirken. Wirtschaftspolitische Stimuli oder Rettungspakete (z. B. in der Corona-Krise) können kurzfristig Entlassungswellen bremsen. Handels- und Zollpolitik beeinflusst Transport- und Logistiksektor; protektionistische Maßnahmen können zu Umstrukturierungen führen. Politische Stabilität und Rechtsrahmen sind deshalb wesentliche Einflussfaktoren.

### Wirtschaftliche Einflüsse
Globale Konjunkturschwankungen und Zinszyklen steuern Investitionsbereitschaft und Konsum. In Rezessionsphasen straucheln Einzelhandel und Transport als erste, was sich in hohen Entlassungszahlen niederschlägt. Tech-Unternehmen reagieren schneller auf Marktveränderungen und passen Mitarbeiterzahlen agil an. Währungs- und Rohstoffkosten belasten internationale Lieferketten und spiegeln sich in Personalentscheidungen wider. M&A-Aktivitäten führen häufig zu Doppelbesetzungen, die rationalisiert werden. Diese wirtschaftlichen Mechanismen treiben die beobachteten Entlassungstrends.

## Fazit
Die Analyse macht deutlich, welche Industrien und Unternehmen in Entlassungswellen führend sind und wie regionale sowie zeitliche Muster verlaufen. Das Verständnis der sozialen, politischen und wirtschaftlichen Hintergründe ermöglicht Handlungsempfehlungen für Politik, Arbeitnehmervertretungen und Unternehmensführung.

