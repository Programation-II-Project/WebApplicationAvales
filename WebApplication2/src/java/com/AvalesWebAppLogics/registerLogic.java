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

    public boolean insertRegister(String p_strNombre, String p_strTelefonoCasa, String p_strCelular, String p_strProfesion, String p_strDireccion, String p_strFecha, String p_strEstatus, 
                                String p_strEmail, int p_intFamilia, int p_intIglesia, int p_intGobierno, int p_intMc, int p_intEducacion, int p_intEconomia, int p_intArtes, String p_strFacebook, String p_strTwitter) 
    {
    boolean bHasFailed;
    DatabaseX database = getDatabase();
    bHasFailed = database.executeNonQueryBool("INSERT INTO proyecto.registros"
            + "(Nombre, Telefono_Casa, Celular, Profesion, Direccion, Fecha_Nacimiento, Estado_Civil, Email, Familia, Iglesia, Gobierno, MC, Educacion, Economia, Artes, Facebook, Twitter) "
            + "VALUES('"+p_strNombre+"','"+p_strTelefonoCasa+"', '"+p_strCelular+"', '"+p_strProfesion+"', '"+p_strDireccion+"', '"+p_strFecha+"', '"+p_strEstatus+"', '"+p_strEmail+"', "+p_intFamilia+", "+p_intIglesia+", "+p_intGobierno+", "+p_intMc+","+p_intEducacion+", "+p_intEconomia+", "+p_intArtes+", '"+p_strFacebook+"', '"+p_strTwitter+"');"); 
    return bHasFailed;
    }
    
}
