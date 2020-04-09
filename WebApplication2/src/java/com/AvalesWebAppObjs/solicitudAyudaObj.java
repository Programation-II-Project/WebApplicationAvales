package com.AvalesWebAppObjs;

public class solicitudAyudaObj 
{
    private int idSolicitud;
    private int idUser;
    private String proyecto;
    private String descripcion;
    private String fecha;
    private String aprobacion;

    public solicitudAyudaObj(int p_idSolicitud, int p_idUser, String p_proyecto, String p_descripcion, String p_fecha, String p_aprobacion) {
        setIdSolicitud(p_idSolicitud);
        setIdUser(p_idUser);
        setProyecto(p_proyecto);
        setDescripcion(p_descripcion);
        setFecha(p_fecha);
        setAprobacion(p_aprobacion);
    }

    
    public int getIdSolicitud() {
        return idSolicitud;
    }

    private void setIdSolicitud(int p_idSolicitud) {
        idSolicitud = p_idSolicitud;
    }

    public int getIdUser() {
        return idUser;
    }

    private void setIdUser(int p_idUser) {
        idUser = p_idUser;
    }

    public String getProyecto() {
        return proyecto;
    }

    private void setProyecto(String p_proyecto) {
        proyecto = p_proyecto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    private void setDescripcion(String p_descripcion) {
        descripcion = p_descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    private void setFecha(String p_fecha) {
        fecha = p_fecha;
    }
    
    public String getAprobacion() {
        return aprobacion;
    }

    private void setAprobacion(String p_aprobacion) {
        aprobacion = p_aprobacion;
    }
}
