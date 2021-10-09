/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.AutorizacionDAO;

/**
 *
 * @author AlvarezCuadros
 */
public class Autorizacion {
        
    // Atributos ////////////////////////////////////////
    private int autorizacion_Id;
    private int autorizacion_Entidad_Id;
    private String autorizacion_Entidad_Nombre;
    private int autorizacion_Paciente_Id;
    private String autorizacion_Paciente_Nombre;
    private String autorizacion_Fecha;
    private String autorizacion_Estado_Nombre;
    private int autorizacion_Estado_Id;
    
    // Constructores ////////////////////////////////////////

    public Autorizacion() {
    }

    public Autorizacion(String autorizacion_Entidad_Nombre, String autorizacion_Paciente_Nombre, String autorizacion_Fecha, String autorizacion_Estado_Nombre) {
        this.autorizacion_Entidad_Nombre = autorizacion_Entidad_Nombre;
        this.autorizacion_Paciente_Nombre = autorizacion_Paciente_Nombre;
        this.autorizacion_Fecha = autorizacion_Fecha;
        this.autorizacion_Estado_Nombre = autorizacion_Estado_Nombre;
    }

    public Autorizacion(int autorizacion_Id, String autorizacion_Entidad_Nombre, String autorizacion_Paciente_Nombre, String autorizacion_Fecha, String autorizacion_Estado_Nombre) {
        this.autorizacion_Id = autorizacion_Id;
        this.autorizacion_Entidad_Nombre = autorizacion_Entidad_Nombre;
        this.autorizacion_Paciente_Nombre = autorizacion_Paciente_Nombre;
        this.autorizacion_Fecha = autorizacion_Fecha;
        this.autorizacion_Estado_Nombre = autorizacion_Estado_Nombre;
    }
    
    // get y set ////////////////////////////////////////
    
    public int getAutorizacion_Id() {
        return autorizacion_Id;
    }

    public void setAutorizacion_Id(int autorizacion_Id) {
        this.autorizacion_Id = autorizacion_Id;
    }

    public int getAutorizacion_Entidad_Id() {
        return autorizacion_Entidad_Id;
    }

    public void setAutorizacion_Entidad_Id(int autorizacion_Entidad_Id) {
        this.autorizacion_Entidad_Id = autorizacion_Entidad_Id;
    }

    public String getAutorizacion_Entidad_Nombre() {
        return autorizacion_Entidad_Nombre;
    }

    public void setAutorizacion_Entidad_Nombre(String autorizacion_Entidad_Nombre) {
        this.autorizacion_Entidad_Nombre = autorizacion_Entidad_Nombre;
    }

    public int getAutorizacion_Paciente_Id() {
        return autorizacion_Paciente_Id;
    }

    public void setAutorizacion_Paciente_Id(int autorizacion_Paciente_Id) {
        this.autorizacion_Paciente_Id = autorizacion_Paciente_Id;
    }

    public String getAutorizacion_Paciente_Nombre() {
        return autorizacion_Paciente_Nombre;
    }

    public void setAutorizacion_Paciente_Nombre(String autorizacion_Paciente_Nombre) {
        this.autorizacion_Paciente_Nombre = autorizacion_Paciente_Nombre;
    }

    public String getAutorizacion_Fecha() {
        return autorizacion_Fecha;
    }

    public void setAutorizacion_Fecha(String autorizacion_Fecha) {
        this.autorizacion_Fecha = autorizacion_Fecha;
    }

    public String getAutorizacion_Estado_Nombre() {
        return autorizacion_Estado_Nombre;
    }

    public void setAutorizacion_Estado_Nombre(String autorizacion_Estado_Nombre) {
        this.autorizacion_Estado_Nombre = autorizacion_Estado_Nombre;
    }
    
    public int getAutorizacion_Estado_Id() {
        return autorizacion_Estado_Id;
    }

    public void setAutorizacion_Estado_Id(int autorizacion_Estado_Id) {
        this.autorizacion_Estado_Id = autorizacion_Estado_Id;
    }
    
    //////////////////////////////////////////////////////



}
