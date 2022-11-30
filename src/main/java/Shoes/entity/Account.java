/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shoes.entity;

/**
 *
 * @author ADMIN
 */

public class Account {
    private int accountid;
    private String userName;
    private String password;
    private String fullName;
    private String mail;
    private String phone;
    private String address;
    private int isAdmin;
    private int enable;
    

    public Account(int accountid, String userName, String password, String fullName, String mail, String phone, String address, int isAdmin, int enable) {
        this.accountid = accountid;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.mail = mail;
        this.phone = phone;
        this.address = address;
        this.isAdmin = isAdmin;
        this.enable = enable;
    }
    
    
    public int getAccountId() {
        return accountid;
    }

    public void setAccountId(int accountId) {
        this.accountid = accountId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String pasword) {
        this.password = pasword;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setEmail(String mail) {
        this.mail = mail;
    }


    public String getEmail() {
        return mail;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", userName=" + userName + ", password=" + password + ", fullName=" + fullName + ", mail=" + mail + ", phone=" + phone + ", address=" + address + ", isAdmin=" + isAdmin + ", enable=" + enable + '}';
    }
    
}
