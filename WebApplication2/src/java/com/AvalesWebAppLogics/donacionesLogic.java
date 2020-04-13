package com.AvalesWebAppLogics;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.AvalesWebAppObjs.donacionObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.util.logging.Level;

public class donacionesLogic extends Logic
{
    public List<donacionObj> getAllDonationsByUserID(int p_idUser) 
    {
        ArrayList<donacionObj> totalDonacion = null;
        DatabaseX database = getDatabase();
        
        ResultSet CResult = database.executeQuery("SELECT * "
                + "FROM proyecto.donaciones where IDdonante ="+p_idUser+";");
        
        if(CResult!=null)
        {
            int ID_donacion;
            int ID_donante;
            int Tarjeta;
            int CVV;
            int Mes;
            int Año;
            int Donacion;
            String Fecha_donacion;
            String Estado;
            donacionObj CTemp;
            totalDonacion = new ArrayList<>();
            
            try {
                while(CResult.next())
                {
                    ID_donacion = CResult.getInt("IDdonacion");
                    ID_donante = CResult.getInt("IDdonante");
                    Tarjeta = CResult.getInt("NumeroTarjeta");
                    CVV = CResult.getInt("CVV");
                    Mes = CResult.getInt("Mes");
                    Año = CResult.getInt("Año");
                    Donacion = CResult.getInt("Donacion");
                    Fecha_donacion = CResult.getString("Fecha_Donacion");
                    Estado = CResult.getString("Estado");
                    
                    CTemp = new donacionObj(ID_donacion,ID_donante,Tarjeta,CVV,Mes,Año,Donacion,Fecha_donacion,Estado);
                    totalDonacion.add(CTemp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ayudaLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return totalDonacion;
    }

    public boolean InsertDonation(int id, int Tarjeta, int CVV, int Mes, int Anno, double Donacion) 
    {
    boolean insertHasFailed;
    DatabaseX database = getDatabase();
    insertHasFailed = database.executeNonQueryBool("INSERT INTO proyecto.donaciones"
        + "(IDdonacion, IDdonante, NumeroTarjeta, CVV, Mes, Año, Donacion, Fecha_Donacion) "
        + "VALUES(0,'"+id+"','"+Tarjeta+"', '"+CVV+"', '"+Mes+"', '"+Anno+"', '"+Donacion+"', NOW());"); 
    return insertHasFailed;
    }
}
