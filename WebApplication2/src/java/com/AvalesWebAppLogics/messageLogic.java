/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.NewMensaje;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
    
}
