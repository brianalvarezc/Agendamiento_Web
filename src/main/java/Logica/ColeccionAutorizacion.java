/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.AutorizacionDAO;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class ColeccionAutorizacion {
    // Se declara el array que contendra la coleccion
    private ArrayList<Autorizacion> lista_autorizaciones;
    // Metodo para devolver la lista para poderla presentar
    public ArrayList<Autorizacion> getLista(){
        return lista_autorizaciones;
    }
    
    public boolean cargarAutorizaciones(){
        AutorizacionDAO autorizacionDAO = new AutorizacionDAO();
        lista_autorizaciones = autorizacionDAO.consultarAutorizacion();
        if(lista_autorizaciones.size() > 0){
            return true;
        }
        else{
            return false;
        }
    }
    //////////////////////////////////////////
    public boolean guardarAutorizacion(Autorizacion a){
        AutorizacionDAO a_dao = new AutorizacionDAO();
        int id = a_dao.crearAutorizacion(a);
        if(id > 0){
            return true;
        }
        else{
            return false;
        }
    }
}
