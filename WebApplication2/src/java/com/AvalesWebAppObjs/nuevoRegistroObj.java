
package com.AvalesWebAppObjs;


public class nuevoRegistroObj 
{
    
    private String nombre;
    private String telefono_casa;
    private String celular;
    private String profesion;
    private String direccion;
    private String fecha;
    private String estado_civil;
    private String email;
    private int familia;
    private int iglesia;
    private int gobierno;
    private int mc;
    private int economia;
    private int arte;
    private String facebook;
    private String twitter;

    public nuevoRegistroObj(String p_nombre, String p_telefono_casa, String p_celular, String p_profesion, String p_direccion, 
            String p_fecha, String p_estado_civil, String p_email, int p_familia, int p_iglesia, int p_gobierno, int p_mc, int p_economia, 
            int p_arte, String p_facebook, String p_twitter) 
    {
        
        setNombre(p_nombre);
        setTelefono_casa(p_telefono_casa);
        setCelular(p_celular);
        setProfesion(p_profesion);
        setDireccion(p_direccion);
        setFecha(p_fecha);
        setEstado_civil(p_estado_civil);
        setEmail(p_email);
        setFamilia(p_familia);
        setIglesia(p_iglesia);
        setGobierno(p_gobierno);
        setMc(p_mc);
        setEconomia(p_economia);
        setArte(p_arte);
        setFacebook(p_facebook);
        setTwitter(p_twitter);
    }

    
    
    public String getNombre() {
        return nombre;
    }

    private void setNombre(String p_nombre) {
        nombre = p_nombre;
    }

    public String getTelefono_casa() {
        return telefono_casa;
    }

    private void setTelefono_casa(String p_telefono_casa) {
        telefono_casa = p_telefono_casa;
    }

    public String getCelular() {
        return celular;
    }

    private void setCelular(String p_celular) {
        celular = p_celular;
    }

    public String getProfesion() {
        return profesion;
    }

    private void setProfesion(String p_profesion) {
        profesion = p_profesion;
    }

    public String getDireccion() {
        return direccion;
    }

    private void setDireccion(String p_direccion) {
        direccion = p_direccion;
    }

    public String getFecha() {
        return fecha;
    }

    private void setFecha(String p_fecha) {
        fecha = p_fecha;
    }

    public String getEstado_civil() {
        return estado_civil;
    }

    private void setEstado_civil(String p_estado_civil) {
        estado_civil = p_estado_civil;
    }

    public String getEmail() {
        return email;
    }

    private void setEmail(String p_email) {
       email = p_email;
    }

    public int getFamilia() {
        return familia;
    }

    private void setFamilia(int p_familia) {
        familia = p_familia;
    }

    public int getIglesia() {
        return iglesia;
    }

    private void setIglesia(int p_iglesia) {
        iglesia = p_iglesia;
    }

    public int getGobierno() {
        return gobierno;
    }

    private void setGobierno(int p_gobierno) {
        gobierno = p_gobierno;
    }

    public int getMc() {
        return mc;
    }

    private void setMc(int p_mc) {
        mc = p_mc;
    }

    public int getEconomia() {
        return economia;
    }

    private void setEconomia(int p_economia) {
        economia = p_economia;
    }

    public int getArte() {
        return arte;
    }

    private void setArte(int p_arte) {
        arte = p_arte;
    }

    public String getFacebook() {
        return facebook;
    }

    private void setFacebook(String p_facebook) {
        facebook = p_facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    private void setTwitter(String p_twitter) {
        twitter = p_twitter;
    }
    
    
}
