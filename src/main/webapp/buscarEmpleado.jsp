<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buscar Empleado</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"></head>
<body>
    <h2>Búsqueda de Empleados</h2>
    <p>Introduce un criterio (DNI o Nombre) para buscar en la base de datos:</p>

    <!-- Formulario que envía el criterio por GET al servlet -->
    <form action="buscarEmpleado" method="GET">
        <label for="criterio">Criterio de búsqueda:</label>
        <input type="text" id="criterio" name="criterio" required>
        <button type="submit">Buscar Empleados</button>
    </form>

 <!-- Error si lo hubiera -->
    <c:if test="${not empty error}">
        <p style="color: red; font-weight: bold;"><c:out value="${error}"/></p>
    </c:if>

    <br>
    <!-- Botón volver obligatorio -->
    <a href="index.jsp"><button>Volver al Menú Principal</button></a>
</body>
</html>