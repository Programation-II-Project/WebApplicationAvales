package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.Admin;
import com.AvalesWebAppObjs.nuevoRegistroObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class registerLogic extends Logic
{

    public nuevoRegistroObj getUserInfo(String p_email, String p_password) 
    {
         nuevoRegistroObj Info = null;
         DatabaseX database = getDatabase();
         ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.registros where Email like '"+p_email+"' and Password like '"+p_password+"';");
         
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
                int educacion;
                int economia;
                int arte;
                String facebook;
                String twitter;
                String password;
                
                
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
                iglesia = CResult.getInt("Iglesia");
                gobierno = CResult.getInt("Gobierno");
                mc = CResult.getInt("MC");
                educacion = CResult.getInt("Educacion");
                economia = CResult.getInt("Economia");
                arte = CResult.getInt("Artes");
                facebook = CResult.getString("Facebook");
                twitter = CResult.getString("Twitter");
                password = CResult.getString("password");

                
                Info = new nuevoRegistroObj(id,nombre,telefono_casa,celular,profesion,direccion,fecha,estado_civil,
                     email,familia,iglesia,gobierno,mc,educacion,economia,arte,facebook,twitter,password);

                
                }
             } 
             catch (SQLException ex) 
             {
                 Logger.getLogger(registerLogic.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         return Info;
    }

    
    
    public boolean insertRegister(String p_strNombre, String p_strTelefonoCasa, String p_strCelular, String p_strProfesion, String p_strDireccion, String p_strFecha, String p_strEstatus, 
                                String p_strEmail, int p_intFamilia, int p_intIglesia, int p_intGobierno, int p_intMc, int p_intEducacion, int p_intEconomia, int p_intArtes, String p_strFacebook, String p_strTwitter, String p_password) 
    {
    boolean bHasFailed;
    DatabaseX database = getDatabase();
    bHasFailed = database.executeNonQueryBool("INSERT INTO proyecto.registros"
            + "(ID, Nombre, Telefono_Casa, Celular, Profesion, Direccion, Fecha_Nacimiento, Estado_Civil, Email, Familia, Iglesia, Gobierno, MC, Educacion, Economia, Artes, Facebook, Twitter, Password) "
            + "VALUES(0,'"+p_strNombre+"','"+p_strTelefonoCasa+"', '"+p_strCelular+"', '"+p_strProfesion+"', '"+p_strDireccion+"', '"+p_strFecha+"', '"+p_strEstatus+"', '"+p_strEmail+"', "+p_intFamilia+", "+p_intIglesia+", "+p_intGobierno+", "+p_intMc+","+p_intEducacion+", "+p_intEconomia+", "+p_intArtes+", '"+p_strFacebook+"', '"+p_strTwitter+"', '"+p_password+"');"); 
    return bHasFailed;
    }

    
    public Admin getAdminInfo(String padmin_username, String padmin_password) 
    {
         Admin admin = null;
         DatabaseX database = getDatabase();
         ResultSet CResult = database.executeQuery("SELECT * FROM proyecto.registrosadmin where Username like '"+padmin_username+"' and Password like '"+padmin_password+"';");
         
         if(CResult!=null)
         {
             try {
                int id;
                String username;
                String password;
                
                
                while(CResult.next())
                {
                id = CResult.getInt("ID");
                username = CResult.getString("Username");
                password = CResult.getString("Password");

                admin = new Admin(id,username,password);
                
                }
             } 
             catch (SQLException ex) 
             {
                 Logger.getLogger(registerLogic.class.getName()).log(Level.SEVERE, null, ex);
             }
         }
         return admin;
    }

    
}
