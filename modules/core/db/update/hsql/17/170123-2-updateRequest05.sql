alter table ASSETMANAGEMENT_REQUEST add column ASSET varchar(36) ;
alter table ASSETMANAGEMENT_REQUEST drop column ASSET_ID cascade ;
