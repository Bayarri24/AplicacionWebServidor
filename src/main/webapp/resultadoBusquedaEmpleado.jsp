<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Resultados de la Búsqueda</title>
</head>
<body>
    <h2>Resultados para la búsqueda: "${criterioBuscado}"</h2>

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
            <!-- Recorremos la lista -->
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

    <br>
    <a href="buscarEmpleado.jsp"><button>Realizar otra búsqueda</button></a>
    <br><br>

    <!-- Botón volver obligatorio -->
    <a href="index.jsp"><button>Volver al Menú Principal</button></a>
</body>
</html>