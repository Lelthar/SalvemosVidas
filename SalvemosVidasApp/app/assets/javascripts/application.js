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
//= require turbolinks
//= require_tree .

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