package com.AvalesWebAppObjs;

public class actividadObj 
{

    private int id_Actividad;
    private String nombre;
    private String descripcion;
    private double costo;
    private String encargado;
    private int anno;
    private int mes;
    private int dia;
    private String foto;

    public actividadObj(int p_id_Actividad, String p_nombre, String p_descripcion, double p_costo, String p_encargado, int p_anno, int p_mes, int p_dia, String p_foto) {
        setId_Actividad(p_id_Actividad);
        setNombre(p_nombre);
        setDescripcion(p_descripcion);
        setCosto(p_costo);
        setEncargado(p_encargado);
        setAnno(p_anno);
        setMes(p_mes);
        setDia(p_dia);
        setFoto(p_foto);
    }

    
    
    public int getId_Actividad() {
        return id_Actividad;
    }

    private void setId_Actividad(int p_id_Actividad) {
        id_Actividad = p_id_Actividad;
    }

    public String getNombre() {
        return nombre;
    }

    private void setNombre(String p_nombre) {
        nombre = p_nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    private void setDescripcion(String p_descripcion) {
        descripcion = p_descripcion;
    }

    public double getCosto() {
        return costo;
    }

    private void setCosto(double p_costo) {
        costo = p_costo;
    }

    public String getEncargado() {
        return encargado;
    }

    private void setEncargado(String p_encargado) {
        encargado = p_encargado;
    }

    public int getAnno() {
        return anno;
    }

    private void setAnno(int p_anno) {
        anno = p_anno;
    }

    public int getMes() {
        return mes;
    }

    private void setMes(int p_mes) {
        mes = p_mes;
    }

    public int getDia() {
        return dia;
    }

    private void setDia(int dia) {
        this.dia = dia;
    }

    public String getFoto() {
        return foto;
    }

    private void setFoto(String foto) {
        this.foto = foto;
    }
    
}
