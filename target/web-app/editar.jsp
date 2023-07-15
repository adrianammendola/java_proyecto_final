<%@ page import="ar.com.codoacodo.oop.Articulo" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Final JAVA</title>
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <jsp:include page="navbar.jsp"/> 
    
      <% 
      Articulo producto = (Articulo)request.getAttribute("producto");
     %>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <section>
                    <h1>Editar Articulo id=<%= (producto != null) ? producto.getId() : "" %></h1>
                    <form method="post" action="<%=request.getContextPath()%>/EditarController?id=<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getId()%>">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">Titulo</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                maxlength="50"
                                value="<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getTitulo()%>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio" 
                                type="number" 
                                class="form-control" 
                                id="exampleFormControlTextarea1"
                                value="<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getPrecio()%>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Imagen
                            </label>
                            <input name="imagen" 
                                type="file" 
                                class="form-control" 
                                id="exampleFormControlTextarea1"
                                value="<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getImagen()%>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Codigo
                            </label>
                            <input name="codigo" 
                                type="text" 
                                disabled
                                readonly
                                class="form-control" 
                                id="exampleFormControlTextarea1" 
                                maxlength="7"
                                value="<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getCodigo()%>">
                        </div>
                        <div class="mb-3">
                            <label for="autor" 
                                class="form-label">Autor
                            </label>
                            <input name="autor" 
                                type="text" 
                                class="form-control" 
                                id="autor" 
                                maxlength="50"
                                value="<%=((ar.com.codoacodo.oop.Articulo)request.getAttribute("producto")).getAutor()%>">
                        </div>
                        <button class="btn btn-primary">
                            Modificar
                        </button>
                    </form>
                </section>
            </div>
        </div>
</body>

</html>