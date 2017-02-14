alter table ASSETMANAGEMENT_REQUEST drop column ASSET_ID cascade ;
alter table ASSETMANAGEMENT_REQUEST add column ASSET_ID varchar(36) ;
