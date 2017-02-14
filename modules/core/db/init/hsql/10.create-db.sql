-- begin ASSETMANAGEMENT_ADD__ASSET
create table ASSETMANAGEMENT_ADD__ASSET (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ASSET__ID varchar(255) not null,
    NAME varchar(255) not null,
    COMPANY varchar(255),
    SUPPLIER varchar(255) not null,
    STATUS integer,
    MODEL_NUMBER varchar(255) not null,
    SERIAL_NUMBER varchar(255),
    PURCHASE_DATE date,
    PURCHASE_COST varchar(255),
    --
    primary key (ID)
)^
-- end ASSETMANAGEMENT_ADD__ASSET
-- begin ASSETMANAGEMENT_REQUEST
create table ASSETMANAGEMENT_REQUEST (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CLIENT_ID varchar(36) not null,
    ASSET_ID varchar(36),
    --
    primary key (ID)
)^
-- end ASSETMANAGEMENT_REQUEST
-- begin ASSETMANAGEMENT_ORDER__STATUS
create table ASSETMANAGEMENT_ORDER__STATUS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    REQUESTED_ASSET_ID varchar(36),
    CURRENT_STATUS integer not null,
    --
    primary key (ID)
)^
-- end ASSETMANAGEMENT_ORDER__STATUS
-- begin ASSETMANAGEMENT_USER__ASSET__VIEW
create table ASSETMANAGEMENT_USER__ASSET__VIEW (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    primary key (ID)
)^
-- end ASSETMANAGEMENT_USER__ASSET__VIEW
