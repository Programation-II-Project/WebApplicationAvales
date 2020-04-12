package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.proyectoObj;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;

public class proyectoLogic extends Logic
{

    public List<proyectoObj> getAllProyects() 
    {
        ArrayList<proyectoObj> totalProyectos = null;
        DatabaseX database = getDatabase();
        
        ResultSet CResult = database.executeQuery("SELECT * "
                + "FROM proyecto.proyectos;");
        
        if(CResult!=null)
        {
            int id;
            String Nombre;
            String Descripcion;
            String Lugar;
            String Foto;
            String Video;
            proyectoObj CTemp;
            totalProyectos = new ArrayList<>();
            
            try {
                while(CResult.next())
                {
                    id = CResult.getInt("IDproyecto");
                    Nombre = CResult.getString("NombreProyecto");
                    Descripcion = CResult.getString("Descripcion");
                    Lugar = CResult.getString("Lugar");
                    Foto = CResult.getString("Foto");
                    Video = CResult.getString("Video");
                    
                    CTemp = new proyectoObj(id, Nombre, Descripcion, Lugar, Foto, Video);
                    totalProyectos.add(CTemp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ayudaLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return totalProyectos;
    }

    public boolean insertProyect(String p_nombre, String p_descripcion, String p_lugar, String p_foto, String p_video) 
    {
        boolean insertHasFailed;
        DatabaseX database = getDatabase();
        insertHasFailed = database.executeNonQueryBool("INSERT INTO proyecto.proyectos"
            + "(IDproyecto, NombreProyecto, Descripcion, Lugar, Foto, Video) "
            + "VALUES(0,'"+p_nombre+"','"+p_descripcion+"', '"+p_lugar+"', '"+p_foto+"', '"+p_video+"');"); 
        return insertHasFailed;
    }

    public proyectoObj getProyectByID(int id_proyecto) 
    {
         proyectoObj pro = null;
         DatabaseX database = getDatabase();
         ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.proyectos WHERE IDproyecto = "+id_proyecto+";");
         
         if(CResult!=null)
         {
             try {
                int id;
                String nombre;
                String descripcion;
                String lugar;
                String foto;
                String video;
                
                
                while(CResult.next())
                {
                id = CResult.getInt("IDproyecto");
                nombre = CResult.getString("NombreProyecto");
                descripcion = CResult.getString("Descripcion");
                lugar = CResult.getString("Lugar");
                foto = CResult.getString("Foto");
                video = CResult.getString("Video");
                
                pro = new proyectoObj(id, nombre, descripcion, lugar, foto, video);
                
                }
             } 
             catch (SQLException ex) 
             {
                 Logger.getLogger(registerLogic.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         
         return pro;
    }

    public Boolean borrarProyecto(int id_proyecto) 
    {
    boolean delete;
    DatabaseX database = getDatabase();
    delete = database.executeNonQueryBool("DELETE "
            + "FROM proyecto.proyectos "
            + "WHERE IDproyecto="+id_proyecto+";"); 
    return delete;
    }

    public Boolean editProyecto(int id_proyecto, String nombre, String descripcion, String lugar, String foto, String video) 
    {
        boolean editHasFailed;
        DatabaseX database = getDatabase();
        editHasFailed = database.executeNonQueryBool("UPDATE proyecto.proyectos "
                + "SET NombreProyecto = '"+nombre+"',Descripcion = '"+descripcion+"',Lugar = '"+lugar+"',Foto = '"+foto+"',"
                + "Video = '"+video+"' "
                + "WHERE IDproyecto = "+id_proyecto+";");
        return editHasFailed;
    }


    
}
