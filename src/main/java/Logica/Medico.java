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
public class Medico {
    // Atributos //////////////////////////////////////
    private int medico_Id;
    private String medico_Nombre;
    private String medico_RegistroMedico;
    private String medico_Email;
    private int medico_Telefono;
    private String medico_Foto;
    private int medico_Estado_Id;
    ////////////////////////////////////////////////////////////////////////////
    // Constructores //////////////////////////////////////
    public Medico() {
    }
    public Medico(String medico_Nombre, String medico_RegistroMedico, String medico_Email, int medico_Telefono, String medico_Foto, int medico_Estado_Id) {
        this.medico_Nombre = medico_Nombre;
        this.medico_RegistroMedico = medico_RegistroMedico;
        this.medico_Email = medico_Email;
        this.medico_Telefono = medico_Telefono;
        this.medico_Foto = medico_Foto;
        this.medico_Estado_Id = medico_Estado_Id;
    }

    public Medico(int medico_Id, String medico_Nombre, String medico_RegistroMedico, String medico_Email, int medico_Telefono, String medico_Foto, int medico_Estado_Id) {
        this.medico_Id = medico_Id;
        this.medico_Nombre = medico_Nombre;
        this.medico_RegistroMedico = medico_RegistroMedico;
        this.medico_Email = medico_Email;
        this.medico_Telefono = medico_Telefono;
        this.medico_Foto = medico_Foto;
        this.medico_Estado_Id = medico_Estado_Id;
    }
    
    ////////////////////////////////////////////////////////////////////////////
    // Metodos Get y Set //////////////////////////////////////
    public int getMedico_Id() {
        return medico_Id;
    }

    public void setMedico_Id(int medico_Id) {
        this.medico_Id = medico_Id;
    }

    public String getMedico_Nombre() {
        return medico_Nombre;
    }

    public void setMedico_Nombre(String medico_Nombre) {
        this.medico_Nombre = medico_Nombre;
    }

    public String getMedico_RegistroMedico() {
        return medico_RegistroMedico;
    }

    public void setMedico_RegistroMedico(String medico_RegistroMedico) {
        this.medico_RegistroMedico = medico_RegistroMedico;
    }

    public String getMedico_Email() {
        return medico_Email;
    }

    public void setMedico_Email(String medico_Email) {
        this.medico_Email = medico_Email;
    }

    public int getMedico_Telefono() {
        return medico_Telefono;
    }

    public void setMedico_Telefono(int medico_Telefono) {
        this.medico_Telefono = medico_Telefono;
    }

    public String getMedico_Foto() {
        return medico_Foto;
    }

    public void setMedico_Foto(String medico_Foto) {
        this.medico_Foto = medico_Foto;
    }
    
    public int getMedico_Estado_Id() {
        return medico_Estado_Id;
    }

    public void setMedico_Estado_Id(int medico_Estado_Id) {
        this.medico_Estado_Id = medico_Estado_Id;
    }
    ////////////////////////////////////////////////////////////////////////////
    // Metodos de la clase //////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////



    


}
