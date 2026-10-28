<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buscar Salario por DNI</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
    <h2>Consultar Salario de Empleado</h2>

    <!-- Formulario que envía el DNI por método GET al servlet -->
    <form action="buscarSalario" method="GET">
        <label for="dni">Introduce el DNI del empleado:</label>
        <input type="text" id="dni" name="dni" required>
        <button type="submit">Consultar Salario</button>
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