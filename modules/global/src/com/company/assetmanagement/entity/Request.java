package com.company.assetmanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.security.entity.User;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Set;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s|client,asset")
@Table(name = "ASSETMANAGEMENT_REQUEST")
@Entity(name = "assetmanagement$Request")
public class Request extends StandardEntity {
    private static final long serialVersionUID = -7429338703897553689L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CLIENT_ID")
    protected User client;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ASSET_ID")
    protected Add_Asset asset;

    public Add_Asset getAsset() {
        return asset;
    }

    public void setAsset(Add_Asset asset) {
        this.asset = asset;
    }





    public User getClient() {
        return client;
    }

    public void setClient(User client) {
        this.client = client;
    }










}