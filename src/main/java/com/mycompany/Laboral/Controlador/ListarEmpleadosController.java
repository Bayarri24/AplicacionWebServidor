package com.mycompany.Laboral.Controlador;

import com.mycompany.Laboral.DBUtils.DBUtils;
import com.mycompany.Laboral.DAO.EmpleadoDAO;
import com.mycompany.Laboral.Exceptions.DatosNoCorrectosException;
import com.mycompany.Laboral.Modelo.Empleado;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/listarEmpleados")
public class ListarEmpleadosController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try (Connection conn = DBUtils.getConnection()) {
            EmpleadoDAO dao = new EmpleadoDAO(conn);

            // Obtenemos la lista de empleados
            List<Empleado> listaEmpleados = dao.obtenerTodosLosEmpleados();


            // Adjuntamos la lista al request para enviarla a la vista JSP
            request.setAttribute("empleados", listaEmpleados);

            // Redirigimos la petición a la página JSP que pintará la tabla
            request.getRequestDispatcher("listarEmpleados.jsp").forward(request, response);

        } catch (SQLException | DatosNoCorrectosException e) {
            // Si ocurre algún error, lo mandamos como error de Servlet
            throw new ServletException("Error al listar los empleados: " + e.getMessage(), e);
        }
    }
}