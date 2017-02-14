alter table ASSETMANAGEMENT_REQUEST drop column ASSET_ID cascade ;
alter table ASSETMANAGEMENT_REQUEST add column ASSET_ID varchar(36) ;
alter table ASSETMANAGEMENT_REQUEST add column CLIENT_PASSWORD varchar(255) ;
alter table ASSETMANAGEMENT_REQUEST drop column ASSET__ID cascade ;
