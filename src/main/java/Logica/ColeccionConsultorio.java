/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ConsultorioDAO;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class ColeccionConsultorio {
    // Se declara el array que contendra la coleccion
    private ArrayList<Consultorio> lista_consultorios;
    // Metodo para devolver la lista para poderla presentar
    public ArrayList<Consultorio> getLista(){
        return lista_consultorios;
    }
    
    public boolean cargarConsultorios(){
        ConsultorioDAO c_dao = new ConsultorioDAO();
        lista_consultorios = c_dao.consultarConsultorio();
        if(lista_consultorios.size() > 0){
            return true;
        }
        else{
            return false;
        }
    }
    //////////////////////////////////////////
    public boolean guardarConsultorio(Consultorio c){
        ConsultorioDAO c_dao = new ConsultorioDAO();
        int id = c_dao.crearConsultorio(c);
        if(id > 0){
            return true;
        }
        else{
            return false;
        }
    }
    
}