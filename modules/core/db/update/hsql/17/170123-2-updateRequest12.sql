-- alter table ASSETMANAGEMENT_REQUEST add column CLIENT_ID varchar(36) ^
-- update ASSETMANAGEMENT_REQUEST set CLIENT_ID = <default_value> ;
-- alter table ASSETMANAGEMENT_REQUEST alter column CLIENT_ID set not null ;
alter table ASSETMANAGEMENT_REQUEST add column CLIENT_ID varchar(36) not null ;
alter table ASSETMANAGEMENT_REQUEST add column ASSET_ID varchar(36) ;
alter table ASSETMANAGEMENT_REQUEST drop column CLIENT cascade ;
alter table ASSETMANAGEMENT_REQUEST drop column ASSET cascade ;
