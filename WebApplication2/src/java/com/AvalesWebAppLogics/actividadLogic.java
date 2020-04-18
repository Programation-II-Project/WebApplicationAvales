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
    
}
