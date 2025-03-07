﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="modulo_admin.Login" %>
<%@ Import Namespace="System.Web.Optimization" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SIGI</title>    
    <asp:PlaceHolder runat="server">
        <%: Styles.Render("~/Content/css") %>
        <%: Scripts.Render("~/bundles/modernizr") %>                     
    </asp:PlaceHolder>
</head>

<body class="bodyLogin">
    <div class="container">
        <div class="row cartLogin">
            <div class="col-lg-7 d-none d-lg-block p-0">
                <!-- Imagen responsiva para pantallas grandes -->
                <picture>
                    <source srcset="assets/img/loginIMG1920x180-711x682.png" media="(min-width: 768px)">
                    <source srcset="assets/img/loginIMG1920x180-711x682.png" media="(min-width: 1920px)">
                    <source srcset="assets/img/loginIMG1920x180-711x682.png" media="(min-width: 1200px)">
                    <img src="assets/img/loginIMG1920x180-711x682.png" alt="2025: Eficiencia y Calidad para seguir en Victorias"
                        class="login-image">
                </picture>
            </div>
            <div class="col-lg-5 p-5 contenedorLogin">
                <div class="login-header text-center mb-4">
                    <h1 class="fw-bold fs-2" style="color: #555555">INICIAR SESIÓN</h1>
                    <p class="text-muted">Ingrese sus credenciales para acceder</p>
                </div>
                <form>
                    <div class="mb-3">
                        <label for="username" class="form-label" style="color: #555555">Usuario</label>
                        <div class="input-wrapper">
                            <input type="text" id="username" required class="border-0 shadow-none" placeholder="Ingrese su nombre de usuario">
                            <span class="icon">
                                <i class="fas fa-user fs-5"></i>
                            </span>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label" style="color: #555555">Contraseña:</label>
                        <div class="input-wrapper">
                            <input type="password" id="password" required class="border-0 shadow-none" placeholder="Ingrese su contraseña">
                            <span class="icon" id="togglePassword">
                                <i class="fas fa-key fs-5"></i>
                            </span>
                        </div>
                        <p class="mt-2 toggle-password" id="togglePasswordText">Ver contraseña</p>
                    </div>
                    <div class="mb-5 form-check text-end">
                        <a class="" href="#" style="color: #02116F">¿Olvidó su contraseña?</a>
                    </div>
                    <button type="submit" class="btn btn-primary w-100 fw-bold btnLogin" style="background-color: #0072BB;">
                        Iniciar
                        Sesión</button>
                    <div class="mt-5 mb-5 separador d-flex align-items-center">
                        <div class="flex-grow-1" style="height: 1.5px; background-color: #C2C2C2"></div>
                        <div class="mx-3" style="color: #C2C2C2">O</div>
                        <div class="flex-grow-1" style="height: 1.5px; background-color: #C2C2C2"></div>
                    </div>
                    <button type="submit" class="btn btn-outline-primary w-100 btnLoginCorreoInstitucional" style="border-color: #02116F; color: #02116F;">
                        Iniciar Sesión por Correo Institucional
                    </button>
                </form>
            </div>
        </div>
    </div>
    
    <%: Scripts.Render("~/bundles/jquery") %>     
    <%: Scripts.Render("~/bundles/bootstrap") %>

    <!-- Script para mostrar/ocultar contraseña -->
   <script>
        const togglePasswordText = document.getElementById('togglePasswordText');
        const passwordInput = document.getElementById('password');
        const togglePasswordIcon = document.getElementById('togglePassword');

        togglePasswordText.addEventListener('click', function () {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);

            // Cambiar el texto y el ícono
            if (type === 'password') {
                togglePasswordText.textContent = 'Ver contraseña';
                togglePasswordIcon.innerHTML = '<i class="fas fa-key fs-5"></i>';
            } else {
                togglePasswordText.textContent = 'Ocultar contraseña';
                togglePasswordIcon.innerHTML = '<i class="fas fa-eye-slash fs-5"></i>';
            }
        });

        // Cambiar el ícono al hacer focus en el input de contraseña
        passwordInput.addEventListener('focus', function () {
            togglePasswordIcon.innerHTML = '<i class="fas fa-eye fs-5"></i>';
        });

        // Cambiar el ícono al perder el focus si la contraseña está oculta
        passwordInput.addEventListener('blur', function () {
            if (passwordInput.getAttribute('type') === 'password') {
                togglePasswordIcon.innerHTML = '<i class="fas fa-key fs-5"></i>';
            }
        });
   </script>
</body>

</html>
