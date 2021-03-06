/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.NewMensaje;
import com.AvalesWebAppObjs.usuariosMensaje;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fer10
 */
public class messageLogic extends Logic
{
    public boolean insertMessage(int p_idUserFrom, int p_idMessageUserFrom, String p_message, byte p_AdminStatus)
    {
        boolean message;
        DatabaseX database = getDatabase();
        message = database.executeNonQueryBool("INSERT INTO proyecto.mensajes"
            + "(idMensajes, IdUserFrom, IdMensajeUserFrom, Mensaje, AdminStatus) "
            + "VALUES(0,'"+p_idUserFrom+"','"+p_idMessageUserFrom+"', '"+p_message+"','"+p_AdminStatus+"');");
    return message;    
    
    }
    public List<NewMensaje> getIdMessageUserFrom(int p_idUser) throws SQLException
    {
        ArrayList<NewMensaje> listaMensajes = null;
        DatabaseX database = getDatabase();
        ResultSet Cresult = database.executeQuery("SELECT * FROM proyecto.mensajes WHERE IdUserFrom = "+ p_idUser +";");
         if(Cresult != null)
         {
             int idMensaje;
             int idUserFrom;
             int idMensajeUserFrom;
             String mensaje;
             byte adminStatus;
             NewMensaje ATemp;
             listaMensajes = new ArrayList<>();
             
             while(Cresult.next())
                {
                    idMensaje = Cresult.getInt("IdMensajes");
                    idUserFrom = Cresult.getInt("IdUserFrom");
                    idMensajeUserFrom = Cresult.getInt("IdMensajeUserFrom");
                    mensaje = Cresult.getString("Mensaje");
                    adminStatus = Cresult.getByte("AdminStatus");
                    
                    ATemp = new NewMensaje(idUserFrom, idMensajeUserFrom, mensaje, adminStatus);
                    listaMensajes.add(ATemp);
                }
         }          
         return listaMensajes;
    }
    public List<NewMensaje> getAllMensajesFromUser(int p_idUser)
    {
        ArrayList<NewMensaje> totalMensajes = null;
        DatabaseX database = getDatabase();
       
        ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.mensajes where idUserFrom ="+p_idUser+";");
        
        if(CResult!=null)
        {
            try {
                int idUserFrom;
                int idMensajeUserFrom;
                String mensaje;
                byte admin;
                NewMensaje CTemp;
                totalMensajes = new ArrayList<>();
                
                
                while(CResult.next())
                {
                    idUserFrom = CResult.getInt("IdUserFrom");
                    idMensajeUserFrom = CResult.getInt("IdMensajeUserFrom");
                    mensaje = CResult.getString("Mensaje");
                    admin = CResult.getByte("AdminStatus");
                    
                    CTemp = new NewMensaje(idUserFrom, idMensajeUserFrom, mensaje, admin);
                    totalMensajes.add(CTemp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(messageLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
           
            
        }
        return totalMensajes;
    }
    
    public List<usuariosMensaje> getAllUserWithMessages()
    {
        ArrayList<usuariosMensaje> listaUsuarios = null;
        
        DatabaseX database = getDatabase();
        
        ResultSet Cresult = database.executeQuery("SELECT distinct proyecto.mensajes.idUserFrom, proyecto.mensajes.AdminStatus, proyecto.registros.Nombre  FROM proyecto.mensajes inner join proyecto.registros on proyecto.mensajes.idUserFrom = proyecto.registros.ID;");
        
        if(Cresult != null)
        {
            try {
                int idUser;
                String userName;
                byte adminStatus;
                usuariosMensaje CTemp;
                listaUsuarios = new ArrayList<>();
                
                while(Cresult.next())
                {
                    
                    idUser = Cresult.getInt("idUserFrom");
                    adminStatus = Cresult.getByte("AdminStatus");
                    userName = Cresult.getString("Nombre");
                    CTemp = new usuariosMensaje(idUser, userName, adminStatus);
                    listaUsuarios.add(CTemp);
                    
                }
            } catch (SQLException ex) {
                Logger.getLogger(messageLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        
        
        return listaUsuarios;
    }
    
    public boolean inserMessageAdmin(int p_idUserFrom, String p_message, int p_idMessageUserFrom)
    {
        boolean messagehasfail;
        byte p_AdminStatus = 1;
        DatabaseX database = getDatabase();
        messagehasfail = database.executeNonQueryBool("INSERT INTO proyecto.mensajes"
            + "(idMensajes, IdUserFrom, IdMensajeUserFrom, Mensaje, AdminStatus) "
            + "VALUES(0,'"+p_idUserFrom+"','"+p_idMessageUserFrom+"', '"+p_message+"','"+p_AdminStatus+"');");
        
    return messagehasfail;    
        
    }
    public String getNameUserByIdUser(int p_idUser)
    {
        DatabaseX database = getDatabase();
        
        ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.registros where ID ="+p_idUser+";");
         String userName = null;
        if(CResult != null)
        {
           
            
            try {
                while(CResult.next())
                {
                    try {
                        userName = CResult.getString("Nombre");
                    } catch (SQLException ex) {
                        Logger.getLogger(messageLogic.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(messageLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return userName;
    }
    
    
}
