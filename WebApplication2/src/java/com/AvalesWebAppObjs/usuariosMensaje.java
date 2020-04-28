/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AvalesWebAppObjs;

/**
 *
 * @author fer10
 */
public class usuariosMensaje {
    private int idUser;
    private String userName;
    private byte adminStatus;
    
    
    public usuariosMensaje(int p_idUser, String p_userName, byte p_adminStatus)
    {
        setIdUser(p_idUser);
        setUserName(p_userName);
        setAdminStatus(p_adminStatus);
        
    }
    private void setIdUser(int p_idUser)
    {
        idUser = p_idUser;
    }
    public int getIdUser()
    {
        return idUser;
    }
    private void setAdminStatus(byte p_adminStatus)
    {
        adminStatus = p_adminStatus;
    }
    public byte getAdminStatus()
    {
        return adminStatus;
    }
     private void setUserName(String p_userName)
    {
        userName = p_userName;
    }
    public String getUserName()
    {
        return userName;
    }
}
