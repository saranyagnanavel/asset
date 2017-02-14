alter table ASSETMANAGEMENT_REQUEST drop column ASSET_ID cascade ;
-- alter table ASSETMANAGEMENT_REQUEST add column ASSET_ID varchar(36) ^
-- update ASSETMANAGEMENT_REQUEST set ASSET_ID = <default_value> ;
-- alter table ASSETMANAGEMENT_REQUEST alter column ASSET_ID set not null ;
alter table ASSETMANAGEMENT_REQUEST add column ASSET_ID varchar(36) not null ;
