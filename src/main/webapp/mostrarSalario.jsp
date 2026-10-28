<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Salario del Empleado</title>
</head>
<body>
    <h2>Resultado de la Consulta de Salario</h2>

    <table border="1">
        <thead>
            <tr>
                <th>DNI del Empleado</th>
                <th>Salario Calculado</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${dniBuscado}</td>
                <td>${sueldoEncontrado} €</td>
            </tr>
        </tbody>
    </table>

    <br>
    <a href="buscarSalario.jsp"><button>Consultar otro DNI</button></a>
    <br><br>
    <!-- Botón volver  -->
    <a href="index.jsp"><button>Volver al Menú Principal</button></a>
</body>
</html>