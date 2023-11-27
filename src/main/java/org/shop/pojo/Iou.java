package org.shop.pojo;

import java.util.Date;
import java.io.Serializable;

/**
 * (Iou)实体类
 *
 * @author yong
 * @since 2023-11-27 21:18:12
 */
public class Iou implements Serializable {
    private static final long serialVersionUID = 303419743925731027L;

    private Long id;

    private Long customerId;

    private Long hwId;

    private Long num;

    private Date checkoutDate;

    private Date returnDate;
/**
     * 0: 借出; 1: 归还
     */
    private Long status;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Long getHwId() {
        return hwId;
    }

    public void setHwId(Long hwId) {
        this.hwId = hwId;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public Date getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(Date checkoutDate) {
        this.checkoutDate = checkoutDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

}

