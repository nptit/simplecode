package com.offline;
public class AccessUser implements IUser{

    public void insert(User user){
        System.out.println("insert user with Access");
    }
    public void getUser(int id){
        System.out.println("get user with Access id = " + id);
    }
}
