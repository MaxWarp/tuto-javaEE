<%@ page pageEncoding="UTF-8" %>
<%@page import="com.sdzee.beans.TestBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test EL</title>
</head>
<body>
	<p>
		<!-- Logiques sur des booléens -->
        ${ true && true } <br /> <!-- Affiche true -->
        ${ true && false } <br /> <!-- Affiche false -->
        ${ !true || false } <br /> <!-- Affiche false -->

        <!-- Calculs arithmétiques -->
        ${ 10 / 4 } <br /> <!-- Affiche 2.5 -->
        ${ 10 mod 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->
        ${ 10 % 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->
        ${ 6 * 7 } <br /> <!-- Affiche 42 -->
        ${ 63 - 8 } <br /> <!-- Affiche 55 -->
        ${ 12 / -8 } <br /> <!-- Affiche -1.5 -->
        ${ 7 / 0 } <br /> <!-- Affiche Infinity -->

        <!-- Compare les caractères 'a' et 'b'. Le caractère 'a' étant bien situé avant le caractère 'b' dans l'alphabet ASCII, cette EL affiche true. -->
        ${ 1 lt 2 } <br />  

        <!-- Compare les chaînes 'hip' et 'hit'. Puisque 'p' < 't', cette EL affiche false. -->
        ${ 1 gt 2 } <br /> 

        <!-- Compare les caractères 'a' et 'b', puis les chaînes 'hip' et 'hit'. Puisque le premier test renvoie true et le second false, le résultat est false. -->
        ${ 1 lt 2 && 8 gt 9 } <br /> 

        <!-- Compare le résultat d'un calcul à une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le résultat est false. -->
        ${ 6 * 7 == 48 } <br />
        ${ empty 'test'} <br />
        ${ empty ''} <br />
        ${ !empty ''} <br />
        ${ 1 gt 2 ? 'oui'  : 'non' } <br />
        ${ empty 'test' ? 'vide' : 'non  vide'  } <br />
        <p>12 est inférieur à 8 : ${12 lt 8}</p>
         
	</p>
	 <p>12 est inférieur à 8 : ${12 lt 8}</p>
	 <p>
	   <jsp:useBean id="TestBean" class="com.sdzee.beans.TestBean"/>
	  </p>
</body>
</html>