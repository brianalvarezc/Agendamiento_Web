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
public class Consultorio {
    // Atributos //////////////////////////////////////
  private int consultorio_Id;
  private String consultorio_Nombre;
  private String consultorio_Ubicacion;
  private int consultorio_Estado_Id;
  ////////////////////////////////////////////////////////////////////////////
  // Constructores//////////////////////////////////////

    public Consultorio() {
    }

    public Consultorio(String consultorio_Nombre, String consultorio_Ubicacion, int consultorio_Estado_Id) {
        this.consultorio_Nombre = consultorio_Nombre;
        this.consultorio_Ubicacion = consultorio_Ubicacion;
        this.consultorio_Estado_Id = consultorio_Estado_Id;
    }

    public Consultorio(int consultorio_Id, String consultorio_Nombre, String consultorio_Ubicacion, int consultorio_Estado_Id) {
        this.consultorio_Id = consultorio_Id;
        this.consultorio_Nombre = consultorio_Nombre;
        this.consultorio_Ubicacion = consultorio_Ubicacion;
        this.consultorio_Estado_Id = consultorio_Estado_Id;
    }
    ////////////////////////////////////////////////////////////////////////////
    // Metodos Get y Set //////////////////////////////////////

    public int getConsultorio_Id() {
        return consultorio_Id;
    }

    public void setConsultorio_Id(int consultorio_Id) {
        this.consultorio_Id = consultorio_Id;
    }

    public String getConsultorio_Nombre() {
        return consultorio_Nombre;
    }

    public void setConsultorio_Nombre(String consultorio_Nombre) {
        this.consultorio_Nombre = consultorio_Nombre;
    }

    public String getConsultorio_Ubicacion() {
        return consultorio_Ubicacion;
    }

    public void setConsultorio_Ubicacion(String consultorio_Ubicacion) {
        this.consultorio_Ubicacion = consultorio_Ubicacion;
    }

    public int getConsultorio_Estado_Id() {
        return consultorio_Estado_Id;
    }

    public void setConsultorio_Estado_Id(int consultorio_Estado_Id) {
        this.consultorio_Estado_Id = consultorio_Estado_Id;
    }
    ////////////////////////////////////////////////////////////////////////////
    // Metodos de la clase//////////////////////////////////////
    
    
    ////////////////////////////////////////////////////////////////////////////

}

