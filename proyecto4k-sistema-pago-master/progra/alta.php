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
                    
                     <label for="psw-repeat"><b style="color: white">Name</b></label>
                    <input type="text" placeholder="Enter Name" required style="padding: 5px">
                    
                    <label for="psw-repeat"><b style="color: white">Phone number</b></label>
                    <input type="number" placeholder="Enter Number" required style="padding: 5px; padding-left: 32px; padding-right: 32px; margin-bottom: 15px;">
                    
                    <label for="email"><b style="color: white">Email</b></label>
                    <input type="text" placeholder="Enter Email" name="" required style="padding: 5px">

                    <label for="psw"><b style="color: white">Password</b></label>
                    <input type="password" placeholder="Enter Password" name="" required style="padding: 5px">
                    
                    <button type="submit" class="btn btn-primary" href="#"><i class="fas fa-sign-in-alt"></i>  Agregar </button>
                </form>

            </div>
        </div>
    </div>
</body>

</html>
