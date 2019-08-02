**TODO:**
- Definitive Modell(e) in die INTERLIS-Modellablage und Modellablage in Produktion deployen.
- Nach Anlegen der Schemen kann ein Pullrequest der Jobs erstellt werden.
- Der Gretl-Job kann bereits im Branch getestet werden (wenn die Schemen vorhanden sind auf Integration).
- QML für Strassenlärm
- Integration im AGDI

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
--modeldir "http://models.geo.admin.ch;Groblaermkataster/" --import Groblaermkataster/groblaermkataster_20190709.xtf
```

### Import GDI
```
DBHOST=geodb-t.rootso.org
java -jar /usr/local/ili2pg-VERSION/ili2pg.jar --dbhost $DBHOST --dbport 5432 --dbdatabase pub --dbusr $USER --dbpwd $(awk -v dbhost=$DBHOST -F ':' '$1~dbhost{print $5}' ~/.pgpass) \
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
--dbschema avt_strassenlaerm --models "SO_AVT_Strassenlaerm_20190415;LBK_Haupt_uebrigeStrassen_Codelisten_V1_1" \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--importTid --createBasketCol --createDatasetCol \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --schemaimport 

java -jar /Users/stefan/apps/ili2pg-3.11.2/ili2pg.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 \
--importTid --dataset catalogue \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --replace Strassenlaerm/edit/LBK_Haupt_uebrigeStrassen_Catalogues_V1_1.xml

java -jar /Users/stefan/apps/ili2pg-3.11.2/ili2pg.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190415 \
--importTid --dataset data \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/strassenlaerm_KGDM_20190704.xtf
```

Der Vollständigkeit halber und für später, hier die Befehle (siehe Unterschiede bei den Parameter) für v4.1.0:

```
java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models "SO_AVT_Strassenlaerm_20190415;LBK_Haupt_uebrigeStrassen_Codelisten_V1_1" \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs \
--beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--createTidCol \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --schemaimport 

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 \
--importTid \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/LBK_Haupt_uebrigeStrassen_Catalogues_V1_1.xml

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190415 \
--importTid \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --import Strassenlaerm/edit/strassenlaerm_KGDM_20190704.xtf
```

Export-Befehl vagrant (KGDM + MGDM):
```
java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190415 \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --export fubar_kgdm.xtf

java -jar /Users/stefan/apps/ili2pg-4.1.0/ili2pg-4.1.0.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_LV95_V1_1 \
--modeldir "http://models.geo.admin.ch;Strassenlaerm/edit" --export fubar_mgdm.xtf
```


#### Import GDI
Zusätzlich zum Schema anlegen mittels INTERLIS-Modell, muss ein Katalog importiert werden. Es muss mit _Datasets_ gearbeitet werden und nicht mit `--deleteData`. Beim Neuimport der Geodaten kann `--deleteData` nicht verwendet werden, weil so auch zuerst die Katalogeinträge gelöscht werden und die beim Import dann fehlen. Ebenfalls kann man nicht die Kataloge löschen und neu importieren, da die Geodaten ja darauf verweisen. 

```

```

### Publikationsmodell
Erstellung gemäss Dokument `20190415_Dokumentation_KGDM_Laerm.pdf` Kapitel 1.2. **TODO:** Auf die Attribute `Gemeinde` und `Parzellennummer` wurde verzichtet, da dies einfache und schnell direkt aus dem Web GIS gelesen/eruiert werden kann.

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







## Vagrant

Vagrant-Maschine mit PostgreSQL 11 und QGIS 2.18 (Ubuntu 16.04).

x2go: 127.0.0.1:2027 (vagrant/vagrant)

## Strassenlärm
- Daten sind öffentlich.

* Pub-Modell erstellen -> Gretl 
* Es braucht AV-Daten in der DB -> AV-Import muss in Edit-DB vorhanden sein, damit wir es gleich dort machen können. Ggf machen und sagen, dass es dann in 1-2 Monaten soweit ist.
* pre/postscript.sql (todo)
* Fragen, ob sie Grunstücksnummer und Gemeinde in Objektabrage wollen, oder ob Rechtsklick reicht (für Gemeinde) und Parzellennummer sehen sie ja. Kann die sogar über mehrere Parzellen gehen? dann sowieso (oder dann halt json oder so)
* Pubmodell braucht es aber trotzdem, da ein Attribut aus einer anderen Klasse kommt.

```
java -jar /Users/stefan/apps/ili2pg-4.1.0-20190502.114941-4-bindist/ili2pg-4.1.0-SNAPSHOT.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--schemaimport --dbschema avt_strassenlaerm --models "SO_AVT_Strassenlaerm_20190415;LBK_Haupt_uebrigeStrassen_Codelisten_V1_1" \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--modeldir "http://models.geo.admin.ch;models/v2/" 

java -jar /Users/stefan/apps/ili2pg-4.1.0-20190502.114941-4-bindist/ili2pg-4.1.0-SNAPSHOT.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 \
--import models/v2/LBK_Haupt_uebrigeStrassen_Catalogues_V1_1.xml

java -jar /Users/stefan/apps/ili2pg-4.1.0-20190502.114941-4-bindist/ili2pg-4.1.0-SNAPSHOT.jar --dbhost 192.168.50.7 --dbdatabase edit --dbusr ddluser --dbpwd ddluser \
--dbschema avt_strassenlaerm --models SO_AVT_Strassenlaerm_20190415 \
--import models/v2/strassenlaerm_KGDM_20190415.xtf
```

## Groblärmkataster
- Daten sind öffentlich.


* Es gibt nur ein Modell (Edit == Pub). 
* Datensatz kann direkt nach Pub importiertiert werden (tbd).
* pre/postscript.sql (todo)
* AFU abholen (Modell).

## Fragen
- AFU: Modell i.O.?
- Karte? Layergrupppe? Facadelayer?
- Name des Layers:
  * Kritischer Perimeter -> Kritischer Perimeter (Groblärmkataster) -> Groblärmkataster: Kritischer Perimeter
- Groblärmkataster:
  * Attributewerte sehen nicht super schön aus. Problem? Sonst nur Umbau nur wegen dem. Sollten "beautify" nicht Underline wegputzen? Legend steht dann der schöne Namen.

```
java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.7 --dbdatabase pub --dbusr ddluser --dbpwd ddluser \
--schemaimport --dbschema avt_groblaermkataster_pub --models SO_AVT_Groblaermkataster_20190415 \
--defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic \
--modeldir "http://models.geo.admin.ch;models/v2/" 

java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.7 --dbdatabase pub --dbusr ddluser --dbpwd ddluser \
--dbschema avt_groblaermkataster_pub --models SO_AVT_Groblaermkataster_20190415 \
--import models/v2/groblaermkataster_20190415.xtf

```

## Links

https://sogis.github.io/modellbasierte-datenerfassung-handbuch/
