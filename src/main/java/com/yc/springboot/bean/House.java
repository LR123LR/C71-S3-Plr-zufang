package com.yc.springboot.bean;

import java.util.Date;

public class House {
    private Integer id;

    private Integer userId;

    private Integer typeId;

    private String title;

    private Double price;

    private Date pubdate;

    private Integer floorage;

    private String contact;

    private Integer streetId;

    private String descrripton;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getPubdate() {
        return pubdate;
    }

    public void setPubdate(Date pubdate) {
        this.pubdate = pubdate;
    }

    public Integer getFloorage() {
        return floorage;
    }

    public void setFloorage(Integer floorage) {
        this.floorage = floorage;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    public Integer getStreetId() {
        return streetId;
    }

    public void setStreetId(Integer streetId) {
        this.streetId = streetId;
    }

    public String getDescrripton() {
        return descrripton;
    }

    public void setDescrripton(String descrripton) {
        this.descrripton = descrripton == null ? null : descrripton.trim();
    }

	@Override
	public String toString() {
		return "House [id=" + id + ", userId=" + userId + ", typeId=" + typeId + ", title=" + title + ", price=" + price
				+ ", pubdate=" + pubdate + ", floorage=" + floorage + ", contact=" + contact + ", streetId=" + streetId
				+ ", descrripton=" + descrripton + ", getId()=" + getId() + ", getUserId()=" + getUserId()
				+ ", getTypeId()=" + getTypeId() + ", getTitle()=" + getTitle() + ", getPrice()=" + getPrice()
				+ ", getPubdate()=" + getPubdate() + ", getFloorage()=" + getFloorage() + ", getContact()="
				+ getContact() + ", getStreetId()=" + getStreetId() + ", getDescrripton()=" + getDescrripton()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
    
}