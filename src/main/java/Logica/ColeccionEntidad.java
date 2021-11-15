/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.EntidadDAO;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class ColeccionEntidad {
    // La coleccion entidad va a trabajar con lista de objetos tipo Entidad, por lo que primero se define un ArrayList
    ArrayList<Entidad> lista_Entidades = new ArrayList<>();
    
    // Luego se define una función que va a devolver la lista de objetos tipo Entidad encontrados en la BD
    public ArrayList<Entidad> getLista(){
        return lista_Entidades;
    }
    
    // se crea la función para consultar la base de datos y devolver un array de objetos tipo entidad para presentar en el frontend
    // para poder devolverla con el metodo getLista();
    public boolean cargarEntidades(){
        // Esta función va a solicitar al objeto DAO que traiga un resultset y lo convierta a lista de objetos
        EntidadDAO e_dao = new EntidadDAO();
        lista_Entidades = e_dao.consultarLista();
        // Luego si hay objetos en el array pues devuelve verdadero o por el contrario, falso
        if(lista_Entidades.size() > 0){
            return true;
        }else{
            return false;
        }
    }
    
    // Otra funcion es la de guardar en la BD un registro del objeto creado Entidad 
    // que recibe un objeto, lo envia a DAO la cantidad de filas afectadas y retorna un boolean
    // con la afirmacion o negacion de la creacion del nuevo registro en la BD
    public boolean crearEntidad(Entidad e){
        EntidadDAO e_dao = new EntidadDAO();
        int filas_afectadas = e_dao.crearEntidad(e);
        return (filas_afectadas > 0)? true: false;
    }
}
