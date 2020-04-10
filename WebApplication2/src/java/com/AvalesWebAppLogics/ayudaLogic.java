package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.solicitudAyudaObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ayudaLogic extends Logic
{

    public boolean InsertHelp(int p_id, String p_proyecto, String p_descripcion) 
    {
    boolean helpHasFailed;
    DatabaseX database = getDatabase();
    helpHasFailed = database.executeNonQueryBool("INSERT INTO proyecto.solicitudayuda"
            + "(idsolicitudayuda, ID, Proyecto, Descripcion, Fecha) "
            + "VALUES(0,'"+p_id+"','"+p_proyecto+"', '"+p_descripcion+"', NOW());"); 
    return helpHasFailed;    
    }

    
    public List<solicitudAyudaObj> getAllHelpsByUserID(int p_idUser) 
    {
        ArrayList<solicitudAyudaObj> totalAyudas = null;
        DatabaseX database = getDatabase();
        
        ResultSet CResult = database.executeQuery("SELECT * "
                + "FROM proyecto.solicitudayuda where id ="+p_idUser+";");
        
        if(CResult!=null)
        {
            int IDsolicitud;
            int ID;
            String proyecto;
            String descripcion;
            String date;
            String aprobacion;
            solicitudAyudaObj CTemp;
            totalAyudas = new ArrayList<>();
            
            try {
                while(CResult.next())
                {
                    IDsolicitud = CResult.getInt("idsolicitudAyuda");
                    ID = CResult.getInt("ID");
                    proyecto = CResult.getString("Proyecto");
                    descripcion = CResult.getString("Descripcion");
                    date = CResult.getString("Fecha");
                    aprobacion = CResult.getString("Aprobacion");
                    
                    CTemp = new solicitudAyudaObj(IDsolicitud,ID,proyecto,descripcion,date, aprobacion);
                    totalAyudas.add(CTemp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ayudaLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return totalAyudas;
    }

    public boolean deleteHelp(int int_id) 
    {
    boolean delete;
    DatabaseX database = getDatabase();
    
    delete = database.executeNonQueryBool("DELETE "
            + "FROM proyecto.solicitudayuda "
            + "WHERE idsolicitudAyuda="+int_id+";"); 
    return delete;
    }

    public boolean UpdateHelp(int idSolicitud, String proyecto, String descripcion) 
    {
        boolean updateHasFailed;
        DatabaseX database = getDatabase();
        updateHasFailed = database.executeNonQueryBool("UPDATE proyecto.solicitudayuda "
                + "SET Proyecto = '"+proyecto+"',"
                + "Descripcion = '"+descripcion+"' "
                + "WHERE idsolicitudAyuda = "+idSolicitud+";");
        return updateHasFailed;
    }
}