package com.AvalesWebAppObjs;

public class nuevaEmpresaObj 
{
    private int iDempresa;
    private String nombre_empresa;
    private String lugar_empresa;

    
    
    public nuevaEmpresaObj(int p_iDempresa, String p_nombre_empresa, String p_lugar_empresa) {
        setiDempresa(p_iDempresa);
        setNombre_empresa(p_nombre_empresa);
        setLugar_empresa(p_lugar_empresa);
    }

    
    
    public int getiDempresa() {
        return iDempresa;
    }

    private void setiDempresa(int p_iDempresa) {
        iDempresa = p_iDempresa;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    private void setNombre_empresa(String p_nombre_empresa) {
        nombre_empresa = p_nombre_empresa;
    }

    public String getLugar_empresa() {
        return lugar_empresa;
    }

    private void setLugar_empresa(String p_lugar_empresa) {
        lugar_empresa = p_lugar_empresa;
    }
    
    
}
