# avt_strassenlaerm

## Modellierungshandbuch

https://sogis.github.io/modellbasierte-datenerfassung-handbuch/

## Edit-Schema erstellen

```
java -jar /Users/stefan/apps/ili2pg-3.12.2/ili2pg-3.12.2.jar --dbhost 192.168.50.8 --dbdatabase edit --dbusr ddluser --dbpwd ddluser --defaultSrsCode 2056 --strokeArcs --createGeomIdx --createFk --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createUnique --createNumChecks --nameByTopic --modeldir "http://models.geo.admin.ch;models/v1/" --models SO_AVT_Bauvorhaben_LV95_V1 --dbschema avt_bauvorhaben_v1 --schemaimport
```

