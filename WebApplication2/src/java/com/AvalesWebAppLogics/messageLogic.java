/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;

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
}
