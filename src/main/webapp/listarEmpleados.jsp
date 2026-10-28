<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Importamos JSTL para poder iterar la lista de empleados recibida del servlet --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Listado de Empleados</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <h2>Información de Todos los Empleados</h2>
    <hr>

    <table border="1">
        <thead>
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Sexo</th>
                <th>Categoría</th>
                <th>Años Trabajados</th>
            </tr>
        </thead>
        <tbody>
            <!-- Recorremos la lista 'empleados' que envió el ListarEmpleadosController -->
            <c:forEach var="emp" items="${empleados}">
                <tr>
                    <td>${emp.dni}</td>
                    <td>${emp.nombre}</td>
                    <td>${emp.sexo}</td>
                    <td>${emp.categoria}</td>
                    <td>${emp.anyosTrabajados}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<c:if test="${empty empleados}">
    <p style="color: orange; font-weight: bold;">No hay ningún empleado registrado en la base de datos actualmente.</p>
</c:if>

    <br><br>
    <!-- Botón volver obligatorio al menú principal -->
    <a href="index.jsp"><button>Volver al Menú Principal</button></a>
</body>
</html>