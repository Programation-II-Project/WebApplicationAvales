package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.nuevoRegistroObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class registerLogic extends Logic
{

    public List<nuevoRegistroObj> getAllIncome() 
    {
         ArrayList<nuevoRegistroObj> nuevoRegistroList = null;
         DatabaseX database = getDatabase();
         ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.registros;");
         
         if(CResult!=null)
         {
             try {
                int id;
                String nombre;
                String telefono_casa;
                String celular;
                String profesion;
                String direccion;
                String fecha;
                String estado_civil;
                String email;
                int familia;
                int iglesia;
                int gobierno;
                int mc;
                int economia;
                int arte;
                String facebook;
                String twitter;
                
                nuevoRegistroObj CTemp;
                nuevoRegistroList = new ArrayList<>();
                
                 while(CResult.next())
                 {
                     id = CResult.getInt("ID");
                     nombre = CResult.getString("Nombre");
                     telefono_casa = CResult.getString("Telefono_Casa");
                     celular = CResult.getString("Celular");
                     profesion = CResult.getString("Profesion");
                     direccion = CResult.getString("Direccion");
                     fecha = CResult.getString("Fecha_Nacimiento");
                     estado_civil = CResult.getString("Estado_Civil");
                     email = CResult.getString("Email");
                     familia = CResult.getInt("Familia");
                     iglesia = CResult.getInt("Iglesia/Religion");
                     gobierno = CResult.getInt("Gobierno/Politica");
                     mc = CResult.getInt("MC");
                     economia = CResult.getInt("Economia/Negocios");
                     arte = CResult.getInt("Artes/Deportes/Cultura");
                     facebook = CResult.getString("Facebook");
                     twitter = CResult.getString("Twitter");
                     
                     CTemp = new nuevoRegistroObj(id,nombre,telefono_casa,celular,profesion,direccion,fecha,estado_civil,
                             email,familia,iglesia,gobierno,mc,economia,arte,facebook,twitter);
                     nuevoRegistroList.add(CTemp);
                 }
             } 
             catch (SQLException ex) 
             {
                 Logger.getLogger(registerLogic.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         
         return nuevoRegistroList;
    }
    
}
