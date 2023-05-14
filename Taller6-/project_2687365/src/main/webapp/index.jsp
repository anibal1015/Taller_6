<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="author" content="Juan El Kantar">
    <meta name="description" content="Formulario de registro G12">
    <meta name="kaywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>G12</title>
    <link rel="icon" type="image/x-icon" href="./img/logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boostrap-icons@1.10.3/font/boostrap-icons.css">
    <link rel="stylesheet" href="./css/signing.css">
    <link rel="stylesheet" href="./css/styles.css">
    <style>
    body {
    background-image: url('./img/fondo.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    }
    </style>
</head>

<body class="text-center">

<!-- Formulario de registro-->
<main class="form-signing w-100 m-auto">
    <form action="" method="post">
        <img class="mb-4" src="./img/logo.png" alt="G12" width=150>
        <h4 class="text-secondary">G12</h4>
        <h1 class="h5 mb-3 fw-normal" style="color:#0038F7" >REGISTRO</h1>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatingname" placeholder="Ingresa tu nombre aquí." required autofocus pattern="[A-Za-z0-9]{2,12}">
            <label for="floatingname">Ingresa tu nombre aquí.</label>
        </div>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatinglastname" placeholder="Ingresa tu apellido aquí." required  pattern="[A-Za-z]{2,40}">
            <label for="floatinglastname">Ingresa tu apellido aquí.</label>
        </div>

        <div class="form-floating">
            <input type="email" class="form-control" id="floatingemail" placeholder="Ingresa tu correo aquí." required  pattern="{30}">
            <label for="floatingemail">Ingresa tu correo aquí.</label>
        </div>

        <div class="form-floating">
            <input type="password" class="form-control" id="floatingpassword" placeholder="Ingresa tu contraseña aquí." required  pattern="[A-Za-z0-9]{8,12}">
                <label for="floatingpassword">Ingresa tu contraseña aquí.</label>
        </div>

        <button type="submit" class="btn btn-dark">Enviar</button>
        <div id="register">
            <a href="inicio.jsp" style="color:#000000" >Inicio de sesión</a>
        </div>
        <p class="mt-3 mb-3 text-muted" style="color:#000000" >Todos los Derechos Reservados G12
        <%=displayDate()%></p>
    </form>
</main>
</div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>

<%!
public String displayDate() {
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date= Calendar.getInstance().getTime();
    return dateFormat.format(date);
}
%>
</body>
</html>
