<%--
	Este es un ejemplo de todos los apartados presentados en 
	el archivo PDF.
	leborado por: Miguel Angel Gómez Rojas

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aprendiendo HTML</title>
        <style>
            table, th, td {
            border: 1px solid black;
            }
</style>
    </head>
    <body>
    	<h1 style="color:gold;"> APRENDIENDO HTML</h1><br>

    	<h3>Escribiendo Párrafos</h3><br>
    	<%--Aquí escribimos unos párrafo --%>
    	<p>HTML significa Hyper Text Markup Language (Lenguaje de marcado de hipertexto)</p> <br>

    	<p> Las etiquetas HTML son nombres de elementos rodeados por corchetes angulares</p><br>

    	<p>Las etiquetas HTML normalmente vienen en pares. La primera etiqueta de un par es la etiqueta de inicio, la segunda es la etiqueta de fin</p><br>

    	<%--Aquí escribimos unos párrafos pero con algunos estilos (Color, tipo de letra, tamaño de letra y alineación)--%>
        <h3>ESTILOS</h3>
    	<p style="color:blue;">Aquí le colocamos un color</p><br>

    	<p style="background-color:gray;">Aquí colocamos un color al fondo</p><br>

    	<p style="font-family:courier;">Aquí colocamos un tipo de letras</p><br>

    	<p style="text-align:center;">Aquí centramos nuestro párrafo</p><br>

    	<%--En este apartado vamos a colocar una imagen--%>
        <h3>IMAGEN</h3>
    	<img src="spiderman.jpg" alt="Spiderman View" style="width: 500px;height:600px;"><br>

    	<%--En este apartado vamos a colocar una hipervinculo--%>
        <h3>LINK</h3>
    	<a href="https://github.com/Miguel-gomez148/181803044-GOMEZ-MIGUELANGEL-POO" title="Repositorio con este proyecto">Mi repositorio git</a>

    	<%--En este apartado vamos a crear una tabla--%>
        <h3>TABLA</h3>
    	<table style="width:100%">
    		<caption style="color: green;">Mi primer tabla en PHP</caption>
		  <tr>
		    <th>Nombre(s)</th>
		    <th>Apeliido</th>
		    <th>Edad</th>
		  </tr>
		  <tr>
		    <td>Miguel</td>
		    <td>Gómez</td>
		    <td>19</td>
		  </tr>
		  <tr>
		    <td>Javier</td>
		    <td>Maldonado</td>
		    <td>20</td>
		  </tr>
		</table>

		<%--En este apartado vamos a crear una lista--%>
                    <h3>LISTAS</h3>
		<dl>
		  <caption style="color: green;">Mi primer lista en PHP</caption>
		  <dt>cafe</dt>
		  <dd>- bebida caliente</dd>
		  <dt>leche</dt>
		  <dd>- bebida fría</dd>
                </dl><br>

		<%--Una lista ordenada--%>

                <br><ol>
		  <caption style="color: green;">Mi lista del mercado</caption>
		  <li>Café</li>
		  <li>Leche</li>
		  <li>Huevos</li>
		  <li>Pan</li>
		  <li>Cheves</li>
                </ol><br>

		<%--Un Bloque--%>
                <h3>BLOQUES</h3>

                <div style="border: 1px solid black">Hola Gente.</div><br>

		<p>Hola <span style="border: 1px solid black">Gente</span>.</p>
                <br>

		<%-- Formularios e inputs--%>
                <h3>FORMULARIO</h3>
		<form>
		<br><label for="texto">Aqui se intruce un texto</label>
		<input type="text" id="texto" name="Text"><br>

		<br><label for="contra">Aqui se intruoduce una contraseña</label>
		<input type="password" id="contra" name="Password"><br>

		<br><label for="enviar">Botón para enviar datos</label>
		<input type="submit" id="enviar" name="envianding"><br>

		<br><label for="reinicio">Botón para reset de inputs</label>
		<input type="reset" id="reinicio" name="Reset"><br>

		<br><label for="box">Checkbox</label>
		<input type="checkbox" id="box" name="Verificar"><br>

		<br><label for="fecha">Elegir una fecha</label>
		<input type="date" id="fecha" name="Dat"><br>

		<br><label for="local">Elegir fecha y hora</label>
		<input type="datetime-local" id="local" name="Zona"><br>

		<br><label for="mail">Introducir un e-mail</label>
		<input type="e-mail" id="mail" name="correo"><br>

		<br><label for="miArchivo">Elegir un documento</label>
		<input type="file" id="miArchivo" name="Doc"><br>

		<br><label for="mes">Elige un mes y año</label>
		<input type="month" id="mes" name="Mimes"><br>

		<br><label for="numero">Introducir un número</label>
		<input type="number" id="numero" name="num"><br>

		<br><label for="rango">Selecciona un número</label>
		<input type="range" id="rango" name="miRango"><br>

		<br><label for="buscar">Ingresa palabra a buscar</label>
		<input type="search" id="buscar" name="busqueda"><br>

		<br><label for="numtel">Introducir un e-mail</label>
		<input type="tel" id="numtel" name="telefono"><br>

		<br><label for="tiempo">Selecciona un tiempo</label>
		<input type="time" id="tiempo" name="temp"><br>

		<br><label for="link">Introducir un URL</label>
		<input type="url" id="link" name="url"><br>

		<br><label for="semanita">Selecciona una semana</label>
		<input type="week" id="semanita" name="miSem"><br>

		<%-- Un select --%>
                <h3>LISTA DESPLEGABLE</h3>
		<br><label for="list" style="color: gold"> Mi primer Lista desplegable</label>
                <select id="list" name="select">
		  <option value="value1">DC</option> 
		  <option value="value2" selected>Marvel</option>
		  <option value="value3">Otro</option>
		</select><br>

		<%-- Un txtarea --%>
                <h3>txtAREA</h3>
		<br><label for="miTXTa">Mi primer txt area</label>

			<textarea id="miTXTa" name="txtare" rows="10" cols="10">
				Hola soy Miguel Angel Gómez Rojas y esta es mi primera TxtArea
			</textarea><br>


		<%-- att REQUIRED --%>
                <h3>ATRIBUTO REQUIRED</h3>

		<br><p style="color: gray;">
			Este atributo obliga a llenar un input antes de enviar los datos por ejemplo
		</p><br>
                     <input type="number" name="numero" min="1" max="100000" required/>
                     <input type="submit" value="Enviar"/>
		</form>

    </body>
</html>

