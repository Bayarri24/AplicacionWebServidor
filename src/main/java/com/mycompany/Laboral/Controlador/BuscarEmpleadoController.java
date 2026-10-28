package com.mycompany.Laboral.Controlador;

import com.mycompany.Laboral.DBUtils.DBUtils;
import com.mycompany.Laboral.DAO.EmpleadoDAO;
import com.mycompany.Laboral.Modelo.*;
import com.mycompany.Laboral.Exceptions.DatosNoCorrectosException;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/buscarEmpleado")
public class BuscarEmpleadoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recogemos el texto introducido en el formulario
        String criterio = request.getParameter("criterio");

        try (Connection conn = DBUtils.getConnection()) {
            EmpleadoDAO dao = new EmpleadoDAO(conn);

            // Llamamos al método de búsqueda por criterio que creamos en el DAO
            List<Empleado> listaEmpleados = dao.buscarEmpleadosPorCriterio(criterio);

            // Adjuntamos la lista y el criterio al request
            request.setAttribute("empleados", listaEmpleados);
            request.setAttribute("criterioBuscado", criterio);

            // Redirigimos a la vista JSP de resultados
            request.getRequestDispatcher("resultadoBusquedaEmpleado.jsp").forward(request, response);

        } catch (SQLException | DatosNoCorrectosException e) {
            throw new ServletException("Error al buscar empleados: " + e.getMessage(), e);
        }
    }
}