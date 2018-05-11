package top.yjzloveyzh.common.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RequestBuyRecord {
    private int id;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createAt;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updateAt;
    private boolean isDeleted;
    private boolean isAllowed;
    private boolean isDone;
    private double cost;
    private int allowedUserId;
    private int requestedUserId;
    private User allowedUser;
    private User requestedUser;

    public RequestBuyRecord() {
    }

    public int getId() {
        return id;
    }

    public double getCost() {
        return cost;
    }

    public User getAllowedUser() {
        return allowedUser;
    }

    public User getRequestedUser() {
        return requestedUser;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public void setAllowedUser(User allowedUser) {
        this.allowedUser = allowedUser;
    }

    public void setRequestedUser(User requestedUser) {
        this.requestedUser = requestedUser;
    }

    public boolean isDeleted() {
        return isDeleted;
    }

    public boolean isAllowed() {
        return isAllowed;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public void setAllowed(boolean isAllowed) {
        this.isAllowed = isAllowed;
    }

    public void setDone(boolean isDone) {
        this.isDone = isDone;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public int getAllowedUserId() {
        return allowedUserId;
    }

    public int getRequestedUserId() {
        return requestedUserId;
    }

    public void setAllowedUserId(int allowedUserId) {
        this.allowedUserId = allowedUserId;
    }

    public void setRequestedUserId(int requestedUserId) {
        this.requestedUserId = requestedUserId;
    }
}
