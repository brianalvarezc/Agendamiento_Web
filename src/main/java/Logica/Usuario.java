/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

/**
 *
 * @author AlvarezCuadros
 */
public class Usuario {
    // Atributos //////////////////////////////////////
    private int usuario_Id;
    private String usuario_Nombre;
    private int usuario_Tipo;
    private String usuario_passw;
    private int usuario_Estado_Id;
    ////////////////////////////////////////////////////////////////////////////
    // Constructores //////////////////////////////////////
    public Usuario() {
    }
    
    public Usuario(String usuario_Nombre, int usuario_Tipo, String usuario_passw, int usuario_Estado_Id) {
        this.usuario_Nombre = usuario_Nombre;
        this.usuario_Tipo = usuario_Tipo;
        this.usuario_passw = usuario_passw;
        this.usuario_Estado_Id = usuario_Estado_Id;
    }

    public Usuario(int usuario_Id, String usuario_Nombre, int usuario_Tipo, String usuario_passw, int usuario_Estado_Id) {
        this.usuario_Id = usuario_Id;
        this.usuario_Nombre = usuario_Nombre;
        this.usuario_Tipo = usuario_Tipo;
        this.usuario_passw = usuario_passw;
        this.usuario_Estado_Id = usuario_Estado_Id;
    }
    
    ////////////////////////////////////////////////////////////////////////////
    // Metodos Get y Set //////////////////////////////////////
    public int getUsuario_Id() {
        return usuario_Id;
    }

    public void setUsuario_Id(int usuario_Id) {
        this.usuario_Id = usuario_Id;
    }

    public String getUsuario_Nombre() {
        return usuario_Nombre;
    }

    public void setUsuario_Nombre(String usuario_Nombre) {
        this.usuario_Nombre = usuario_Nombre;
    }

    public int getUsuario_Tipo() {
        return usuario_Tipo;
    }

    public void setUsuario_Tipo(int usuario_Tipo) {
        this.usuario_Tipo = usuario_Tipo;
    }

    public String getUsuario_passw() {
        return usuario_passw;
    }

    public void setUsuario_passw(String usuario_passw) {
        this.usuario_passw = usuario_passw;
    }

    public int getUsuario_Estado_Id() {
        return usuario_Estado_Id;
    }

    public void setUsuario_Estado_Id(int usuario_Estado_Id) {
        this.usuario_Estado_Id = usuario_Estado_Id;
    }


    ////////////////////////////////////////////////////////////////////////////
    // Metodos de la clase //////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////

    
}
