package com.company.assetmanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@NamePattern("%s %s|current_status,requested_asset")
@Table(name = "ASSETMANAGEMENT_ORDER__STATUS")
@Entity(name = "assetmanagement$Order_Status")
public class Order_Status extends StandardEntity {
    private static final long serialVersionUID = 9058346649667380893L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "REQUESTED_ASSET_ID")
    protected Request requested_asset;

    @Column(name = "CURRENT_STATUS", nullable = false)
    protected Integer current_status;

    public void setRequested_asset(Request requested_asset) {
        this.requested_asset = requested_asset;
    }

    public Request getRequested_asset() {
        return requested_asset;
    }


    public void setCurrent_status(Status current_status) {
        this.current_status = current_status == null ? null : current_status.getId();
    }

    public Status getCurrent_status() {
        return current_status == null ? null : Status.fromId(current_status);
    }


}