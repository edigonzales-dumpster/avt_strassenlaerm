**TODO:**
- Nach Anlegen der Schemen kann ein Pullrequest der Jobs erstellt werden.
- Der Gretl-Job kann bereits im Branch getestet werden (wenn die Schemen vorhanden sind auf Integration).
- QML für Strassenlärm
- Integration im AGDI
- Warten auf Antwort wegen den Attributen `Gemeinde` und `Parzellennummer` im Pub-Modell.
- Mergen der GRETL-Jobs
- Doku in GRETL-Jobs schreiben

# avt_strassenlaerm
Die Strassenlärmdaten des AVT werden in einer Datenbank beim AVT in einer Fachanwendung (Firma G+P) bewirtschaftet. Die Daten werden zurzeit nicht im Web GIS des Kantons Solothurn publiziert.

Die Strassenlärmdaten sind Geobasisdaten nach Bundesrecht. Entsprechend existiert ein MGDM (minimales Geodatenmodell nach Bundesrecht) und die Daten müssen früher oder später in diesem Modell zum Download bereitgestellt werden können. Im MGDM sind nicht alle für das AVT (und AFU) relevanten Informationen enthalten. In der Datenhaltung der Fachanwendung sind diese Informationen jedoch vorhanden. Eine erste kurze Analyse zeigt, dass von den beiden gewünschten Kartenebenen nur eine sinnvoll durch eine Erweiterung des MGDM hergestellt werden kann. Für die zweite Ebene ist ein eigenes kleines INTERLIS-Modell sinnvoller.

G+P erstellt ein erweitertes INTERLIS-Modell (_Strassenlärm_) basierend auf dem MGDM und liefert circa 1x pro Jahr die INTERLIS-Transferdatei dem AGI zur Integration und Publikation der Daten im Web GIS Client. Das kantonale Modell muss so erweitert werden, damit es mit ili2pg automatisch in das Bundesmodell («polymorphes Schreiben») exportiert werden kann. Zusätzlich wird ein zweites Modell (_Groblärmkataster_) für die zweite Kartenebene erstellt.

Aus des Daten der Fachanwendung entstehen zwei Datenmodelle: _Groblärmkataster_ und _Strassenlärm_. 

## Datenmodell Groblärmkataster
Es gibt nur ein (Publikation-)Modell. Die Daten werden direkt in die Publikationsdatenbank mittels GRETL-Job importiert. Im Web GIS Client wird _ein_ Layer (`TODO: Name und Titel`) publiziert.

### Import Entwicklungsdatenbank (vagrant)
```
java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.7 --dbdatabase pub --dbusr ddluser --dbpwd ddluser \
--dbschema avt_groblaermkataster_pub --models SO_AVT_Groblaermkataster_20190709 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--modeldir "http://models.geo.admin.ch;Groblaermkataster/" --schemaimport 
```

```
java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.7 --dbdatabase pub --dbusr ddluser --dbpwd ddluser \
--dbschema avt_groblaermkataster_pub --models SO_AVT_Groblaermkataster_20190709 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--disableValidation --deleteData \
--modeldir "http://models.geo.admin.ch;Groblaermkataster/" --import Groblaermkataster/groblaermkataster_20190806.xtf
```

### Import GDI
```
java -jar /usr/local/ili2pg-3.11.2/ili2pg.jar --dbhost $DBHOST --dbport 5432 --dbdatabase pub --dbusr $USER --dbpwd $(awk -v dbhost=$DBHOST -F ':' '$1~dbhost{print $5}' ~/.pgpass) \
--schemaimport --dbschema avt_groblaermkataster_pub --models SO_AVT_Groblaermkataster_20190709 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--preScript prescript.sql --postScript postscript.sql
```

Import der Daten wird mittels GRETL-Job gemacht.

### GRETL-Job
Nach dem Starten des on-demand GRETL-Jobs (`avt_groblaermkataster_pub`) wird der Benutzer dazu aufgefordert die zu importierende Datei hochzuladen.

Lokales Testen des GRETL-Jobs:
```
export DB_URI_PUB=jdbc:postgresql://192.168.50.7:5432/pub
export DB_USER_PUB=ddluser
export DB_PWD_PUB=ddluser

scripts/start-gretl.sh --docker-image sogis/gretl-runtime:production --job-directory /Users/stefan/sources/gretljobs_avt_groblaermkataster/avt_groblaermkataster_pub/
```
Beim lokalen Testen muss mangels GUI die zu importierende Datei im Verzeichnis des GRETL-Jobs liegen und zwingend den Namen `groblaermkataster.xtf` haben. Die Datei **nicht** einchecken!

## Strassenlärm

### Erfassungsmodell

#### Import Entwicklungsdatenbank (vagrant, ili2pg-3.12.2)
Polymorphes Schreiben funktioniert nur mit v4.1.0 korrekt. Da wir noch v3.11.x einsetzen und die Lieferung im Bundesmodell momentan noch nicht verlangt wird, wird nicht v4.1.0 verwendet. Die Einführung von v4.1.0 wird getrieben durch die Einführung des ÖREB-Katasters, da dort zwingend.

```
java -jar /Users/stefan/apps/ili2pg-3.11.2/ili2pg.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models "SO_AVT_Strassenlaerm_20190806;LBK_Haupt_uebrigeStrassen_Codelisten_V1_1" \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--importTid --createBasketCol --createDatasetCol \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --schemaimport 

java -jar /Users/stefan/apps/ili2pg-3.11.2/ili2pg.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 \
--importTid --dataset catalogue \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --replace Strassenlaerm/edit/LBK_Haupt_uebrigeStrassen_Catalogues_V1_1.xml

java -jar /Users/stefan/apps/ili2pg-3.11.2/ili2pg.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190806 \
--importTid --dataset data \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/strassenlaerm_KGDM_20190806.xtf
```

Der Vollständigkeit halber und für später, hier die Befehle (siehe Unterschiede bei den Parameter) für v4.1.0:

```
java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models "SO_AVT_Strassenlaerm_20190806;LBK_Haupt_uebrigeStrassen_Codelisten_V1_1" \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createTidCol \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --schemaimport 

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 \
--importTid \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/LBK_Haupt_uebrigeStrassen_Catalogues_V1_1.xml

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190806 \
--importTid \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/strassenlaerm_KGDM_20190704.xtf
```

Export-Befehl vagrant (KGDM + MGDM):
```
java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190806 \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --export fubar_kgdm.xtf

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190806 \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --export fubar_mgdm.xtf
```


#### Import GDI
Zusätzlich zum Schema anlegen mittels INTERLIS-Modell, muss ein Katalog importiert werden. Es muss mit _Datasets_ gearbeitet werden und nicht mit `--deleteData`. Beim Neuimport der Geodaten kann `--deleteData` nicht verwendet werden, weil so auch zuerst die Katalogeinträge gelöscht werden und die beim Import dann fehlen. Ebenfalls kann man nicht die Kataloge löschen und neu importieren, da die Geodaten ja darauf verweisen. 

```

```

### Publikationsmodell
Erstellung gemäss Dokument `20190415_Dokumentation_KGDM_Laerm.pdf` Kapitel 1.2.

#### Import Entwicklungsdatenbank (vagrant)

```
java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.7 --dbdatabase pub --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm_pub --models SO_AVT_Strassenlaerm_Publikation_20190802 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/pub/" --schemaimport 

```

### GRETL-Job
Nach dem Starten des on-demand GRETL-Jobs (`avt_strassenlaerm`) wird der Benutzer dazu aufgefordert die zu importierende Datei hochzuladen. Nach dem Import in die Edit-DB werden die Daten in die Pub-DB umgebaut.

Lokales Testen des GRETL-Jobs:
```
export DB_URI_EDIT=jdbc:postgresql://192.168.50.7:5432/edit
export DB_USER_EDIT=ddluser
export DB_PWD_EDIT=ddluser
export DB_URI_PUB=jdbc:postgresql://192.168.50.7:5432/pub
export DB_USER_PUB=ddluser
export DB_PWD_PUB=ddluser

scripts/start-gretl.sh --docker-image sogis/gretl-runtime:production --job-directory /Users/stefan/sources/gretljobs_avt_strassenlaerm/avt_strassenlaerm/
```
Beim lokalen Testen muss mangels GUI die zu importierende Datei im Verzeichnis des GRETL-Jobs liegen und zwingend den Namen `strassenlaerm.xtf` haben. Die Datei **nicht** einchecken!


## Links

https://sogis.github.io/modellbasierte-datenerfassung-handbuch/
