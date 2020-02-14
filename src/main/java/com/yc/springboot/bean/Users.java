package com.yc.springboot.bean;

import javax.validation.constraints.NotEmpty;

public class Users {
    private Integer id;

    private String name;
    @NotEmpty(message = "密码不能为空！")
    private String password;

    private String telephone;
    @NotEmpty(message = "用户名不能为空!")
    private String username;

    private String isadmin;

    
    @Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", password=" + password + ", telephone=" + telephone
				+ ", username=" + username + ", isadmin=" + isadmin + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(String isadmin) {
        this.isadmin = isadmin == null ? null : isadmin.trim();
    }
}