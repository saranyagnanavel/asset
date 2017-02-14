alter table ASSETMANAGEMENT_REQUEST add column ASSET__ID varchar(255) ;
alter table ASSETMANAGEMENT_REQUEST alter column ASSET_ID set null ;
