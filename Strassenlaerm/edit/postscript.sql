COMMENT ON SCHEMA
    avt_strassenlaerm
IS
    'Erfassungsmodell für die Strassenlärmdaten. Fragen: pascal.stebler@bd.so.ch, stefan.ziegler@bd.so.ch'
;

GRANT USAGE ON SCHEMA avt_strassenlaerm TO public, gretl;

GRANT SELECT ON ALL TABLES IN SCHEMA avt_strassenlaerm TO public;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA avt_strassenlaerm TO gretl;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA avt_strassenlaerm TO gretl;
