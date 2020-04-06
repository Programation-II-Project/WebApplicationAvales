package com.AvalesWebAppObjs;

public class nuevoCargoObj 
{
    private int iD;
    private int iDempresa;
    private String cargo;
    private String jefe;
    private String telefono_trabajo;

    
    
    public nuevoCargoObj(int p_iD, int p_iDempresa, String p_cargo, String p_jefe, String p_telefono_trabajo) {
        setiD(p_iD);
        setiDempresa(p_iDempresa);
        setCargo(p_cargo);
        setJefe(p_jefe);
        setTelefono_trabajo(p_telefono_trabajo);
    }

    
    
    public int getiD() {
        return iD;
    }

    private void setiD(int p_iD) {
        iD = p_iD;
    }

    public int getiDempresa() {
        return iDempresa;
    }

    private void setiDempresa(int p_iDempresa) {
        iDempresa = p_iDempresa;
    }

    public String getCargo() {
        return cargo;
    }

    private void setCargo(String p_cargo) {
        cargo = p_cargo;
    }

    public String getJefe() {
        return jefe;
    }

    private void setJefe(String p_jefe) {
        jefe = p_jefe;
    }

    public String getTelefono_trabajo() {
        return telefono_trabajo;
    }

    private void setTelefono_trabajo(String p_telefono_trabajo) {
        telefono_trabajo = p_telefono_trabajo;
    }
    
    
}
