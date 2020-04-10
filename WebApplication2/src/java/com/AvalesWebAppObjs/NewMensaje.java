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
public class NewMensaje {
    private int idUser;
    private int idMessageUserFrom;
    private String message;
    private byte adminStatus;
    
    public NewMensaje(int p_idUser, int p_idMessageUserFrom, String p_message, byte p_adminStatus)
    {
        
    }
    public void setIdUser(int p_idUser)
    {
        idUser = p_idUser;
    }
    public int getIdUser()
    {
        return idUser;
    }
    public void setIdMessageUserFrom(int p_idMessageUserFrom)
    {
        idMessageUserFrom = p_idMessageUserFrom;
    }
    public int getIdMessageUserFrom()
    {
        return idMessageUserFrom;
    }
    public void setMessage(String p_Message)
    {
        message = p_Message;
    }
    public String getMessage()
    {
        return message;
    }
    public void setAdminStatus(byte p_AdminStatus)
    {
        adminStatus = p_AdminStatus;
    }
    public byte getAdminStatus()
    {
        return adminStatus;
    }
}
