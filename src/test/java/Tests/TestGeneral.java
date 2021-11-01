/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tests;

import org.testng.Assert;
import Logica.*;
import Persistencia.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.testng.annotations.Test;
import org.testng.annotations.Ignore;
/**
 *
 * @author AlvarezCuadros
 */
public class TestGeneral {
    
    
    @Test
    public void verificarConexion(){
        ConexionBD conexion = new ConexionBD();
        Assert.assertTrue(conexion.isConectado(), "No hay conexion creada");
        conexion.desconectar();
        Assert.assertFalse(conexion.isConectado(), "No se cerró la conexion");
    }
    
    //@Test
    //En este espacio se coloca el metodo void que verifica que el metodo seleccionado a probar
    
    @Test
    public void verificarConsultaAutorizaciones(){
        AutorizacionDAO dao = new AutorizacionDAO();
        Assert.assertTrue(dao.consultarAutorizacion().size() > 0, "No se cargaron los datos");
        
    }
    
    @Test
    public void verificarCreaciondeObjetoDesdeFormulario(){
        // Para formularion de autorizacion
        String autorizacion_Paciente_Id = "7";
        String autorizacion_Entidad_Id = "1";
        String autorizacion_Fecha = "2020-10-10";
        String autorizacion_Estado_Id = "1";

        Autorizacion a = new Autorizacion();///// COMPLETAR!!!!!
        a.setAutorizacion_Entidad_Id(Integer.parseInt(autorizacion_Entidad_Id));
        a.setAutorizacion_Paciente_Id(Integer.parseInt(autorizacion_Paciente_Id)); /// ERROR! ////////
        a.setAutorizacion_Fecha(autorizacion_Fecha);
        a.setAutorizacion_Estado_Id(Integer.parseInt(autorizacion_Estado_Id));
        Assert.assertTrue(a.getAutorizacion_Paciente_Id() == 7, "No se creo el objeto");
    }
    
    
    
}
