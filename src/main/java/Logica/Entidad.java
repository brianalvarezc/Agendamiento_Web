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
public class Entidad {
    // Atributos //////////////////////////////////////
    private int entidad_Id;
    private String entidad_Nombre;
    private int entidad_Estado_Id;
    private String entidad_Direccion;
    private int entidad_Telefono;
    private int entidad_Tarifa;
    ////////////////////////////////////////////////////////////////////////////
    // Constructores //////////////////////////////////////
    public Entidad() {
    }
    public Entidad(String entidad_Nombre, int entidad_Estado_Id, String entidad_Direccion, int entidad_Telefono, int entidad_Tarifa) {
        this.entidad_Nombre = entidad_Nombre;
        this.entidad_Estado_Id = entidad_Estado_Id;
        this.entidad_Direccion = entidad_Direccion;
        this.entidad_Telefono = entidad_Telefono;
        this.entidad_Tarifa = entidad_Tarifa;
    }

    public Entidad(int entidad_Id, String entidad_Nombre, int entidad_Estado_Id, String entidad_Direccion, int entidad_Telefono, int entidad_Tarifa) {
        this.entidad_Id = entidad_Id;
        this.entidad_Nombre = entidad_Nombre;
        this.entidad_Estado_Id = entidad_Estado_Id;
        this.entidad_Direccion = entidad_Direccion;
        this.entidad_Telefono = entidad_Telefono;
        this.entidad_Tarifa = entidad_Tarifa;
    }
    
    ////////////////////////////////////////////////////////////////////////////
    // Metodos Get y Set //////////////////////////////////////
    public int getEntidad_Id() {
        return entidad_Id;
    }

    public void setEntidad_Id(int entidad_Id) {
        this.entidad_Id = entidad_Id;
    }

    public String getEntidad_Nombre() {
        return entidad_Nombre;
    }

    public void setEntidad_Nombre(String entidad_Nombre) {
        this.entidad_Nombre = entidad_Nombre;
    }

    public int getEntidad_Estado_Id() {
        return entidad_Estado_Id;
    }

    public void setEntidad_Estado_Id(int entidad_Estado_Id) {
        this.entidad_Estado_Id = entidad_Estado_Id;
    }

    public String getEntidad_Direccion() {
        return entidad_Direccion;
    }

    public void setEntidad_Direccion(String entidad_Direccion) {
        this.entidad_Direccion = entidad_Direccion;
    }

    public int getEntidad_Telefono() {
        return entidad_Telefono;
    }

    public void setEntidad_Telefono(int entidad_Telefono) {
        this.entidad_Telefono = entidad_Telefono;
    }

    public int getEntidad_Tarifa() {
        return entidad_Tarifa;
    }

    public void setEntidad_Tarifa(int entidad_Tarifa) {
        this.entidad_Tarifa = entidad_Tarifa;
    }
    ////////////////////////////////////////////////////////////////////////////
    // Metodos de la clase //////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////

    


}
