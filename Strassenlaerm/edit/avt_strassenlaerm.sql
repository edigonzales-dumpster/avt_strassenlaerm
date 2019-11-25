CREATE SCHEMA IF NOT EXISTS avt_strassenlaerm;
CREATE SEQUENCE avt_strassenlaerm.t_ili2db_seq;;
-- Localisation_V1.LocalisedText
CREATE TABLE avt_strassenlaerm.localisedtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
  ,alanguage varchar(255) NULL
  ,atext text NOT NULL
  ,multilingualtext_localisedtext bigint NULL
)
;
CREATE INDEX localisedtext_t_basket_idx ON avt_strassenlaerm.localisedtext ( t_basket );
CREATE INDEX localisedtext_t_datasetname_idx ON avt_strassenlaerm.localisedtext ( t_datasetname );
CREATE INDEX localisedtext_multilingualtext_lclsdtext_idx ON avt_strassenlaerm.localisedtext ( multilingualtext_localisedtext );
-- Localisation_V1.MultilingualText
CREATE TABLE avt_strassenlaerm.multilingualtext (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Seq bigint NULL
)
;
CREATE INDEX multilingualtext_t_basket_idx ON avt_strassenlaerm.multilingualtext ( t_basket );
CREATE INDEX multilingualtext_t_datasetname_idx ON avt_strassenlaerm.multilingualtext ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_exposure_limit_value_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codlstn_xpsr_lmt_vl_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_exposure_limit_value_catalogue ( t_basket );
CREATE INDEX codlstn_xpsr_lmt_vl_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_exposure_limit_value_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_operation_status_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codelistn_prtn_stts_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_operation_status_catalogue ( t_basket );
CREATE INDEX codelistn_prtn_stts_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_operation_status_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_exposure_limit_value_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelstn_xpsr_lmt_vl_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_exposure_limit_value_catref ( t_basket );
CREATE INDEX codelstn_xpsr_lmt_vl_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_exposure_limit_value_catref ( t_datasetname );
CREATE INDEX codelstn_xpsr_lmt_vl_ctref_areference_idx ON avt_strassenlaerm.codelisten_exposure_limit_value_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_operation_status_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelisten_prtn_stts_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_operation_status_catref ( t_basket );
CREATE INDEX codelisten_prtn_stts_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_operation_status_catref ( t_datasetname );
CREATE INDEX codelisten_prtn_stts_ctref_areference_idx ON avt_strassenlaerm.codelisten_operation_status_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_emodel_street_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codelisten_mdl_strt_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_emodel_street_catalogue ( t_basket );
CREATE INDEX codelisten_mdl_strt_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_emodel_street_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_emodel_street_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelisten_emdl_strt_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_emodel_street_catref ( t_basket );
CREATE INDEX codelisten_emdl_strt_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_emodel_street_catref ( t_datasetname );
CREATE INDEX codelisten_emdl_strt_ctref_areference_idx ON avt_strassenlaerm.codelisten_emodel_street_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_pointofdetermination_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codlstn_pntfdtrmntn_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_pointofdetermination_catalogue ( t_basket );
CREATE INDEX codlstn_pntfdtrmntn_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_pointofdetermination_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_pointofdetermination_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelstn_pntfdtrmntn_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_pointofdetermination_catref ( t_basket );
CREATE INDEX codelstn_pntfdtrmntn_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_pointofdetermination_catref ( t_datasetname );
CREATE INDEX codelstn_pntfdtrmntn_ctref_areference_idx ON avt_strassenlaerm.codelisten_pointofdetermination_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_used_roadspeed_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codelisten_sd_rdspd_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_used_roadspeed_catalogue ( t_basket );
CREATE INDEX codelisten_sd_rdspd_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_used_roadspeed_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_used_roadspeed_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelisten_usd_rdspd_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_used_roadspeed_catref ( t_basket );
CREATE INDEX codelisten_usd_rdspd_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_used_roadspeed_catref ( t_datasetname );
CREATE INDEX codelisten_usd_rdspd_ctref_areference_idx ON avt_strassenlaerm.codelisten_used_roadspeed_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_noisebarriertype_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codelistn_nsbrrrtyp_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_noisebarriertype_catalogue ( t_basket );
CREATE INDEX codelistn_nsbrrrtyp_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_noisebarriertype_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_noisebarriertype_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelisten_nsbrrrtyp_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_noisebarriertype_catref ( t_basket );
CREATE INDEX codelisten_nsbrrrtyp_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_noisebarriertype_catref ( t_datasetname );
CREATE INDEX codelisten_nsbrrrtyp_ctref_areference_idx ON avt_strassenlaerm.codelisten_noisebarriertype_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_tram_noise_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codelisten_tram_nos_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_tram_noise_catalogue ( t_basket );
CREATE INDEX codelisten_tram_nos_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_tram_noise_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_tram_noise_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelisten_tram_nois_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_tram_noise_catref ( t_basket );
CREATE INDEX codelisten_tram_nois_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_tram_noise_catref ( t_datasetname );
CREATE INDEX codelisten_tram_nois_ctref_areference_idx ON avt_strassenlaerm.codelisten_tram_noise_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue
CREATE TABLE avt_strassenlaerm.codelisten_trafficcollection_catalogue (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,acode text NOT NULL
  ,adefinition text NULL
  ,adefinition_de text NULL
  ,adefinition_fr text NULL
  ,adefinition_rm text NULL
  ,adefinition_it text NULL
  ,adefinition_en text NULL
)
;
CREATE INDEX codlstn_trffccllctn_ctlgue_t_basket_idx ON avt_strassenlaerm.codelisten_trafficcollection_catalogue ( t_basket );
CREATE INDEX codlstn_trffccllctn_ctlgue_t_datasetname_idx ON avt_strassenlaerm.codelisten_trafficcollection_catalogue ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef
CREATE TABLE avt_strassenlaerm.codelisten_trafficcollection_catref (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Seq bigint NULL
  ,areference bigint NULL
)
;
CREATE INDEX codelstn_trffccllctn_ctref_t_basket_idx ON avt_strassenlaerm.codelisten_trafficcollection_catref ( t_basket );
CREATE INDEX codelstn_trffccllctn_ctref_t_datasetname_idx ON avt_strassenlaerm.codelisten_trafficcollection_catref ( t_datasetname );
CREATE INDEX codelstn_trffccllctn_ctref_areference_idx ON avt_strassenlaerm.codelisten_trafficcollection_catref ( areference );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet
CREATE TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,inputdata_remark text NULL
  ,adtf decimal(7,1) NOT NULL
  ,nt decimal(7,1) NOT NULL
  ,nn decimal(7,1) NOT NULL
  ,p_nt2 decimal(4,1) NOT NULL
  ,p_nn2 decimal(4,1) NOT NULL
  ,gradient decimal(3,1) NOT NULL
  ,trafficcol_remark text NULL
  ,refyear_trafficcol integer NOT NULL
  ,scs decimal(4,2) NULL
  ,track_number integer NULL
  ,direction_seperate boolean NULL
  ,roadsurface_correction decimal(3,1) NOT NULL
  ,modelcorrection_day decimal(3,1) NULL
  ,modelcorrection_night decimal(3,1) NULL
  ,modelcorrection_remark text NULL
  ,refyear_modcal_str integer NULL
  ,trafficcollection bigint NULL
  ,used_roadspeed bigint NULL
  ,vt1_str integer NULL
  ,vt2_str integer NULL
  ,vn1_str integer NULL
  ,vn2_str integer NULL
  ,rollingnoise_correction decimal(3,1) NULL
  ,streetemission bigint NULL
  ,vt_str integer NULL
  ,vn_str integer NULL
  ,streetemission1 bigint NULL
)
;
CREATE INDEX emissin_strss_nptdt_street_t_basket_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( t_basket );
CREATE INDEX emissin_strss_nptdt_street_t_datasetname_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( t_datasetname );
CREATE INDEX emissin_strss_nptdt_street_trafficcollection_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( trafficcollection );
CREATE INDEX emissin_strss_nptdt_street_used_roadspeed_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( used_roadspeed );
CREATE INDEX emissin_strss_nptdt_street_streetemission_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( streetemission );
CREATE INDEX emissin_strss_nptdt_street_streetemission1_idx ON avt_strassenlaerm.emission_strasse_inputdata_estreet ( streetemission1 );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram
CREATE TABLE avt_strassenlaerm.emission_strasse_inputdata_tram (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,ntb_tram decimal(4,1) NOT NULL
  ,nnb_tram decimal(4,1) NOT NULL
  ,lqd_tram decimal(2,1) NOT NULL
  ,lqn_tram decimal(2,1) NOT NULL
  ,mcd_tram decimal(3,1) NULL
  ,mcn_tram decimal(3,1) NULL
  ,emissionmodel_tram text NOT NULL
  ,refyear_modcal_tram integer NULL
  ,lreday_tram decimal(4,1) NULL
  ,lrenight_tram decimal(4,1) NULL
  ,trafficcollection_tram bigint NULL
  ,streetemission bigint NOT NULL
)
;
CREATE INDEX emission_strass_nptdt_tram_t_basket_idx ON avt_strassenlaerm.emission_strasse_inputdata_tram ( t_basket );
CREATE INDEX emission_strass_nptdt_tram_t_datasetname_idx ON avt_strassenlaerm.emission_strasse_inputdata_tram ( t_datasetname );
CREATE INDEX emission_strass_nptdt_tram_trafficcollection_tram_idx ON avt_strassenlaerm.emission_strasse_inputdata_tram ( trafficcollection_tram );
CREATE INDEX emission_strass_nptdt_tram_streetemission_idx ON avt_strassenlaerm.emission_strasse_inputdata_tram ( streetemission );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission
CREATE TABLE avt_strassenlaerm.emission_strasse_streetemission (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometry_e geometry(LINESTRINGZ,2056) NOT NULL
  ,level_aquisition boolean NOT NULL
  ,id_e text NOT NULL
  ,street_name text NULL
  ,route_id text NULL
  ,section_from text NULL
  ,section_to text NULL
  ,geometry_acqusition varchar(255) NULL
  ,position_accuracy varchar(255) NULL
  ,streete_remark text NULL
  ,lreday decimal(4,1) NOT NULL
  ,lrenight decimal(4,1) NOT NULL
  ,emodel_street bigint NULL
  ,lre_remark text NULL
  ,tunnel boolean NOT NULL
  ,bridge boolean NULL
  ,tram_noise bigint NULL
)
;
CREATE INDEX emission_strass_strtmssion_t_basket_idx ON avt_strassenlaerm.emission_strasse_streetemission ( t_basket );
CREATE INDEX emission_strass_strtmssion_t_datasetname_idx ON avt_strassenlaerm.emission_strasse_streetemission ( t_datasetname );
CREATE INDEX emission_strass_strtmssion_geometry_e_idx ON avt_strassenlaerm.emission_strasse_streetemission USING GIST ( geometry_e );
CREATE INDEX emission_strass_strtmssion_emodel_street_idx ON avt_strassenlaerm.emission_strasse_streetemission ( emodel_street );
CREATE INDEX emission_strass_strtmssion_tram_noise_idx ON avt_strassenlaerm.emission_strasse_streetemission ( tram_noise );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation
CREATE TABLE avt_strassenlaerm.immission_strasse_dispersion_calculation (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,dispcal_remark text NULL
  ,dispersionmodel text NOT NULL
  ,dispersionapplication text NOT NULL
  ,versionnr_dispapp text NULL
  ,meterologydata text NULL
  ,heightmodel text NULL
  ,building_database text NULL
  ,noisebarrier_geodata text NULL
  ,emissiondata text NULL
  ,refyear_register integer NOT NULL
  ,npr_name text NOT NULL
  ,i_measurement boolean NULL
)
;
CREATE INDEX immssn_strss_prsn_clcltion_t_basket_idx ON avt_strassenlaerm.immission_strasse_dispersion_calculation ( t_basket );
CREATE INDEX immssn_strss_prsn_clcltion_t_datasetname_idx ON avt_strassenlaerm.immission_strasse_dispersion_calculation ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier
CREATE TABLE avt_strassenlaerm.immission_strasse_noisebarrier (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometry_nb geometry(LINESTRINGZ,2056) NOT NULL
  ,noisebarrierheight decimal(4,2) NULL
  ,reflexionloss_left decimal(3,1) NULL
  ,reflexionloss_right decimal(3,1) NULL
  ,id_nb text NOT NULL
  ,noisebarrier_remark text NULL
  ,noisebarriertyp bigint NULL
)
;
CREATE INDEX immission_strasse_nsbrrier_t_basket_idx ON avt_strassenlaerm.immission_strasse_noisebarrier ( t_basket );
CREATE INDEX immission_strasse_nsbrrier_t_datasetname_idx ON avt_strassenlaerm.immission_strasse_noisebarrier ( t_datasetname );
CREATE INDEX immission_strasse_nsbrrier_geometry_nb_idx ON avt_strassenlaerm.immission_strasse_noisebarrier USING GIST ( geometry_nb );
CREATE INDEX immission_strasse_nsbrrier_noisebarriertyp_idx ON avt_strassenlaerm.immission_strasse_noisebarrier ( noisebarriertyp );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis
CREATE TABLE avt_strassenlaerm.immission_strasse_affected_analysis (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,bfsnr text NOT NULL
  ,affected_analysis_remark text NULL
  ,pv_day decimal(9,1) NOT NULL
  ,pv_night decimal(9,1) NOT NULL
  ,alv_day decimal(9,1) NOT NULL
  ,alv_night decimal(9,1) NOT NULL
  ,av_day decimal(9,1) NOT NULL
  ,av_night decimal(9,1) NOT NULL
  ,sum_people decimal(9,1) NOT NULL
  ,withoutsensitivitylevel decimal(9,1) NOT NULL
  ,gemn text NOT NULL
  ,analysis_year integer NOT NULL
)
;
CREATE INDEX immissn_strss_ffctd_nlysis_t_basket_idx ON avt_strassenlaerm.immission_strasse_affected_analysis ( t_basket );
CREATE INDEX immissn_strss_ffctd_nlysis_t_datasetname_idx ON avt_strassenlaerm.immission_strasse_affected_analysis ( t_datasetname );
-- LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination
CREATE TABLE avt_strassenlaerm.immission_strasse_pointofdetermination (
  T_Id bigint PRIMARY KEY DEFAULT nextval('avt_strassenlaerm.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Type varchar(60) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,determination_remark text NULL
  ,lr_day decimal(4,1) NOT NULL
  ,lr_night decimal(4,1) NOT NULL
  ,mcd_street decimal(3,1) NULL
  ,mcn_street decimal(3,1) NULL
  ,geometry_pod geometry(POINTZ,2056) NOT NULL
  ,id_pod text NOT NULL
  ,egid integer NULL
  ,edid integer NULL
  ,address_pod text NULL
  ,exposure_limit_date date NULL
  ,operation_status bigint NULL
  ,pointofdetermination_t bigint NULL
  ,exposure_limit_value_d bigint NULL
  ,exposure_limit_value_n bigint NULL
  ,dispersion_calculation bigint NOT NULL
  ,grenzwert_tag integer NULL
  ,grenzwert_nacht integer NULL
  ,empfindlichkeitsstufe varchar(4) NULL
  ,inklusive_nationalstrasse boolean NULL
)
;
CREATE INDEX immssn_strss_pntfdtrmntion_t_basket_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( t_basket );
CREATE INDEX immssn_strss_pntfdtrmntion_t_datasetname_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( t_datasetname );
CREATE INDEX immssn_strss_pntfdtrmntion_geometry_pod_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination USING GIST ( geometry_pod );
CREATE INDEX immssn_strss_pntfdtrmntion_operation_status_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( operation_status );
CREATE INDEX immssn_strss_pntfdtrmntion_pointofdetermination_t_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( pointofdetermination_t );
CREATE INDEX immssn_strss_pntfdtrmntion_exposure_limit_value_d_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( exposure_limit_value_d );
CREATE INDEX immssn_strss_pntfdtrmntion_exposure_limit_value_n_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( exposure_limit_value_n );
CREATE INDEX immssn_strss_pntfdtrmntion_dispersion_calculation_idx ON avt_strassenlaerm.immission_strasse_pointofdetermination ( dispersion_calculation );
COMMENT ON COLUMN avt_strassenlaerm.immission_strasse_pointofdetermination.grenzwert_tag IS 'Immissionsgrenzwert Tag [dBA]';
COMMENT ON COLUMN avt_strassenlaerm.immission_strasse_pointofdetermination.grenzwert_nacht IS 'Immissionsgrenzwert Nacht [dBA]';
COMMENT ON COLUMN avt_strassenlaerm.immission_strasse_pointofdetermination.empfindlichkeitsstufe IS 'Laerm-Empfindlichkeitsstufe';
COMMENT ON COLUMN avt_strassenlaerm.immission_strasse_pointofdetermination.inklusive_nationalstrasse IS 'wird Nationalstrassenlaerm beruecksichtigt (true) oder nicht (false)';
CREATE TABLE avt_strassenlaerm.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON avt_strassenlaerm.t_ili2db_basket ( dataset );
CREATE TABLE avt_strassenlaerm.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE avt_strassenlaerm.accuracy (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE avt_strassenlaerm.languagecode_iso639_1 (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE avt_strassenlaerm.amethod (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE avt_strassenlaerm.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE avt_strassenlaerm.localisedtext ADD CONSTRAINT localisedtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.localisedtext ADD CONSTRAINT localisedtext_multilingualtext_lclsdtext_fkey FOREIGN KEY ( multilingualtext_localisedtext ) REFERENCES avt_strassenlaerm.multilingualtext DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.multilingualtext ADD CONSTRAINT multilingualtext_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_exposure_limit_value_catalogue ADD CONSTRAINT codlstn_xpsr_lmt_vl_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_operation_status_catalogue ADD CONSTRAINT codelistn_prtn_stts_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_exposure_limit_value_catref ADD CONSTRAINT codelstn_xpsr_lmt_vl_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_exposure_limit_value_catref ADD CONSTRAINT codelstn_xpsr_lmt_vl_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_exposure_limit_value_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_operation_status_catref ADD CONSTRAINT codelisten_prtn_stts_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_operation_status_catref ADD CONSTRAINT codelisten_prtn_stts_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_operation_status_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_emodel_street_catalogue ADD CONSTRAINT codelisten_mdl_strt_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_emodel_street_catref ADD CONSTRAINT codelisten_emdl_strt_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_emodel_street_catref ADD CONSTRAINT codelisten_emdl_strt_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_emodel_street_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_pointofdetermination_catalogue ADD CONSTRAINT codlstn_pntfdtrmntn_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_pointofdetermination_catref ADD CONSTRAINT codelstn_pntfdtrmntn_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_pointofdetermination_catref ADD CONSTRAINT codelstn_pntfdtrmntn_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_pointofdetermination_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_used_roadspeed_catalogue ADD CONSTRAINT codelisten_sd_rdspd_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_used_roadspeed_catref ADD CONSTRAINT codelisten_usd_rdspd_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_used_roadspeed_catref ADD CONSTRAINT codelisten_usd_rdspd_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_used_roadspeed_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_noisebarriertype_catalogue ADD CONSTRAINT codelistn_nsbrrrtyp_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_noisebarriertype_catref ADD CONSTRAINT codelisten_nsbrrrtyp_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_noisebarriertype_catref ADD CONSTRAINT codelisten_nsbrrrtyp_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_noisebarriertype_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_tram_noise_catalogue ADD CONSTRAINT codelisten_tram_nos_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_tram_noise_catref ADD CONSTRAINT codelisten_tram_nois_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_tram_noise_catref ADD CONSTRAINT codelisten_tram_nois_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_tram_noise_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_trafficcollection_catalogue ADD CONSTRAINT codlstn_trffccllctn_ctlgue_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_trafficcollection_catref ADD CONSTRAINT codelstn_trffccllctn_ctref_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.codelisten_trafficcollection_catref ADD CONSTRAINT codelstn_trffccllctn_ctref_areference_fkey FOREIGN KEY ( areference ) REFERENCES avt_strassenlaerm.codelisten_trafficcollection_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissin_strss_nptdt_street_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_adtf_check CHECK( adtf BETWEEN 0.0 AND 999999.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_nt_check CHECK( nt BETWEEN 0.0 AND 999999.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_nn_check CHECK( nn BETWEEN 0.0 AND 999999.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_p_nt2_check CHECK( p_nt2 BETWEEN 0.0 AND 100.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_p_nn2_check CHECK( p_nn2 BETWEEN 0.0 AND 100.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_gradient_check CHECK( gradient BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_refyear_trafficcol_check CHECK( refyear_trafficcol BETWEEN 1900 AND 2100);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_scs_check CHECK( scs BETWEEN 0.0 AND 99.99);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_track_number_check CHECK( track_number BETWEEN 0 AND 99);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_roadsurface_correction_check CHECK( roadsurface_correction BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_modelcorrection_day_check CHECK( modelcorrection_day BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_modelcorrection_night_check CHECK( modelcorrection_night BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_refyear_modcal_str_check CHECK( refyear_modcal_str BETWEEN 1900 AND 2100);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissin_strss_nptdt_street_trafficcollection_fkey FOREIGN KEY ( trafficcollection ) REFERENCES avt_strassenlaerm.codelisten_trafficcollection_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissin_strss_nptdt_street_used_roadspeed_fkey FOREIGN KEY ( used_roadspeed ) REFERENCES avt_strassenlaerm.codelisten_used_roadspeed_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vt1_str_check CHECK( vt1_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vt2_str_check CHECK( vt2_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vn1_str_check CHECK( vn1_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vn2_str_check CHECK( vn2_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_rollingnoise_correction_check CHECK( rollingnoise_correction BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissin_strss_nptdt_street_streetemission_fkey FOREIGN KEY ( streetemission ) REFERENCES avt_strassenlaerm.emission_strasse_streetemission DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vt_str_check CHECK( vt_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissn_strss_nptdt_street_vn_str_check CHECK( vn_str BETWEEN 0 AND 200);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_estreet ADD CONSTRAINT emissin_strss_nptdt_street_streetemission1_fkey FOREIGN KEY ( streetemission1 ) REFERENCES avt_strassenlaerm.emission_strasse_streetemission DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strass_nptdt_tram_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_ntb_tram_check CHECK( ntb_tram BETWEEN 0.0 AND 999.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_nnb_tram_check CHECK( nnb_tram BETWEEN 0.0 AND 999.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_lqd_tram_check CHECK( lqd_tram BETWEEN -5.0 AND 0.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_lqn_tram_check CHECK( lqn_tram BETWEEN -5.0 AND 0.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_mcd_tram_check CHECK( mcd_tram BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_mcn_tram_check CHECK( mcn_tram BETWEEN -99.9 AND 99.9);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_refyear_modcal_tram_check CHECK( refyear_modcal_tram BETWEEN 1900 AND 2100);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_lreday_tram_check CHECK( lreday_tram BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strss_nptdt_tram_lrenight_tram_check CHECK( lrenight_tram BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strass_nptdt_tram_trafficcollection_tram_fkey FOREIGN KEY ( trafficcollection_tram ) REFERENCES avt_strassenlaerm.codelisten_trafficcollection_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_inputdata_tram ADD CONSTRAINT emission_strass_nptdt_tram_streetemission_fkey FOREIGN KEY ( streetemission ) REFERENCES avt_strassenlaerm.emission_strasse_streetemission DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_streetemission ADD CONSTRAINT emission_strass_strtmssion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_streetemission ADD CONSTRAINT emission_strss_strtmssion_lreday_check CHECK( lreday BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_streetemission ADD CONSTRAINT emission_strss_strtmssion_lrenight_check CHECK( lrenight BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.emission_strasse_streetemission ADD CONSTRAINT emission_strass_strtmssion_emodel_street_fkey FOREIGN KEY ( emodel_street ) REFERENCES avt_strassenlaerm.codelisten_emodel_street_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.emission_strasse_streetemission ADD CONSTRAINT emission_strass_strtmssion_tram_noise_fkey FOREIGN KEY ( tram_noise ) REFERENCES avt_strassenlaerm.codelisten_tram_noise_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_dispersion_calculation ADD CONSTRAINT immssn_strss_prsn_clcltion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_dispersion_calculation ADD CONSTRAINT immssn_strssprsn_clcltion_refyear_register_check CHECK( refyear_register BETWEEN 1900 AND 2100);
ALTER TABLE avt_strassenlaerm.immission_strasse_noisebarrier ADD CONSTRAINT immission_strasse_nsbrrier_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_noisebarrier ADD CONSTRAINT immission_strass_nsbrrier_noisebarrierheight_check CHECK( noisebarrierheight BETWEEN 0.0 AND 99.99);
ALTER TABLE avt_strassenlaerm.immission_strasse_noisebarrier ADD CONSTRAINT immission_strass_nsbrrier_reflexionloss_left_check CHECK( reflexionloss_left BETWEEN 0.0 AND 99.9);
ALTER TABLE avt_strassenlaerm.immission_strasse_noisebarrier ADD CONSTRAINT immission_strass_nsbrrier_reflexionloss_right_check CHECK( reflexionloss_right BETWEEN 0.0 AND 99.9);
ALTER TABLE avt_strassenlaerm.immission_strasse_noisebarrier ADD CONSTRAINT immission_strasse_nsbrrier_noisebarriertyp_fkey FOREIGN KEY ( noisebarriertyp ) REFERENCES avt_strassenlaerm.codelisten_noisebarriertype_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immissn_strss_ffctd_nlysis_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_pv_day_check CHECK( pv_day BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_pv_night_check CHECK( pv_night BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_alv_day_check CHECK( alv_day BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_alv_night_check CHECK( alv_night BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_av_day_check CHECK( av_day BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_av_night_check CHECK( av_night BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_sum_people_check CHECK( sum_people BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_withoutsensitivitylevel_check CHECK( withoutsensitivitylevel BETWEEN 0.0 AND 9.99999999E7);
ALTER TABLE avt_strassenlaerm.immission_strasse_affected_analysis ADD CONSTRAINT immssn_strss_ffctd_nlysis_analysis_year_check CHECK( analysis_year BETWEEN 1900 AND 2100);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_T_basket_fkey FOREIGN KEY ( T_basket ) REFERENCES avt_strassenlaerm.T_ILI2DB_BASKET DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_lr_day_check CHECK( lr_day BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_lr_night_check CHECK( lr_night BETWEEN 0.0 AND 120.0);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_mcd_street_check CHECK( mcd_street BETWEEN 0.0 AND 99.9);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_mcn_street_check CHECK( mcn_street BETWEEN 0.0 AND 99.9);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_egid_check CHECK( egid BETWEEN 0 AND 2147483647);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_edid_check CHECK( edid BETWEEN 0 AND 2147483647);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_operation_status_fkey FOREIGN KEY ( operation_status ) REFERENCES avt_strassenlaerm.codelisten_operation_status_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_pointofdetermination_t_fkey FOREIGN KEY ( pointofdetermination_t ) REFERENCES avt_strassenlaerm.codelisten_pointofdetermination_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_exposure_limit_value_d_fkey FOREIGN KEY ( exposure_limit_value_d ) REFERENCES avt_strassenlaerm.codelisten_exposure_limit_value_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_exposure_limit_value_n_fkey FOREIGN KEY ( exposure_limit_value_n ) REFERENCES avt_strassenlaerm.codelisten_exposure_limit_value_catalogue DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strss_pntfdtrmntion_dispersion_calculation_fkey FOREIGN KEY ( dispersion_calculation ) REFERENCES avt_strassenlaerm.immission_strasse_dispersion_calculation DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_grenzwert_tag_check CHECK( grenzwert_tag BETWEEN 0 AND 100);
ALTER TABLE avt_strassenlaerm.immission_strasse_pointofdetermination ADD CONSTRAINT immssn_strsspntfdtrmntion_grenzwert_nacht_check CHECK( grenzwert_nacht BETWEEN 0 AND 100);
ALTER TABLE avt_strassenlaerm.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES avt_strassenlaerm.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON avt_strassenlaerm.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON avt_strassenlaerm.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON avt_strassenlaerm.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CatalogueObjects_V1.Catalogues.CatalogueReference','catalogues_cataloguereference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_tram','emission_strasse_streetemission2inputdata_tram');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_tram','so_vt_s0190806emission_strasse_inputdata_tram');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef','codelisten_operation_status_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef','codelisten_pointofdetermination_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation','immission_strasse_dispersion_calculation');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EsonROAD','so_vt_s0190806emission_strasse_inputdata_esonroad');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue','codelisten_noisebarriertype_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CatalogueObjects_V1.Catalogues.MandatoryCatalogueReference','catalogues_mandatorycataloguereference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('CatalogueObjects_V1.Catalogues.Item','catalogues_item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination','immission_strasse_pointofdetermination');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD','emission_strasse_inputdata_esonroad');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef','codelisten_noisebarriertype_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef','codelisten_exposure_limit_value_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier','immission_strasse_noisebarrier');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis','immission_strasse_affected_analysis');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86','emission_strasse_inputdata_estl86');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.affected_analysis','so_vt_s0190806immission_strasse_affected_analysis');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.MultilingualText','localisationch_v1_multilingualtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LocalisationCH_V1.LocalisedText','localisationch_v1_localisedtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD2streetemission','emission_strasse_inputdata_esonroad2streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EStl86','so_vt_s0190806emission_strasse_inputdata_estl86');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation2pointofdetermination','immission_strasse_dispersion_calculation2pointofdetermintion');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef','codelisten_used_roadspeed_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.MultilingualText','multilingualtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet','emission_strasse_inputdata_estreet');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.Accuracy','accuracy');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue','codelisten_operation_status_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('InternationalCodes_V1.LanguageCode_ISO639_1','languagecode_iso639_1');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('Localisation_V1.LocalisedText','localisedtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram','emission_strasse_inputdata_tram');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.streetemission','so_vt_s0190806emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue','codelisten_tram_noise_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef','codelisten_tram_noise_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation','so_vt_s0190806immission_strasse_dispersion_calculation');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_EStl86','emission_strasse_streetemission2inputdata_estl86');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination','so_vt_s0190806immission_strasse_pointofdetermination');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_Estreet_SO','emission_strasse_inputdata_estreet_so');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('GeometryCHLV95_V1.Method','amethod');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue','codelisten_emodel_street_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef','codelisten_trafficcollection_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue','codelisten_used_roadspeed_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue','codelisten_pointofdetermination_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.noisebarrier','so_vt_s0190806immission_strasse_noisebarrier');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef','codelisten_emodel_street_catref');
INSERT INTO avt_strassenlaerm.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation2pointofdetermination','so_vt_s0190806immission_strasse_disprsn_clcltn2pntfdtrmntion');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.P_Nn2','p_nn2','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue.Definition','adefinition','codelisten_pointofdetermination_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.LrEnight_tram','lrenight_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.BFSNr','bfsnr','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.NPR_name','npr_name','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.Nnb_tram','nnb_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.street_name','street_name','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.tram_noise','tram_noise','emission_strasse_streetemission','codelisten_tram_noise_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue.Code','acode','codelisten_used_roadspeed_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.emodel_street','emodel_street','emission_strasse_streetemission','codelisten_emodel_street_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.dispersionapplication','dispersionapplication','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.affected_analysis_remark','affected_analysis_remark','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD2streetemission.streetemission','streetemission','emission_strasse_inputdata_estreet','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef.Reference','areference','codelisten_emodel_street_catref','codelisten_emodel_street_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.SCS','scs','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.lrEday','lreday','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.versionnr_dispapp','versionnr_dispapp','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_EStl86.streetemission','streetemission1','emission_strasse_inputdata_estreet','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.noisebarriertyp','noisebarriertyp','immission_strasse_noisebarrier','codelisten_noisebarriertype_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.ID_pod','id_pod','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.noisebarrier_remark','noisebarrier_remark','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.EGID','egid','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.GemN','gemn','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.route_id','route_id','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.section_from','section_from','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination.inklusive_nationalstrasse','inklusive_nationalstrasse','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD.rollingnoise_correction','rollingnoise_correction','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.modelcorrection_night','modelcorrection_night','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.emissionmodel_tram','emissionmodel_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.LqD_tram','lqd_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.MultilingualText.LocalisedText','multilingualtext_localisedtext','localisedtext','multilingualtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef.Reference','areference','codelisten_trafficcollection_catref','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.streetE_remark','streete_remark','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.pointofdetermination_t','pointofdetermination_t','immission_strasse_pointofdetermination','codelisten_pointofdetermination_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination.grenzwert_nacht','grenzwert_nacht','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.bridge','bridge','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination.empfindlichkeitsstufe','empfindlichkeitsstufe','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue.Code','acode','codelisten_trafficcollection_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.ID_NB','id_nb','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.tunnel','tunnel','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.exposure_limit_value_n','exposure_limit_value_n','immission_strasse_pointofdetermination','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.refyear_trafficcol','refyear_trafficcol','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.AV_day','av_day','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef.Reference','areference','codelisten_used_roadspeed_catref','codelisten_used_roadspeed_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.track_number','track_number','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.PV_day','pv_day','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.direction_seperate','direction_seperate','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.used_roadspeed','used_roadspeed','emission_strasse_inputdata_estreet','codelisten_used_roadspeed_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.noisebarrier_geodata','noisebarrier_geodata','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue.Definition','adefinition','codelisten_tram_noise_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.geometry_pod','geometry_pod','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.Ntb_tram','ntb_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.I_measurement','i_measurement','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue.Definition','adefinition','codelisten_trafficcollection_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.mcn_tram','mcn_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.gradient','gradient','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.sum_people','sum_people','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.Nn','nn','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.heightmodel','heightmodel','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.modelcorrection_day','modelcorrection_day','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.refyear_modcal_tram','refyear_modcal_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.geometry_nb','geometry_nb','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.building_database','building_database','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD.Vn1_str','vn1_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef.Reference','areference','codelisten_exposure_limit_value_catref','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.analysis_year','analysis_year','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue.Code','acode','codelisten_tram_noise_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.aDTF','adtf','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD.Vt2_str','vt2_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.mcd_street','mcd_street','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD.Vn2_str','vn2_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.address_pod','address_pod','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination.grenzwert_tag','grenzwert_tag','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue.Definition','adefinition','codelisten_noisebarriertype_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.trafficcollection','trafficcollection','emission_strasse_inputdata_estreet','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Text','atext','localisedtext',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_tram.streetemission','streetemission','emission_strasse_inputdata_tram','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86.Vn_str','vn_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.ALV_night','alv_night','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.modelcorrection_remark','modelcorrection_remark','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.trafficcol_remark','trafficcol_remark','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.LrEday_tram','lreday_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue.Definition','adefinition','codelisten_used_roadspeed_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.geometry_acqusition','geometry_acqusition','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.emissiondata','emissiondata','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.section_to','section_to','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue.Code','acode','codelisten_pointofdetermination_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.refyear_modcal_str','refyear_modcal_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue.Code','acode','codelisten_noisebarriertype_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.meterologydata','meterologydata','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue.Code','acode','codelisten_operation_status_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.ALV_day','alv_day','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.AV_night','av_night','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.geometry_E','geometry_e','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue.Definition','adefinition','codelisten_emodel_street_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.LqN_tram','lqn_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.Lr_night','lr_night','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef.Reference','areference','codelisten_operation_status_catref','codelisten_operation_status_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.lrEnight','lrenight','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.operation_status','operation_status','immission_strasse_pointofdetermination','codelisten_operation_status_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue.Definition','adefinition','codelisten_exposure_limit_value_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.id_E','id_e','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.P_Nt2','p_nt2','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86.Vt_str','vt_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.determination_remark','determination_remark','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.level_aquisition','level_aquisition','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue.Code','acode','codelisten_emodel_street_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.lrE_remark','lre_remark','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.refyear_register','refyear_register','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.noisebarrierheight','noisebarrierheight','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef.Reference','areference','codelisten_tram_noise_catref','codelisten_tram_noise_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.trafficcollection_tram','trafficcollection_tram','emission_strasse_inputdata_tram','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.reflexionloss_right','reflexionloss_right','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.dispersionmodel','dispersionmodel','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.mcn_street','mcn_street','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation.dispcal_remark','dispcal_remark','immission_strasse_dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation2pointofdetermination.dispersion_calculation','dispersion_calculation','immission_strasse_pointofdetermination','immission_strasse_dispersion_calculation');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef.Reference','areference','codelisten_noisebarriertype_catref','codelisten_noisebarriertype_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.Nt','nt','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.roadsurface_correction','roadsurface_correction','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.exposure_limit_date','exposure_limit_date','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.withoutsensitivitylevel','withoutsensitivitylevel','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef.Reference','areference','codelisten_pointofdetermination_catref','codelisten_pointofdetermination_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.position_accuracy','position_accuracy','emission_strasse_streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.exposure_limit_value_d','exposure_limit_value_d','immission_strasse_pointofdetermination','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.mcd_tram','mcd_tram','emission_strasse_inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis.PV_night','pv_night','immission_strasse_affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue.Code','acode','codelisten_exposure_limit_value_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.reflexionloss_left','reflexionloss_left','immission_strasse_noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.EDID','edid','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.Lr_day','lr_day','immission_strasse_pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('Localisation_V1.LocalisedText.Language','alanguage','localisedtext',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue.Definition','adefinition','codelisten_operation_status_catalogue',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.inputdata_remark','inputdata_remark','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD.Vt1_str','vt1_str','emission_strasse_inputdata_estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('CatalogueObjects_V1.Catalogues.CatalogueReference','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_tram','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_tram','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EsonROAD','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.used_roadspeed','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.emodel_street','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('CatalogueObjects_V1.Catalogues.MandatoryCatalogueReference','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('CatalogueObjects_V1.Catalogues.Item','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.exposure_limit_value_d','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.operation_status','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.affected_analysis','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.MultilingualText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LocalisationCH_V1.LocalisedText','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD2streetemission','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EStl86','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation2pointofdetermination','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.exposure_limit_value_n','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.MultilingualText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('Localisation_V1.LocalisedText','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.streetemission','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission.tram_noise','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination.pointofdetermination_t','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram.trafficcollection_tram','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_EStl86','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_Estreet_SO','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier.noisebarriertyp','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue.Definition','ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.noisebarrier','ch.ehi.ili2db.inheritance','superClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet.trafficcollection','ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation2pointofdetermination','ch.ehi.ili2db.inheritance','embedded');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_tram','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('CatalogueObjects_V1.Catalogues.MandatoryCatalogueReference',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation2pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('CatalogueObjects_V1.Catalogues.Item',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.LocalisedText','Localisation_V1.LocalisedText');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LocalisationCH_V1.MultilingualText','Localisation_V1.MultilingualText');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.streetemission','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation2pointofdetermination','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation2pointofdetermination');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('CatalogueObjects_V1.Catalogues.CatalogueReference',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.LocalisedText',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.affected_analysis','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.affected_analysis');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('Localisation_V1.MultilingualText',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.noisebarrier','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.noisebarrier');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD2streetemission',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EsonROAD','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_Estreet_SO','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.pointofdetermination','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.pointofdetermination');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Immission_Strasse.dispersion_calculation','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef','CatalogueObjects_V1.Catalogues.CatalogueReference');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_Catalogue','CatalogueObjects_V1.Catalogues.Item');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_EStl86',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AVT_Strassenlaerm_20190806.Emission_Strasse.inputdata_EStl86','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EStl86');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.streetemission2inputdata_tram',NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_EsonROAD','LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet');
INSERT INTO avt_strassenlaerm.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse.dispersion_calculation',NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cm',0,'cm',FALSE,NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cm50',1,'cm50',FALSE,NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'m',2,'m',FALSE,NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'m10',3,'m10',FALSE,NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'m50',4,'m50',FALSE,NULL);
INSERT INTO avt_strassenlaerm.accuracy (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vague',5,'vague',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'de',0,'de',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fr',1,'fr',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'it',2,'it',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rm',3,'rm',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'en',4,'en',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'aa',5,'aa',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ab',6,'ab',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'af',7,'af',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'am',8,'am',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ar',9,'ar',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'as',10,'as',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ay',11,'ay',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'az',12,'az',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ba',13,'ba',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'be',14,'be',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bg',15,'bg',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bh',16,'bh',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bi',17,'bi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bn',18,'bn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'bo',19,'bo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'br',20,'br',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ca',21,'ca',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'co',22,'co',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cs',23,'cs',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'cy',24,'cy',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'da',25,'da',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'dz',26,'dz',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'el',27,'el',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eo',28,'eo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'es',29,'es',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'et',30,'et',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'eu',31,'eu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fa',32,'fa',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fi',33,'fi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fj',34,'fj',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fo',35,'fo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'fy',36,'fy',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ga',37,'ga',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gd',38,'gd',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gl',39,'gl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gn',40,'gn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gu',41,'gu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ha',42,'ha',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'he',43,'he',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hi',44,'hi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hr',45,'hr',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hu',46,'hu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'hy',47,'hy',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ia',48,'ia',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'id',49,'id',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ie',50,'ie',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ik',51,'ik',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'is',52,'is',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'iu',53,'iu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ja',54,'ja',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'jw',55,'jw',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ka',56,'ka',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kk',57,'kk',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kl',58,'kl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'km',59,'km',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'kn',60,'kn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ko',61,'ko',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ks',62,'ks',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ku',63,'ku',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ky',64,'ky',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'la',65,'la',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ln',66,'ln',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lo',67,'lo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lt',68,'lt',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'lv',69,'lv',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mg',70,'mg',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mi',71,'mi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mk',72,'mk',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ml',73,'ml',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mn',74,'mn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mo',75,'mo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mr',76,'mr',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ms',77,'ms',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'mt',78,'mt',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'my',79,'my',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'na',80,'na',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ne',81,'ne',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'nl',82,'nl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'no',83,'no',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'oc',84,'oc',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'om',85,'om',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'or',86,'or',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pa',87,'pa',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pl',88,'pl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ps',89,'ps',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'pt',90,'pt',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'qu',91,'qu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rn',92,'rn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ro',93,'ro',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ru',94,'ru',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'rw',95,'rw',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sa',96,'sa',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sd',97,'sd',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sg',98,'sg',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sh',99,'sh',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'si',100,'si',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sk',101,'sk',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sl',102,'sl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sm',103,'sm',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sn',104,'sn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'so',105,'so',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sq',106,'sq',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sr',107,'sr',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ss',108,'ss',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'st',109,'st',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'su',110,'su',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sv',111,'sv',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sw',112,'sw',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ta',113,'ta',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'te',114,'te',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tg',115,'tg',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'th',116,'th',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ti',117,'ti',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tk',118,'tk',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tl',119,'tl',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tn',120,'tn',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'to',121,'to',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tr',122,'tr',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ts',123,'ts',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tt',124,'tt',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'tw',125,'tw',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ug',126,'ug',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uk',127,'uk',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'ur',128,'ur',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'uz',129,'uz',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vi',130,'vi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'vo',131,'vo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'wo',132,'wo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'xh',133,'xh',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yi',134,'yi',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'yo',135,'yo',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'za',136,'za',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zh',137,'zh',FALSE,NULL);
INSERT INTO avt_strassenlaerm.languagecode_iso639_1 (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'zu',138,'zu',FALSE,NULL);
INSERT INTO avt_strassenlaerm.amethod (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'measured',0,'measured',FALSE,NULL);
INSERT INTO avt_strassenlaerm.amethod (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'sketched',1,'sketched',FALSE,NULL);
INSERT INTO avt_strassenlaerm.amethod (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'calculated',2,'calculated',FALSE,NULL);
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'noisebarriertyp','ch.ehi.ili2db.foreignKey','codelisten_noisebarriertype_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.coordDimension','3');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.c3Max','5000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'geometry_e','ch.ehi.ili2db.srid','2056');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'noisebarrier_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_affected_analysis',NULL,'T_Type','ch.ehi.ili2db.types','["immission_strasse_affected_analysis","so_vt_s0190806immission_strasse_affected_analysis"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'T_Type','ch.ehi.ili2db.types','["immission_strasse_pointofdetermination","so_vt_s0190806immission_strasse_pointofdetermination"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_tram',NULL,'streetemission','ch.ehi.ili2db.foreignKey','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'T_Type','ch.ehi.ili2db.types','["emission_strasse_streetemission","so_vt_s0190806emission_strasse_streetemission"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'emodel_street','ch.ehi.ili2db.foreignKey','codelisten_emodel_street_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_tram',NULL,'T_Type','ch.ehi.ili2db.types','["emission_strasse_inputdata_tram","so_vt_s0190806emission_strasse_inputdata_tram"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'multilingualtext_localisedtext','ch.ehi.ili2db.foreignKey','multilingualtext');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'exposure_limit_value_n','ch.ehi.ili2db.foreignKey','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'trafficcol_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.coordDimension','3');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.c3Max','5000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'geometry_nb','ch.ehi.ili2db.srid','2056');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'exposure_limit_value_d','ch.ehi.ili2db.foreignKey','codelisten_exposure_limit_value_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_dispersion_calculation',NULL,'dispcal_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_dispersion_calculation',NULL,'T_Type','ch.ehi.ili2db.types','["immission_strasse_dispersion_calculation","so_vt_s0190806immission_strasse_dispersion_calculation"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'T_Type','ch.ehi.ili2db.types','["emission_strasse_inputdata_esonroad","emission_strasse_inputdata_estl86","emission_strasse_inputdata_estreet","so_vt_s0190806emission_strasse_inputdata_esonroad","so_vt_s0190806emission_strasse_inputdata_estl86"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'streetemission','ch.ehi.ili2db.foreignKey','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'lre_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'determination_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'dispersion_calculation','ch.ehi.ili2db.foreignKey','immission_strasse_dispersion_calculation');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'streete_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'operation_status','ch.ehi.ili2db.foreignKey','codelisten_operation_status_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.coordDimension','3');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.geomType','POINT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c3Min','-200.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.c3Max','5000.000');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'geometry_pod','ch.ehi.ili2db.srid','2056');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('localisedtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_localisedtext","localisedtext"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_streetemission',NULL,'tram_noise','ch.ehi.ili2db.foreignKey','codelisten_tram_noise_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('multilingualtext',NULL,'T_Type','ch.ehi.ili2db.types','["localisationch_v1_multilingualtext","multilingualtext"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'inputdata_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_affected_analysis',NULL,'affected_analysis_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'used_roadspeed','ch.ehi.ili2db.foreignKey','codelisten_used_roadspeed_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_noisebarrier',NULL,'T_Type','ch.ehi.ili2db.types','["immission_strasse_noisebarrier","so_vt_s0190806immission_strasse_noisebarrier"]');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'modelcorrection_remark','ch.ehi.ili2db.textKind','MTEXT');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_tram',NULL,'trafficcollection_tram','ch.ehi.ili2db.foreignKey','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'trafficcollection','ch.ehi.ili2db.foreignKey','codelisten_trafficcollection_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('emission_strasse_inputdata_estreet',NULL,'streetemission1','ch.ehi.ili2db.foreignKey','emission_strasse_streetemission');
INSERT INTO avt_strassenlaerm.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('immission_strasse_pointofdetermination',NULL,'pointofdetermination_t','ch.ehi.ili2db.foreignKey','codelisten_pointofdetermination_catalogue');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('amethod','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_exposure_limit_value_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_pointofdetermination_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('accuracy','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_emodel_street_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('multilingualtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('immission_strasse_noisebarrier','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_pointofdetermination_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_tram_noise_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_operation_status_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_trafficcollection_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('emission_strasse_streetemission','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('emission_strasse_inputdata_tram','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_noisebarriertype_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('immission_strasse_dispersion_calculation','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_exposure_limit_value_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_used_roadspeed_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_trafficcollection_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('localisedtext','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('emission_strasse_inputdata_estreet','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_tram_noise_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_emodel_street_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_noisebarriertype_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('languagecode_iso639_1','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_used_roadspeed_catref','ch.ehi.ili2db.tableKind','STRUCTURE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('codelisten_operation_status_catalogue','ch.ehi.ili2db.tableKind','CATALOGUE');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('immission_strasse_affected_analysis','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('immission_strasse_pointofdetermination','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | CHCantonCode adapted (FL and CH added) (line 34)

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == "CHE";
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part3_CATALOGUEOBJECTS_20110830.ili','2.3','CatalogueObjects_V1{ INTERLIS} CatalogueObjectTrees_V1{ INTERLIS CatalogueObjects_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART III -- CATALOGUE OBJECTS
   - Package CatalogueObjects
   - Package CatalogueObjectTrees
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjects_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;

  TOPIC Catalogues (ABSTRACT) =

    CLASS Item (ABSTRACT) =
    END Item;

    STRUCTURE CatalogueReference (ABSTRACT) =
      Reference: REFERENCE TO (EXTERNAL) Item;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT) =
      Reference: MANDATORY REFERENCE TO (EXTERNAL) Item;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjects_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL CatalogueObjectTrees_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS CatalogueObjects_V1;

  TOPIC Catalogues (ABSTRACT) EXTENDS CatalogueObjects_V1.Catalogues =

    CLASS Item (ABSTRACT,EXTENDED) = 
      IsSuperItem: MANDATORY BOOLEAN;
      IsUseable: MANDATORY BOOLEAN;
    MANDATORY CONSTRAINT
      IsSuperItem OR IsUseable;
    END Item;

    ASSOCIATION EntriesTree =
      Parent -<#> Item;
      Child -- Item;
    MANDATORY CONSTRAINT
      Parent->IsSuperItem;
    END EntriesTree;

    STRUCTURE CatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END CatalogueReference;
 
    STRUCTURE MandatoryCatalogueReference (ABSTRACT,EXTENDED) =
      Reference(EXTENDED): MANDATORY REFERENCE TO (EXTERNAL) Item;
    MANDATORY CONSTRAINT
      Reference->IsUseable;
    END MandatoryCatalogueReference;

  END Catalogues;

END CatalogueObjectTrees_V1.

!! ########################################################################
','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('LBK_Haupt_uebrigeStrassen_V1_1.ili','2.3','LBK_Haupt_uebrigeStrassen_Codelisten_V1_1{ LocalisationCH_V1 CatalogueObjects_V1} LBK_Haupt_uebrigeStrassen_LV03_V1_1{ GeometryCHLV03_V1 LBK_Haupt_uebrigeStrassen_Codelisten_V1_1} LBK_Haupt_uebrigeStrassen_LV95_V1_1{ GeometryCHLV95_V1 LBK_Haupt_uebrigeStrassen_Codelisten_V1_1}','INTERLIS 2.3;

!!@ technicalContact=mailto:gis@bafu.admin.ch
!!@ furtherInformation=https://www.bafu.admin.ch/geodatenmodelle
!!@ IDGeoIV=144.1
MODEL LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 (en)
AT "https://models.geo.admin.ch/BAFU/"
VERSION "2018-09-12"  =
  IMPORTS CatalogueObjects_V1,LocalisationCH_V1;

  /* Modell für externe Codelisten, die anschliessend importiert werden in die Modelle *_LV03* und *_LV95* */
  TOPIC Codelisten =

    CLASS exposure_limit_value_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END exposure_limit_value_Catalogue;

    CLASS operation_status_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END operation_status_Catalogue;

    STRUCTURE exposure_limit_value_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) exposure_limit_value_Catalogue;
    END exposure_limit_value_CatRef;

    STRUCTURE operation_status_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) operation_status_Catalogue;
    END operation_status_CatRef;

    CLASS emodel_street_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END emodel_street_Catalogue;

    STRUCTURE emodel_street_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) emodel_street_Catalogue;
    END emodel_street_CatRef;

    CLASS pointofdetermination_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END pointofdetermination_Catalogue;

    STRUCTURE pointofdetermination_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) pointofdetermination_Catalogue;
    END pointofdetermination_CatRef;

    CLASS used_roadspeed_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END used_roadspeed_Catalogue;

    STRUCTURE used_roadspeed_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) used_roadspeed_Catalogue;
    END used_roadspeed_CatRef;

    CLASS noisebarriertype_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END noisebarriertype_Catalogue;

    STRUCTURE noisebarriertype_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) noisebarriertype_Catalogue;
    END noisebarriertype_CatRef;

    CLASS tram_noise_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END tram_noise_Catalogue;

    STRUCTURE tram_noise_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) tram_noise_Catalogue;
    END tram_noise_CatRef;

    CLASS trafficcollection_Catalogue
    EXTENDS CatalogueObjects_V1.Catalogues.Item =
      Code : MANDATORY TEXT;
      Definition : MANDATORY LocalisationCH_V1.MultilingualText;
    END trafficcollection_Catalogue;

    STRUCTURE trafficcollection_CatRef
    EXTENDS CatalogueObjects_V1.Catalogues.CatalogueReference =
      Reference (EXTENDED) : REFERENCE TO (EXTERNAL) trafficcollection_Catalogue;
    END trafficcollection_CatRef;

  END Codelisten;

END LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.

!!@ technicalContact=mailto:gis@bafu.admin.ch
!!@ furtherInformation=https://www.bafu.admin.ch/geodatenmodelle
!!@ IDGeoIV=144.1
MODEL LBK_Haupt_uebrigeStrassen_LV03_V1_1 (en)
AT "https://models.geo.admin.ch/BAFU/"
VERSION "2018-09-12"  =
  IMPORTS GeometryCHLV03_V1,LBK_Haupt_uebrigeStrassen_Codelisten_V1_1;

  TOPIC Emission_Strasse =
    DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

    DOMAIN

      PolylineZ = POLYLINE WITH (STRAIGHTS) VERTEX GeometryCHLV03_V1.Coord3;

    CLASS inputdata_Estreet =
      inputdata_remark : MTEXT;
      aDTF : MANDATORY 0.0 .. 999999.9;
      Nt : MANDATORY 0.0 .. 999999.9;
      Nn : MANDATORY 0.0 .. 999999.9;
      P_Nt2 : MANDATORY 0.0 .. 100.0;
      P_Nn2 : MANDATORY 0.0 .. 100.0;
      gradient : MANDATORY -99.9 .. 99.9;
      trafficcol_remark : MTEXT;
      refyear_trafficcol : MANDATORY 1900 .. 2100;
      SCS : 0.00 .. 99.99;
      track_number : 0 .. 99;
      direction_seperate : BOOLEAN;
      roadsurface_correction : MANDATORY -99.9 .. 99.9;
      modelcorrection_day : -99.9 .. 99.9;
      modelcorrection_night : -99.9 .. 99.9;
      modelcorrection_remark : MTEXT;
      refyear_modcal_str : 1900 .. 2100;
      trafficcollection : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef;
      used_roadspeed : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef;
    END inputdata_Estreet;

    CLASS inputdata_EsonROAD
    EXTENDS inputdata_Estreet =
      Vt1_str : MANDATORY 0 .. 200;
      Vt2_str : MANDATORY 0 .. 200;
      Vn1_str : MANDATORY 0 .. 200;
      Vn2_str : MANDATORY 0 .. 200;
      rollingnoise_correction : MANDATORY -99.9 .. 99.9;
    END inputdata_EsonROAD;

    CLASS inputdata_EStl86
    EXTENDS inputdata_Estreet =
      Vt_str : MANDATORY 0 .. 200;
      Vn_str : MANDATORY 0 .. 200;
    END inputdata_EStl86;

    CLASS inputdata_tram =
      Ntb_tram : MANDATORY 0.0 .. 999.9;
      Nnb_tram : MANDATORY 0.0 .. 999.9;
      LqD_tram : MANDATORY -5.0 .. 0.0;
      LqN_tram : MANDATORY -5.0 .. 0.0;
      mcd_tram : -99.9 .. 99.9;
      mcn_tram : -99.9 .. 99.9;
      emissionmodel_tram : MANDATORY TEXT;
      refyear_modcal_tram : 1900 .. 2100;
      LrEday_tram : 0.0 .. 120.0;
      LrEnight_tram : 0.0 .. 120.0;
      trafficcollection_tram : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef;
    END inputdata_tram;

    CLASS streetemission =
      geometry_E : MANDATORY PolylineZ;
      level_aquisition : MANDATORY BOOLEAN;
      id_E : MANDATORY TEXT;
      street_name : TEXT;
      route_id : TEXT;
      section_from : TEXT;
      section_to : TEXT;
      geometry_acqusition : GeometryCHLV03_V1.Method;
      position_accuracy : GeometryCHLV03_V1.Accuracy;
      streetE_remark : MTEXT;
      lrEday : MANDATORY 0.0 .. 120.0;
      lrEnight : MANDATORY 0.0 .. 120.0;
      emodel_street : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef;
      lrE_remark : MTEXT;
      tunnel : MANDATORY BOOLEAN;
      bridge : BOOLEAN;
      tram_noise : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef;
    END streetemission;

    ASSOCIATION inputdata_EsonROAD2streetemission =
      streetemission -<#> {1} streetemission;
      inputdata_EsonROAD -- {0..1} inputdata_EsonROAD;
    END inputdata_EsonROAD2streetemission;

    ASSOCIATION streetemission2inputdata_EStl86 =
      streetemission -<#> {1} streetemission;
      inputdata_EStl86 -- {0..1} inputdata_EStl86;
    END streetemission2inputdata_EStl86;

    ASSOCIATION streetemission2inputdata_tram =
      streetemission -<#> {1} streetemission;
      inputdata_tram -- {0..1} inputdata_tram;
    END streetemission2inputdata_tram;

  END Emission_Strasse;

  TOPIC Immission_Strasse =
    DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

    CLASS dispersion_calculation =
      dispcal_remark : MTEXT;
      dispersionmodel : MANDATORY TEXT;
      dispersionapplication : MANDATORY TEXT;
      versionnr_dispapp : TEXT;
      meterologydata : TEXT;
      heightmodel : TEXT;
      building_database : TEXT;
      noisebarrier_geodata : TEXT;
      emissiondata : TEXT;
      refyear_register : MANDATORY 1900 .. 2100;
      NPR_name : MANDATORY TEXT;
      I_measurement : BOOLEAN;
    END dispersion_calculation;

    CLASS noisebarrier =
      geometry_nb : MANDATORY LBK_Haupt_uebrigeStrassen_LV03_V1_1.Emission_Strasse.PolylineZ;
      noisebarrierheight : 0.00 .. 99.99;
      reflexionloss_left : 0.0 .. 99.9;
      reflexionloss_right : 0.0 .. 99.9;
      ID_NB : MANDATORY TEXT;
      noisebarrier_remark : MTEXT;
      noisebarriertyp : LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef;
    END noisebarrier;

    CLASS affected_analysis =
      BFSNr : MANDATORY TEXT;
      affected_analysis_remark : MTEXT;
      PV_day : MANDATORY 0.0 .. 99999999.9;
      PV_night : MANDATORY 0.0 .. 99999999.9;
      ALV_day : MANDATORY 0.0 .. 99999999.9;
      ALV_night : MANDATORY 0.0 .. 99999999.9;
      AV_day : MANDATORY 0.0 .. 99999999.9;
      AV_night : MANDATORY 0.0 .. 99999999.9;
      sum_people : MANDATORY 0.0 .. 99999999.9;
      withoutsensitivitylevel : MANDATORY 0.0 .. 99999999.9;
      GemN : MANDATORY TEXT;
      analysis_year : MANDATORY 1900 .. 2100;
    END affected_analysis;

    CLASS pointofdetermination =
      determination_remark : MTEXT;
      Lr_day : MANDATORY 0.0 .. 120.0;
      Lr_night : MANDATORY 0.0 .. 120.0;
      mcd_street : 0.0 .. 99.9;
      mcn_street : 0.0 .. 99.9;
      geometry_pod : MANDATORY GeometryCHLV03_V1.Coord3;
      ID_pod : MANDATORY TEXT;
      EGID : 0 .. 9999999999;
      EDID : 0 .. 9999999999;
      address_pod : TEXT;
      exposure_limit_date : FORMAT INTERLIS.XMLDate "1900-1-1" .. "2100-12-31";
      operation_status : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef;
      pointofdetermination_t : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef;
      exposure_limit_value_d : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef;
      exposure_limit_value_n : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef;
    END pointofdetermination;

    ASSOCIATION dispersion_calculation2pointofdetermination =
      dispersion_calculation -- {1} dispersion_calculation;
      pointofdetermination -- {1..*} pointofdetermination;
    END dispersion_calculation2pointofdetermination;

  END Immission_Strasse;

END LBK_Haupt_uebrigeStrassen_LV03_V1_1.


!!@ technicalContact=mailto:gis@bafu.admin.ch
!!@ furtherInformation=https://www.bafu.admin.ch/geodatenmodelle
!!@ IDGeoIV=144.1
MODEL LBK_Haupt_uebrigeStrassen_LV95_V1_1 (en)
AT "https://models.geo.admin.ch/BAFU/"
VERSION "2018-09-12"  =
  IMPORTS GeometryCHLV95_V1,LBK_Haupt_uebrigeStrassen_Codelisten_V1_1;

  TOPIC Emission_Strasse =
    DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

    DOMAIN

      PolylineZ = POLYLINE WITH (STRAIGHTS) VERTEX GeometryCHLV95_V1.Coord3;

    CLASS inputdata_Estreet =
      inputdata_remark : MTEXT;
      aDTF : MANDATORY 0.0 .. 999999.9;
      Nt : MANDATORY 0.0 .. 999999.9;
      Nn : MANDATORY 0.0 .. 999999.9;
      P_Nt2 : MANDATORY 0.0 .. 100.0;
      P_Nn2 : MANDATORY 0.0 .. 100.0;
      gradient : MANDATORY -99.9 .. 99.9;
      trafficcol_remark : MTEXT;
      refyear_trafficcol : MANDATORY 1900 .. 2100;
      SCS : 0.00 .. 99.99;
      track_number : 0 .. 99;
      direction_seperate : BOOLEAN;
      roadsurface_correction : MANDATORY -99.9 .. 99.9;
      modelcorrection_day : -99.9 .. 99.9;
      modelcorrection_night : -99.9 .. 99.9;
      modelcorrection_remark : MTEXT;
      refyear_modcal_str : 1900 .. 2100;
      trafficcollection : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef;
      used_roadspeed : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.used_roadspeed_CatRef;
    END inputdata_Estreet;

    CLASS inputdata_EsonROAD
    EXTENDS inputdata_Estreet =
      Vt1_str : MANDATORY 0 .. 200;
      Vt2_str : MANDATORY 0 .. 200;
      Vn1_str : MANDATORY 0 .. 200;
      Vn2_str : MANDATORY 0 .. 200;
      rollingnoise_correction : MANDATORY -99.9 .. 99.9;
    END inputdata_EsonROAD;

    CLASS inputdata_EStl86
    EXTENDS inputdata_Estreet =
      Vt_str : MANDATORY 0 .. 200;
      Vn_str : MANDATORY 0 .. 200;
    END inputdata_EStl86;

    CLASS inputdata_tram =
      Ntb_tram : MANDATORY 0.0 .. 999.9;
      Nnb_tram : MANDATORY 0.0 .. 999.9;
      LqD_tram : MANDATORY -5.0 .. 0.0;
      LqN_tram : MANDATORY -5.0 .. 0.0;
      mcd_tram : -99.9 .. 99.9;
      mcn_tram : -99.9 .. 99.9;
      emissionmodel_tram : MANDATORY TEXT;
      refyear_modcal_tram : 1900 .. 2100;
      LrEday_tram : 0.0 .. 120.0;
      LrEnight_tram : 0.0 .. 120.0;
      trafficcollection_tram : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.trafficcollection_CatRef;
    END inputdata_tram;

    CLASS streetemission =
      geometry_E : MANDATORY PolylineZ;
      level_aquisition : MANDATORY BOOLEAN;
      id_E : MANDATORY TEXT;
      street_name : TEXT;
      route_id : TEXT;
      section_from : TEXT;
      section_to : TEXT;
      geometry_acqusition : GeometryCHLV95_V1.Method;
      position_accuracy : GeometryCHLV95_V1.Accuracy;
      streetE_remark : MTEXT;
      lrEday : MANDATORY 0.0 .. 120.0;
      lrEnight : MANDATORY 0.0 .. 120.0;
      emodel_street : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.emodel_street_CatRef;
      lrE_remark : MTEXT;
      tunnel : MANDATORY BOOLEAN;
      bridge : BOOLEAN;
      tram_noise : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.tram_noise_CatRef;
    END streetemission;

    ASSOCIATION inputdata_EsonROAD2streetemission =
      streetemission -<#> {1} streetemission;
      inputdata_EsonROAD -- {0..1} inputdata_EsonROAD;
    END inputdata_EsonROAD2streetemission;

    ASSOCIATION streetemission2inputdata_EStl86 =
      streetemission -<#> {1} streetemission;
      inputdata_EStl86 -- {0..1} inputdata_EStl86;
    END streetemission2inputdata_EStl86;

    ASSOCIATION streetemission2inputdata_tram =
      streetemission -<#> {1} streetemission;
      inputdata_tram -- {0..1} inputdata_tram;
    END streetemission2inputdata_tram;

  END Emission_Strasse;

  TOPIC Immission_Strasse =
    DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

    CLASS dispersion_calculation =
      dispcal_remark : MTEXT;
      dispersionmodel : MANDATORY TEXT;
      dispersionapplication : MANDATORY TEXT;
      versionnr_dispapp : TEXT;
      meterologydata : TEXT;
      heightmodel : TEXT;
      building_database : TEXT;
      noisebarrier_geodata : TEXT;
      emissiondata : TEXT;
      refyear_register : MANDATORY 1900 .. 2100;
      NPR_name : MANDATORY TEXT;
      I_measurement : BOOLEAN;
    END dispersion_calculation;

    CLASS noisebarrier =
      geometry_nb : MANDATORY LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.PolylineZ;
      noisebarrierheight : 0.00 .. 99.99;
      reflexionloss_left : 0.0 .. 99.9;
      reflexionloss_right : 0.0 .. 99.9;
      ID_NB : MANDATORY TEXT;
      noisebarrier_remark : MTEXT;
      noisebarriertyp : LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.noisebarriertype_CatRef;
    END noisebarrier;

    CLASS affected_analysis =
      BFSNr : MANDATORY TEXT;
      affected_analysis_remark : MTEXT;
      PV_day : MANDATORY 0.0 .. 99999999.9;
      PV_night : MANDATORY 0.0 .. 99999999.9;
      ALV_day : MANDATORY 0.0 .. 99999999.9;
      ALV_night : MANDATORY 0.0 .. 99999999.9;
      AV_day : MANDATORY 0.0 .. 99999999.9;
      AV_night : MANDATORY 0.0 .. 99999999.9;
      sum_people : MANDATORY 0.0 .. 99999999.9;
      withoutsensitivitylevel : MANDATORY 0.0 .. 99999999.9;
      GemN : MANDATORY TEXT;
      analysis_year : MANDATORY 1900 .. 2100;
    END affected_analysis;

    CLASS pointofdetermination =
      determination_remark : MTEXT;
      Lr_day : MANDATORY 0.0 .. 120.0;
      Lr_night : MANDATORY 0.0 .. 120.0;
      mcd_street : 0.0 .. 99.9;
      mcn_street : 0.0 .. 99.9;
      geometry_pod : MANDATORY GeometryCHLV95_V1.Coord3;
      ID_pod : MANDATORY TEXT;
      EGID : 0 .. 9999999999;
      EDID : 0 .. 9999999999;
      address_pod : TEXT;
      exposure_limit_date : FORMAT INTERLIS.XMLDate "1900-1-1" .. "2100-12-31";
      operation_status : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.operation_status_CatRef;
      pointofdetermination_t : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.pointofdetermination_CatRef;
      exposure_limit_value_d : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef;
      exposure_limit_value_n : MANDATORY LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten.exposure_limit_value_CatRef;
    END pointofdetermination;

    ASSOCIATION dispersion_calculation2pointofdetermination =
      dispersion_calculation -- {1} dispersion_calculation;
      pointofdetermination -- {1..*} pointofdetermination;
    END dispersion_calculation2pointofdetermination;

  END Immission_Strasse;

END LBK_Haupt_uebrigeStrassen_LV95_V1_1.
','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AVT_Strassenlaerm_20190806.ili','2.3','SO_AVT_Strassenlaerm_20190806{ GeometryCHLV95_V1 CHAdminCodes_V1 LBK_Haupt_uebrigeStrassen_Codelisten_V1_1 LBK_Haupt_uebrigeStrassen_LV95_V1_1}','INTERLIS 2.3;

/** !!------------------------------------------------------------------------------
 *  !! Version    | wer | Aenderung
 *  !!------------------------------------------------------------------------------ 
 *  !! 2019-04-15 | cst | Initialversion
 *  !! 2019-08-06 | cst | Attribut empfindlichkeitsstufe neu vom Typ TEXT
 *  !!==============================================================================
 */
!!@ technicalContact=mailto:agi@bd.so.ch
MODEL SO_AVT_Strassenlaerm_20190806 (de)
AT "http://www.geo.so.ch/models/AVT"
VERSION "2019-08-06"  =
  IMPORTS GeometryCHLV95_V1,CHAdminCodes_V1,LBK_Haupt_uebrigeStrassen_LV95_V1_1,LBK_Haupt_uebrigeStrassen_Codelisten_V1_1;
 
  /** Erweiterung des MGDM-TOPIC um OID-Deklaration. Import aller Klassen ohne weitere Zusaetze.
   */
  TOPIC Emission_Strasse
  EXTENDS LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse =
    OID AS INTERLIS.UUIDOID;
	DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

	CLASS inputdata_EsonROAD (EXTENDED) = END inputdata_EsonROAD;
	CLASS inputdata_EStl86 (EXTENDED) = END inputdata_EStl86;
	
    CLASS inputdata_Estreet_SO (ABSTRACT)
    EXTENDS LBK_Haupt_uebrigeStrassen_LV95_V1_1.Emission_Strasse.inputdata_Estreet =
    END inputdata_Estreet_SO;

    CLASS inputdata_tram (EXTENDED) = END inputdata_tram;
    CLASS streetemission (EXTENDED) = END streetemission; 

  END Emission_Strasse;

  /** Erweiterung des MGDM-TOPIC um OID-Deklaration. Import aller Klassen.
   */
  TOPIC Immission_Strasse
  EXTENDS LBK_Haupt_uebrigeStrassen_LV95_V1_1.Immission_Strasse =
    OID AS INTERLIS.UUIDOID;
	DEPENDS ON LBK_Haupt_uebrigeStrassen_Codelisten_V1_1.Codelisten;

    CLASS affected_analysis (EXTENDED) = END affected_analysis;
    CLASS dispersion_calculation (EXTENDED) = END dispersion_calculation;
    CLASS noisebarrier (EXTENDED) = END noisebarrier;

	/** Erweiterung Klasse pointofdetermination aus MGDM um zusaetzliche Attribute
     */
    CLASS pointofdetermination (EXTENDED) =
	  /** Immissionsgrenzwert Tag [dBA]
       */
	  grenzwert_tag : 0 .. 100;
	  /** Immissionsgrenzwert Nacht [dBA]
       */
	  grenzwert_nacht : 0 .. 100;
	  /** Laerm-Empfindlichkeitsstufe
       */
	  empfindlichkeitsstufe : TEXT*4;
	  /** wird Nationalstrassenlaerm beruecksichtigt (true) oder nicht (false)
       */
	  inklusive_nationalstrasse : BOOLEAN;
    END pointofdetermination;

    ASSOCIATION dispersion_calculation2pointofdetermination(EXTENDED) =
    END dispersion_calculation2pointofdetermination;

  END Immission_Strasse;

END SO_AVT_Strassenlaerm_20190806.','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2019-11-25 11:06:16.67');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.2-70c2c19de9928155e48437dedb68f5eef82896a7');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.TidHandling','property');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createDatasetCols','addDatasetCol');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.BasketHandling','readWrite');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO avt_strassenlaerm.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV03_V1_1','furtherInformation','https://www.bafu.admin.ch/geodatenmodelle');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV03_V1_1','IDGeoIV','144.1');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV03_V1_1','technicalContact','mailto:gis@bafu.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AVT_Strassenlaerm_20190806','technicalContact','mailto:agi@bd.so.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1','furtherInformation','https://www.bafu.admin.ch/geodatenmodelle');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1','IDGeoIV','144.1');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_Codelisten_V1_1','technicalContact','mailto:gis@bafu.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjectTrees_V1','technicalContact','models@geo.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1','furtherInformation','https://www.bafu.admin.ch/geodatenmodelle');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1','IDGeoIV','144.1');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('LBK_Haupt_uebrigeStrassen_LV95_V1_1','technicalContact','mailto:gis@bafu.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO avt_strassenlaerm.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('CatalogueObjects_V1','technicalContact','models@geo.admin.ch');
