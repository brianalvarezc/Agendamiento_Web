/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.CitaDAO;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class ColeccionCita {
    // Se declara el array que contendra la coleccion
    private ArrayList<Cita> lista_citas;
    
    // Metodo para devolver la lista para poderla presentar
    public ArrayList<Cita> getLista(){
        return lista_citas;
    }
    
    public boolean cargarCitas(){
        CitaDAO CitaDAO = new CitaDAO();
        lista_citas = CitaDAO.consultarCita();
        if(lista_citas.size() > 0){
            return true;
        }
        else{
            return false;
        }
    }
    //////////////////////////////////////////
    public boolean guardarCita(Cita c){
        CitaDAO c_dao = new CitaDAO();
        int id = c_dao.crearCita(c);
        if(id > 0){
            return true;
        }
        else{
            return false;
        }
    }
    
}
