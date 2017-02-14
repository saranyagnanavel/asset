package com.company.assetmanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s %s|name,asset_Id,purchase_cost")
@Table(name = "ASSETMANAGEMENT_ADD__ASSET")
@Entity(name = "assetmanagement$Add_Asset")
public class Add_Asset extends StandardEntity {
    private static final long serialVersionUID = -3427803508436173390L;

    @Column(name = "ASSET__ID", nullable = false, unique = true)
    protected String asset_Id;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "COMPANY")
    protected String company;

    @Column(name = "SUPPLIER", nullable = false)
    protected String supplier;

    @Column(name = "STATUS")
    protected Integer status;

    @Column(name = "MODEL_NUMBER", nullable = false)
    protected String model_number;

    @Column(name = "SERIAL_NUMBER", unique = true)
    protected String serial_number;

    @Temporal(TemporalType.DATE)
    @Column(name = "PURCHASE_DATE")
    protected Date purchase_date;

    @Column(name = "PURCHASE_COST")
    protected String purchase_cost;

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getSupplier() {
        return supplier;
    }


    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }

    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }


    public void setAsset_Id(String asset_Id) {
        this.asset_Id = asset_Id;
    }

    public String getAsset_Id() {
        return asset_Id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCompany() {
        return company;
    }

    public void setModel_number(String model_number) {
        this.model_number = model_number;
    }

    public String getModel_number() {
        return model_number;
    }

    public void setSerial_number(String serial_number) {
        this.serial_number = serial_number;
    }

    public String getSerial_number() {
        return serial_number;
    }

    public void setPurchase_date(Date purchase_date) {
        this.purchase_date = purchase_date;
    }

    public Date getPurchase_date() {
        return purchase_date;
    }

    public void setPurchase_cost(String purchase_cost) {
        this.purchase_cost = purchase_cost;
    }

    public String getPurchase_cost() {
        return purchase_cost;
    }


}