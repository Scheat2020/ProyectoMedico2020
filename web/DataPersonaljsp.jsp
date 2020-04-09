<%-- 
    Document   : DataPersonaljsp
    Created on : 03-07-2020, 09:10:17 AM
    Author     : Alexia
--%>
 <html lang="en">
    <head>
    <meta charset="utf-8">
    <title>Datos Personales</title>
    <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/screen.css">
    <script src="Scripts/validate/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="Scripts/validate/jquery.validate.js" type="text/javascript"></script>
   
    <script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		

		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules: {
				firstname: "required",
				apellidos: "required",
                                nacimiento: "required",
                                dir: "required",
                                dui: {
					required: true,
					minlength: 10
				},
                                
				username: {
					required: true,
					minlength: 4
				},
				password: {
					required: true,
					minlength: 5
				},
				confirm_password: {
					required: true,
					minlength: 5,
					equalTo: "#password"
				},
				email: {
					required: true,
					email: true
				},
				celular: {
					required: true,
					minlength: 8
				},
				agree: "required"
			}             
                       
			messages: {
				firstname: "*Ingrese sus nombres",
				apellidos: "*Ingrese sus apellidos",
                                nacimiento: "*Ingrese su fecha de nacimiento",
                                dir: "*Ingrese su direcciòn,"
 				
                                dui: {
					required: "*Introduzca su nùmero de DUI",
					minlength: "*Su DUI debe contener al menos 9 dìgitos y un guión previo al último"
				},       
                                
				username: {
					required: "*Ingrese su nombre de usuario",
					minlength: "*Su nombre de usuario debe contener al menos 4 dìgitos"
				},
				password: {
					required: "*Ingrese su contraseña",
					minlength: "*Su contraseña debe contener al menos 5 dìgitos"
				},
				confirm_password: {
					required: "*Complete el campo requerido",
					minlength: "*Su contraseña debe contener al menos 5 dìgitos",
					equalTo: "*Sus contraseñas no coinciden"
				},
                                
                                celular: {
					required: "*Ingrese su nùmero de celular",
					minlength: "Su nùmero de celular debe tener al menos 8 dìgitos"
				},
				email: "*El correo electrònico no es vàlido",
				agree: "*Debe aceptar los tèrminos y condiciones de uso",

			}
		});

		

	});
	</script>

    </head>

  
    <body>
       
       <section class ="section"> 
           
            <div class="container">
                
                <h1 class="title">
                    Datos personales
                </h1>
                <p class="title-2">
                    Complete la información requerida
                </p>
            </div>
            
            <form class="cmxform" id="signupForm" action="" method="get">
                <fieldset>
                
                <!--campos del form-->
                <!--Nombres-->
                <div class="field">
                    <label class="label" for="firstname">Nombres</label>
                    <div class="control">
                    <input class="input" id="firstname" name="firstname" type="text" placeholder="Ej: Grecia Marìa">
                    </div>
                </div>

                <!--Apellidos-->
                <div class="field">
                    <label class="label" for="apellidos">Apellidos</label>
                    <div class="control">
                        <input class="input" id="apellidos" name="apellidos" type="text" placeholder="Ej: Parada Ventura">
                    </div>
                </div>               
                
                
                <!--foto-->
                <div class="file">
                    <label class="label">Fotos de perfil</label>
                    <br><br>
                    <label class="file-label">
                        <input class="file-input" type="file" name="foto">
                        <span class="file-cta">
                            <span class="file-icon">
                                <i class="fas fa-upload"></i>
                            </span>
                            <span class="file-label">
                                Seleccione el archivo
                            </span>
                        </span>
                    </label>
                </div>

                
                <!--Fecha de nacimiento-->
                <div class="field">
                    <label class="label" for="nacimiento">Fecha de nacimiento</label>
                    <div class="control">
                    <input class="input" id="nacimiento" name="nacimiento" type="date">
                    </div>
                </div>  
                

                <!--DUI-->
                <div class="field">
                    <label class="label" for="dui">DUI</label>
                    <div class="control">
                    <input class="input" id="dui" name="dui" type="text" placeholder="12345678-1">
                    </div>
                </div> 
                
                  
                <!--Direcciòn-->
                <div class="field">
                    <label class="label" for="dir">Direcciòn</label>
                    <div class="control">
                    <input class="input" id="dir" name="dir" type="text" placeholder="P. Sherman, Calle Wallaby 42, Sydney">
                    </div>
                </div> 
                

                 <!--Username-->
                <div class="field">
                    <label class="label" for="username">Nombre de usuario</label>
                    <div class="control">
                    <input class="input" id="username" name="username" type="text" placeholder="Grecia Parada">
                    </div>
                </div> 

                 
                 <!--Password-->
                <div class="field">
                    <label class="label" for="password">Contraseña</label>
                    <div class="control">
                    <input class="input" id="password" name="password" type="password" placeholder="Ingrese su contraseña">
                    </div>
                </div> 
                 

                 <!--Confirme password-->
                <div class="field">
                    <label class="label" for="confirm_password">Confirme su contraseña</label>
                    <div class="control">
                    <input class="input" id="confirm_password" name="confirm_password" type="password" placeholder="Confirme su contraseña">
                    </div>
                </div> 
                 
                <!--Celular-->
                <div class="field">
                    <label class="label" for="Celular">Celular</label>
                    <div class="control">
                    <input class="input" id="Celular" name="Celular" type="text" placeholder="78717873">
                    </div>
                </div> 
                
                    
                <!--Email-->
                <div class="field">
                    <label class="label" for="email">E-mail</label>
                    <div class="control">
                    <input class="input" id="email" name="email" type="text" placeholder="ejemplo@gmail.com"">
                    </div>
                </div> 
                
                 <!--Sexo-->
                <div class="field">
                    <label class="label">Sexo</label>
                    <div class="control">
                        <div class="select">
                            <select>
                                <option>Mujer</option>
                                <option>Hombre</option>
                            </select>
                        </div>
                    </div>
                  </div>


                <!--terms-->
                <div class="field">
                    <div class="control">
                        <label class="checkbox">
                            <input type="checkbox" class="checkbox" id="agree" name="agree">
                            Acepto los términos y condiciones
                        </label>
                    </div>
                </div>

                 
                <!--botones continuar y cancelar-->
                <div class="field is-grouped">
                    <p class="control">
                        <a class="button is-primary" href="cuadroMedico.jsp">
                            Continuar
                        </a>
                    </p>
                    <p class="control">
                        <a class="button is-light" href="inicioPaciente.jsp">
                            Cancelar
                        </a>
                    </p>
                </div>
   
                



   
                </fieldset>
            </form>
           
        </section>
        
    </body>

</html>
    
