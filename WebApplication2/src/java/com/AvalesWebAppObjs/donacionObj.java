package com.AvalesWebAppObjs;

public class donacionObj 
{
    
    private int ID_donacion;
    private int ID_donante;
    private int Tarjeta;
    private int CVV;
    private int Mes;
    private int Año;
    private int Donacion;
    private String Fecha;
    private String Estado;
    
    public donacionObj(int p_ID_donacion, int p_ID_donante, int p_Tarjeta, int p_CVV, int p_Mes, int p_Año, int p_Donacion, String p_Fecha, String p_Estado) {
        setID_donacion(p_ID_donacion);
        setID_donante(p_ID_donante);
        setTarjeta(p_Tarjeta);
        setCVV(p_CVV);
        setMes(p_Mes);
        setAño(p_Año);
        setDonacion(p_Donacion);
        setFecha(p_Fecha);
        setEstado(p_Estado);
    }

    
    
    public int getID_donacion() {
        return ID_donacion;
    }

    private void setID_donacion(int p_ID_donacion) {
        ID_donacion = p_ID_donacion;
    }

    public int getID_donante() {
        return ID_donante;
    }

    private void setID_donante(int p_ID_donante) {
        ID_donante = p_ID_donante;
    }

    public int getTarjeta() {
        return Tarjeta;
    }

    private void setTarjeta(int p_Tarjeta) {
        Tarjeta = p_Tarjeta;
    }

    public int getCVV() {
        return CVV;
    }

    private void setCVV(int p_CVV) {
        CVV = p_CVV;
    }

    public int getMes() {
        return Mes;
    }

    private void setMes(int p_Mes) {
        Mes = p_Mes;
    }

    public int getAño() {
        return Año;
    }

    private void setAño(int p_Año) {
        Año = p_Año;
    }

    public int getDonacion() {
        return Donacion;
    }

    private void setDonacion(int p_Donacion) {
        Donacion = p_Donacion;
    }
    
    public String getFecha() {
        return Fecha;
    }

    private void setFecha(String p_Fecha) {
        Fecha = p_Fecha;
    }
    
    public String getEstado() {
        return Estado;
    }

    private void setEstado(String p_Estado) {
        Estado = p_Estado;
    }
}
