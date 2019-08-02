COMMENT ON SCHEMA
    avt_groblaermkataster_pub
IS
    'Publikationsmodell für die Groblärmkatasterdaten. Fragen: pascal.stebler@bd.so.ch, stefan.ziegler@bd.so.ch'
;

GRANT USAGE ON SCHEMA avt_groblaermkataster_pub TO public, gretl;

GRANT SELECT ON ALL TABLES IN SCHEMA avt_groblaermkataster_pub TO public;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA avt_groblaermkataster_pub TO gretl;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA avt_groblaermkataster_pub TO gretl;
