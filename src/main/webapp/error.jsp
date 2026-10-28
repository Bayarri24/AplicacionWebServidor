<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error en la Aplicación</title>
</head>
<body>
    <h2 style="color: red;">¡Ha ocurrido un error!</h2>
    <hr>
    <p>La aplicación ha fallado..</p>

    <!-- Mostramos el mensaje del error de forma controlada -->
    <p><strong>Detalle del error:</strong>
        <%= (exception != null) ? exception.getMessage() : "Error desconocido o sesión caducada." %>
    </p>

    <br>
    <!-- Botón volver obligatorio -->
    <a href="index.jsp"><button>Volver al Menú Principal</button></a>
</body>
</html>