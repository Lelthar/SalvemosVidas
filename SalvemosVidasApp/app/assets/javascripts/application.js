// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require best_in_place
//= require best_in_place.jquery-ui
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
});

function ocultar(){
	
}

function mostrar(){
	document.getElementById('parrafo2').style.display = 'block';
}

function myFunction() {
	//None = oculta
	//block = muestra
  var tipo = document.getElementById("slide_tipo").value;

  //Ir al form de slides y ocultar el primero
  if(tipo == "tipo1"){
  	document.getElementById('divParrafo1').style.display = 'block';
  	document.getElementById('divParrafo2').style.display = 'none';
  	document.getElementById('divParrafo3').style.display = 'none';

  	//Imagenes
  	document.getElementById('divImagen1').style.display = 'block';
  	document.getElementById('divImagen2').style.display = 'none';
  	document.getElementById('divImagen3').style.display = 'none';


  }else if(tipo == "tipo2"){
  	document.getElementById('divParrafo1').style.display = 'block';
  	document.getElementById('divParrafo2').style.display = 'block';
  	document.getElementById('divParrafo3').style.display = 'none';

  	//Imagenes
  	document.getElementById('divImagen1').style.display = 'none';
  	document.getElementById('divImagen2').style.display = 'none';
  	document.getElementById('divImagen3').style.display = 'none';


  }else if(tipo == "tipo3"){
  	document.getElementById('divParrafo1').style.display = 'block';
  	document.getElementById('divParrafo2').style.display = 'none';
  	document.getElementById('divParrafo3').style.display = 'none';

  	//Imagenes
  	document.getElementById('divImagen1').style.display = 'block';
  	document.getElementById('divImagen2').style.display = 'block';
  	document.getElementById('divImagen3').style.display = 'none';


  }else if(tipo == "tipo4"){
  	document.getElementById('divParrafo1').style.display = 'block';
  	document.getElementById('divParrafo2').style.display = 'none';
  	document.getElementById('divParrafo3').style.display = 'none';

  	//Imagenes
  	document.getElementById('divImagen1').style.display = 'block';
  	document.getElementById('divImagen2').style.display = 'none';
  	document.getElementById('divImagen3').style.display = 'none';
  }else if(tipo == "tipo5"){
  	document.getElementById('divParrafo1').style.display = 'block';
  	document.getElementById('divParrafo2').style.display = 'block';
  	document.getElementById('divParrafo3').style.display = 'none';

  	//Imagenes
  	document.getElementById('divImagen1').style.display = 'none';
  	document.getElementById('divImagen2').style.display = 'none';
  	document.getElementById('divImagen3').style.display = 'none';
  }
  //Agregar más si existiera otro tipo
}

function mostrarDiapositiva(slide) {
  var dataSlide = "";
  if(slide.tipo == "tipo1"){
    dataSlide = "<div align='center' style='padding: 10px;'> <div class='container-Diapositivas'><h2>"+slide.title+"</h2>  <p class='texto-Diapositivas'> "+slide.parrafo1+" </p> <br> <img class='img-responsive' width='250' height='250' src='"+slide.imagen1+"' alt=''> </div> </div>";
  }else if(slide.tipo == "tipo2"){
    dataSlide = "<div align='center' style='padding: 10px;'> <div class='container-Diapositivas'> <h2>"+slide.title+"</h2> <br> <div class='col-xs-6'> <p class='texto-Diapositivas'>"+slide.parrafo1+"</p> </div> <div class='col-xs-6'> <p class='texto-Diapositivas'>"+slide.parrafo2+" </p> </div> </div> </div>";
  }else if(slide.tipo == "tipo3"){
    dataSlide = "<div align='center' style='padding: 10px;'> <div class='container-Diapositivas'> <h2>"+slide.title+"</h2> <p class='texto-Diapositivas'> "+slide.parrafo1+" </p> <br> <div class='col-xs-6'> <img class='img-responsive' width='250' height='250' src='"+slide.imagen1+"' alt=''> </div> <div class='col-xs-6'> <img class='img-responsive' width='250' height='250' src='"+slide.imagen2+"' alt=''> </div> </div> </div>";
  }else if(slide.tipo == "tipo4"){
    dataSlide = "<div align='center' style='padding: 10px;'> <div class='container-Diapositivas'> <h2>"+slide.title+"</h2> <br> <div class='col-xs-6'> <p class='texto-Diapositivas'> "+slide.parrafo1+" </p> </div> <div class='col-xs-6'> <img class='img-responsive' width='350' height='350' src='"+slide.imagen1+"' alt=''> </div> </div> </div>";
  }else if(slide.tipo == "tipo5"){
    dataSlide = "<div align='center' style='padding: 10px;'> <div class='container-Diapositivas'> <h2>"+slide.title+"</h2> <p class='texto-Diapositivas'> "+slide.parrafo1+" </p> <br> <p class='texto-Diapositivas'> "+slide.parrafo2+" </p> </div> </div>";
  }
  document.getElementById('container-Slide').innerHTML = dataSlide;
}