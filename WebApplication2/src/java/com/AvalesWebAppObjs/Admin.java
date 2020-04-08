
package com.AvalesWebAppObjs;

public class Admin 
{
    private int ID;
    private String username;
    private String password;

    public Admin(int p_ID, String p_username, String p_password) {
        setID(p_ID);
        setUsername(p_username);
        setPassword(p_password);
    }

    public int getID() {
        return ID;
    }

    private void setID(int p_ID) {
        ID = p_ID;
    }

    public String getUsername() {
        return username;
    }

    private void setUsername(String p_username) {
       username = p_username;
    }

    public String getPassword() {
        return password;
    }

    private void setPassword(String p_password) {
        password = p_password;
    }
    
    
    
}
