
<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.List"%>

<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center;">            
                <h4>SEGUNDO PARCIAL TEM-742</h4>
                <h4>Nombre:Colque Cori Hector Enrrique <br>Carnet: 7058956 lp</br></h4>            
        </div>
        <h2><center>Gestion de productos</center></h2>
        <a href="Inicio?action=add">Nuevo producto</a>
        <h4></h4>        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach  var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>
