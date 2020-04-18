package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.actividadObj;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;

public class actividadLogic extends Logic
{

    public List<actividadObj> getAllActivities() 
    {
        ArrayList<actividadObj> totalActividades = null;
        DatabaseX database = getDatabase();
        
        ResultSet CResult = database.executeQuery("SELECT * "
                + "FROM proyecto.actividades;");
        
        if(CResult!=null)
        {
            int ID_actividad;
            String Nombre;
            String Descripcion;
            double Costo;
            String Encargado;
            int Anno;
            int Mes;
            int Dia;
            String Foto;
            actividadObj CTemp;
            totalActividades = new ArrayList<>();
            
            try {
                while(CResult.next())
                {
                    ID_actividad = CResult.getInt("IDactividad");
                    Nombre = CResult.getString("Nombre");
                    Descripcion = CResult.getString("Descripcion");
                    Costo = CResult.getDouble("Costo");
                    Encargado = CResult.getString("Encargado");
                    Anno = CResult.getInt("Año");
                    Mes = CResult.getInt("Mes");
                    Dia = CResult.getInt("Dia");
                    Foto = CResult.getString("Foto");
                    
                    CTemp = new actividadObj(ID_actividad,Nombre,Descripcion,Costo,Encargado,Anno,Mes,Dia,Foto);
                    totalActividades.add(CTemp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ayudaLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return totalActividades; 
    }

    public void insertActivity(String p_nombre, String p_descripcion, String p_encargado, String p_costo, int p_anno, int p_mes, int p_dia, String p_banner) 
    {
    DatabaseX database = getDatabase();
    database.executeNonQueryBool("INSERT INTO proyecto.actividades"
        + "(IDactividad, Nombre, Descripcion, Costo, Encargado, Año, Mes, Dia, Foto) "
        + "VALUES(0,'"+p_nombre+"','"+p_descripcion+"', '"+p_costo+"', '"+p_encargado+"', "+p_anno+", "+p_mes+", "+p_dia+", '"+p_banner+"');"); 
    }

    public void borrarActividad(int IDsolicitud) 
    {
    DatabaseX database = getDatabase();
    database.executeNonQueryBool("DELETE "
            + "FROM proyecto.actividades "
            + "WHERE IDactividad="+IDsolicitud+";"); 
    }

    public void editActivity(int id_Actividad, String nombre, String descripcion, String encargado, double costo, int anno, int mes, int dia, String banner) 
    {
        DatabaseX database = getDatabase();
        database.executeNonQueryBool("UPDATE proyecto.actividades "
                + "SET Nombre = '"+nombre+"',Descripcion = '"+descripcion+"',Costo = "+costo+",Encargado= '"+encargado+"',Año = "+anno+",Mes = "+mes+",Dia = "+dia+","
                + "Foto = '"+banner+"' "
                + "WHERE IDactividad = "+id_Actividad+";");
    }

    public actividadObj getActividadByID(int actividad) 
    {
         actividadObj act = null;
         DatabaseX database = getDatabase();
         ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.actividades WHERE IDactividad = "+actividad+";");
         
         if(CResult!=null)
         {
             try {
                 
                int id;
                String nombre;
                String descripcion;
                double costo;
                String encargado;
                int anno;
                int mes;
                int dia;
                String foto;
                
                
                while(CResult.next())
                {
                id = CResult.getInt("IDactividad");
                nombre = CResult.getString("Nombre");
                descripcion = CResult.getString("Descripcion");
                costo = CResult.getDouble("Costo");
                encargado = CResult.getString("Encargado");
                anno = CResult.getInt("Año");
                mes = CResult.getInt("Mes");
                dia = CResult.getInt("Dia");
                foto = CResult.getString("Foto");
                
                act = new actividadObj(id, nombre, descripcion, costo, encargado, anno, mes, dia, foto);
                
                }
             } 
             catch (SQLException ex) 
             {
                 Logger.getLogger(registerLogic.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         
         return act;
    }

    
}
