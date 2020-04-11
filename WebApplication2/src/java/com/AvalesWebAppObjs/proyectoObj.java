package com.AvalesWebAppObjs;

public class proyectoObj 
{
    private int ID;
    private String NombreProyecto;
    private String Descripcion;
    private String Lugar;
    private String Foto;
    private String Video;

    public proyectoObj(int p_ID, String p_NombreProyecto, String p_Descripcion, String p_Lugar, String p_Foto, String p_Video) 
    {
        setID(p_ID);
        setNombreProyecto(p_NombreProyecto);
        setDescripcion(p_Descripcion);
        setLugar(p_Lugar);
        setFoto(p_Foto);
        setVideo(p_Video);
    }

    
    
    public int getID() {
        return ID;
    }

    private void setID(int p_ID) {
        ID = p_ID;
    }

    public String getNombreProyecto() {
        return NombreProyecto;
    }

    private void setNombreProyecto(String p_NombreProyecto) {
        NombreProyecto = p_NombreProyecto;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    private void setDescripcion(String p_Descripcion) {
        Descripcion = p_Descripcion;
    }

    public String getLugar() {
        return Lugar;
    }

    private void setLugar(String p_Lugar) {
        Lugar = p_Lugar;
    }

    public String getFoto() {
        return Foto;
    }

    private void setFoto(String p_Foto) {
        Foto = p_Foto;
    }

    public String getVideo() {
        return Video;
    }

    private void setVideo(String p_Video) {
        Video = p_Video;
    }
    
    
    
}
