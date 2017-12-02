package com.fz.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Consume implements Serializable {
    private long id;
    private String kh;
    private BigDecimal xfje;//消费金额
    private BigDecimal xfye;//消费余额
    private int status;
    private Date rqsj;
    private int xffs;//--消费方式，0代表现金消费，1代表补助消费

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getKh() {
        return kh;
    }

    public void setKh(String kh) {
        this.kh = kh;
    }

    public BigDecimal getXfje() {
        return xfje;
    }

    public void setXfje(BigDecimal xfje) {
        this.xfje = xfje;
    }

    public BigDecimal getXfye() {
        return xfye;
    }

    public void setXfye(BigDecimal xfye) {
        this.xfye = xfye;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getRqsj() {
        return rqsj;
    }

    public void setRqsj(Date rqsj) {
        this.rqsj = rqsj;
    }

    public int getXffs() {
        return xffs;
    }

    public void setXffs(int xffs) {
        this.xffs = xffs;
    }
}
