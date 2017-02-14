alter table ASSETMANAGEMENT_REQUEST add column USER_ID varchar(36) ;
alter table ASSETMANAGEMENT_REQUEST drop column CLIENT_PASSWORD_ID cascade ;
