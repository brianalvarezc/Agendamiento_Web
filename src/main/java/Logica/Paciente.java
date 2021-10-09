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
public class Paciente {
    // Atributos //////////////////////////////////////
    private int paciente_Id;
    private String paciente_Nombre;
    private String paciente_Direccion;
    private int paciente_Telefono;
    private String paciente_Email;
    private String paciente_Foto;
    private int paciente_Estado_Id;
    ////////////////////////////////////////////////////////////////////////////
    // Constructores //////////////////////////////////////
    public Paciente() {
    }
    public Paciente(String paciente_Nombre, String paciente_Direccion, int paciente_Telefono, String paciente_Email, String paciente_Foto, int paciente_Estado_Id) {
        this.paciente_Nombre = paciente_Nombre;
        this.paciente_Direccion = paciente_Direccion;
        this.paciente_Telefono = paciente_Telefono;
        this.paciente_Email = paciente_Email;
        this.paciente_Foto = paciente_Foto;
        this.paciente_Estado_Id = paciente_Estado_Id;
    }

    public Paciente(int paciente_Id, String paciente_Nombre, String paciente_Direccion, int paciente_Telefono, String paciente_Email, String paciente_Foto, int paciente_Estado_Id) {
        this.paciente_Id = paciente_Id;
        this.paciente_Nombre = paciente_Nombre;
        this.paciente_Direccion = paciente_Direccion;
        this.paciente_Telefono = paciente_Telefono;
        this.paciente_Email = paciente_Email;
        this.paciente_Foto = paciente_Foto;
        this.paciente_Estado_Id = paciente_Estado_Id;
    }
    
    ////////////////////////////////////////////////////////////////////////////
    // Metodos Get y Set //////////////////////////////////////
    public int getPaciente_Id() {
        return paciente_Id;
    }

    public void setPaciente_Id(int paciente_Id) {
        this.paciente_Id = paciente_Id;
    }

    public String getPaciente_Nombre() {
        return paciente_Nombre;
    }

    public void setPaciente_Nombre(String paciente_Nombre) {
        this.paciente_Nombre = paciente_Nombre;
    }

    public String getPaciente_Direccion() {
        return paciente_Direccion;
    }

    public void setPaciente_Direccion(String paciente_Direccion) {
        this.paciente_Direccion = paciente_Direccion;
    }

    public int getPaciente_Telefono() {
        return paciente_Telefono;
    }

    public void setPaciente_Telefono(int paciente_Telefono) {
        this.paciente_Telefono = paciente_Telefono;
    }

    public String getPaciente_Email() {
        return paciente_Email;
    }

    public void setPaciente_Email(String paciente_Email) {
        this.paciente_Email = paciente_Email;
    }

    public String getPaciente_Foto() {
        return paciente_Foto;
    }

    public void setPaciente_Foto(String paciente_Foto) {
        this.paciente_Foto = paciente_Foto;
    }

    public int getPaciente_Estado_Id() {
        return paciente_Estado_Id;
    }

    public void setPaciente_Estado_Id(int paciente_Estado_Id) {
        this.paciente_Estado_Id = paciente_Estado_Id;
    }
    ////////////////////////////////////////////////////////////////////////////
    // Metodos de la clase //////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////

    


}
