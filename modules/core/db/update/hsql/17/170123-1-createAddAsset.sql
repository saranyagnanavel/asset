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
    MODEL_NUMBER varchar(255) not null,
    SERIAL_NUMBER varchar(255),
    PURCHASE_DATE date,
    PURCHASE_COST varchar(255),
    --
    primary key (ID)
);
