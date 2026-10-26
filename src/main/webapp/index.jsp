<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gestión de Empresa - Menú Principal</title>
</head>
<body>
    <h1>Sistema de Gestión de Empleados y Nóminas</h1>
    <hr>
    <h3>Menú de Opciones:</h3>
    <ul>
        <!-- Listar a los empleados -->
        <li><a href="listarEmpleados">Mostrar la información de todos los empleados</a></li>

        <!-- Búsqueda por DNI -->
        <li><a href="buscarSalario.jsp">Mostrar el salario de un empleado</a></li>

        <!-- Redirige al formulario de búsqueda de empleados -->
        <li><a href="buscarEmpleado.jsp">Modificar / Buscar datos de un empleado</a></li>
    </ul>
</body>
</html>