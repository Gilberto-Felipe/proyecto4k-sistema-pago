<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Mi primer Login</title>

    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="../progra/index.css" th:href="@{/css/index.css}">

</head>

<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <form class="col-12" th:action="@{/login}" method="get">
                    <a href="alta.php" class="btn btn-primary" id="btn">Agregar Usuarios</a>
                    <a href="cobros.php" class="btn btn-primary" id="btn">Agregar Cobro</a>
                    <a href="pago.php" class="btn btn-primary" id="btn">Agregar Pago</a>
                    <a href="deuda.php" class="btn btn-primary" id="btn">Consultar Deuda</a>
                    <a href="consulta.php" class="btn btn-primary" id="btn">Consultar Pagos</a>
                </form>

            </div>
        </div>
    </div>
</body>

</html>