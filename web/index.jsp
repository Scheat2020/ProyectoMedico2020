<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Pragma","no-cache");
    response.addHeader("Cache-control","must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Clínica Médica</title>
  <link rel="stylesheet" href="css/bulma.min.css">
  <link rel="stylesheet" href="css/material-design-iconic-font.css">
  <link rel="stylesheet" href="css/style.css">
  <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
  <link href="styles/bulma/bulma.min.css" rel="stylesheet" type="text/css"/>
  <link href="styles/bulma/material-design-iconic-font.css" rel="stylesheet" type="text/css"/>
  <link href="styles/bulma/style.css" rel="stylesheet" type="text/css"/>
  <script src="https://kit.fontawesome.com/90de824922.js" crossorigin="anonymous"></script>
</head>

<body>
  <nav class="navbar">
    <!-- Nabvar header -->
    <header class="navbar-header" id="navbar-header">
      <a href="#" class="brand-link is-size-3">
        <span class="icon">
        <i class="fas fa-heartbeat"></i>
        </span>
        <span class="brand">Clínica Médica</span>
      </a>
      <button class="navbar-menu-mobile open is-size-3 is-hidden-desktop" id="navbar-menu-mobile">
        <i class="zmdi zmdi-menu"></i>
      </button>
    </header>
    <!-- Navbar container -->

      <ul class="navbar-container" id="navbar-container">
        <li class="navbar-item">
          <a data-scroll href="#top" id="inicio" class="navbar-a navbar-link-active">Inicio</a>
        </li>
        <li class="navbar-item">
          <a data-scroll href="#about" id="acercaDe" class="navbar-a">Acerca de nosotros</a>
        </li>
        <li class="navbar-item">
          <a data-scroll href="#section2" id="section" class="navbar-a">Pilares</a>
        </li>
        <li class="navbar-item">
          <a data-scroll href="#gallery" id="photos" class="navbar-a">Login</a>
        </li>

      </ul>
  
  </nav>
  <!-- Sección del carrusel :) -->

  <div class="section-body" id="top">
  <div class="slide-contenedor" >
      <div class="miSlider fade">
          <div class="slider-body">
              <span class="tag-slider is-size-5-desktop">  CLíNICA  </span>
              <h2 class="is-size-3-mobile has-text-weight-bold slider-title">De confianza</h2>
              <p class="description-slider is-size-7-mobile"> Somos un equipo médico que trabaja por tu bienestar. </p>
            </div>
          <img src="img/img-banner1.jpg" alt="">
      </div>
      <div class="miSlider fade">
          <div class="slider-body">
              <span class="tag-slider is-size-5-desktop">  CLíNICA  </span>
              <h2 class="is-size-3-mobile has-text-weight-bold slider-title">Para todos</h2>
              <p class="description-slider is-size-7-mobile"> Somos un equipo médico que busca servir a todo el que lo necesite. </p>
            </div>
          <img src="img/img-banner2.jpg" alt="">
      </div>
      <div class="miSlider fade">
          <div class="slider-body">
              <span class="tag-slider">  CLíNICA  </span>
              <h2 class="is-size-3-mobile has-text-weight-bold slider-title">De calidad</h2>
              <p class="description-slider is-size-7-mobile"> Somos un equipo médico capacitado para darte la mejor atención. </p>
            </div>
          <img src="img/img-banner3.jpg" alt="">
      </div>
      <div class="direcciones">
          <a href="#" class="atras" onclick="avanzaSlide(-1)">&#10094;</a>
          <a href="#" class="adelante" onclick="avanzaSlide(1)">&#10095;</a>
      </div>
      <div class="dots">
          <span class="dot active" onclick="posicionSlide(1)"></span>
          <span class="dot" onclick="posicionSlide(2)"></span>
          <span class="dot" onclick="posicionSlide(3)"></span>
      </div>
  </div>
   <!-- About us -->
  <div class="container" id="about">
    <div class="columns is-vcentered">
      <div class="column is-half">
        <div class="about-me">
          <figure class="image">
            <img class="about-me-img" src="img/img-nosotros.jpg" alt="">
          </figure>
        </div>
      </div>
      <div class="column is-half section-about-me">
        <h1 class="title is-size-3-mobile is-size-2-tablet has-text-weight">Acerca de nosotros</h1>
        <h5 class="subtitle is-size-6-mobile is-size-5-tablet separator">Médicos de alto rendimiento</h5>
        <p class="text is-size-7-mobile">La salud es uno de los elementos más importantes que nos permite desarrollar
            una vida larga y plena, es por esta razón que como doctores nos dedicamos a su cuidado y protección.
            Somos un equipo médico especializado con más de 25 años de experiencia, que busca ofrecer
            servicios clínicos de calidad y accesibles a todas las personas, de manera que puedan desenvolverse
            en cada aspecto de la vida.</p>
      </div>
    </div>
  </div>
  <!-- Pilares -->
  <div id="section2" class="hero my-hero" style="--banner: url(../img/hero-img.jpg); --bg-atachment: fixed;">
    <div class="container-hero">

      <div class="container">
        <div class="columns is-multiline">
          <div class="column is-full has-text-centered">
            <h1 class="title has-text-white is-size-3-mobile is-size-1-tablet">
              Pilares
            </h1>
            
          </div>
          <div class="column">
            <div class="banner-container">
              <span class="container-icon">
                <i class=""></i>
              </span>
              <h4 class="is-size-5 has-text-centered has-text-weight-bold">Servicio de calidad</h4>
              <p class="has-text-centered is-size-7-mobile">Servimos de corazón y con la ética digna de nuestra 
                  profesión.</p>
            </div>
          </div>
          <div class="column">
            <div class="banner-container">
              <span class="container-icon">
                <i class=""></i>
              </span>
              <h4 class="is-size-5 has-text-centered has-text-weight-bold">Salud al alcance de todos</h4>
              <p class="has-text-centered is-size-7-mobile">Garantizamos atención médica a todo aquel que la necesite.</p>
            </div>
          </div>
          <div class="column">
            <div class="banner-container">
              <span class="container-icon">
                <i class=""></i>
              </span>
              <h4 class="is-size-5 has-text-centered has-text-weight-bold">Servicio de confianza</h4>
              <p class="has-text-centered is-size-7-mobile">Promovemos una buena relación médico-paciente, con el fin de mejorar el servicio.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Login -->
  <div class="container" id="contacto">
    <div class="columns is-multiline">
      <div class="column has-text-centered is-full">
        <h1 class="title is-size-3-mobile is-size-1-tablet has-text-weight">LOGIN</h1>
        </div>

     
        <div class="column">
          <form action="#">
            <div class="columns is-multiline">
              <div class="column is-half">
                    <div class="field">
                        <div class="control">
                            <p class="control">
                                <a href="inicioPaciente.jsp" class="is-radiusless is-shadowless button is-medium is-fullwidth">
                                    Paciente
                                </a>
                             </p>
                        </div>
                    </div>               
              </div>
             
              <div class="column is-half">
                    <div class="field">
                        <div class="control">                           
                             <p class="control">
                                <a href="inicioDoctor.jsp" class="is-radiusless is-shadowless button is-medium is-fullwidth">
                                    Doctor
                                </a>
                             </p>
                        </div>
                    </div>  
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  <!-- Footer -->
  <footer class="my-footer">
    <div class="hero my-hero" style="--banner: url(../img/footer-banner.jpg); --bg-atachment: none;">
      <div class="container-hero">
      </div>
    </div>
  </footer>
</div>

  <script src="js/smooth-scroll.min.js"></script>
  <script src="js/main.js"></script>
  
</body>

</html>