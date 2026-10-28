package com.mycompany.Laboral.Controlador;

import com.mycompany.Laboral.DBUtils.DBUtils;
import com.mycompany.Laboral.DAO.EmpleadoDAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/buscarSalario")
public class BuscarSalarioController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recogemos el DNI enviado desde el formulario
        String dni = request.getParameter("dni");

        try (Connection conn = DBUtils.getConnection()) {
            EmpleadoDAO dao = new EmpleadoDAO(conn);

            // Llamamos al método del DAO que ya creamos para obtener el sueldo
            double sueldo = dao.obtenerSalarioPorDni(dni);

            // Adjuntamos los datos al request para enviarlos al JSP
            request.setAttribute("dniBuscado", dni);
            request.setAttribute("sueldoEncontrado", sueldo);

            // Redirigimos a la página de resultados
            request.getRequestDispatcher("mostrarSalario.jsp").forward(request, response);

        } catch (SQLException e) {
            throw new ServletException("Error de base de datos al buscar el salario: " + e.getMessage(), e);
        }
    }
}