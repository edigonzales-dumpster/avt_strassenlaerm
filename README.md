# avt_strassenlaerm

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
