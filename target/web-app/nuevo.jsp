<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Final JAVA 2023</title>
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  
  <jsp:include page="navbar.jsp"/>             
            
    <div class="container">
        <div class="row">
            <div class="col-6">
                <section>
                    <h1>Alta Articulo</h1>
                    <form  method="post" action="<%=request.getContextPath()%>/AltaArticuloController">
                      <div>
                            <label for="exampleFormControlInput1" 
                                class="form-label">Titulo</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="nombre"
                                maxlength="50"
                                value="${titulo}">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio" 
                                type="number" 
                                class="form-control" 
                                id="precio"
                                value="${precio}">
                                
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Imagen
                            </label>
                            <input name="imagen" 
                                type="file" 
                                class="form-control" 
                                id="exampleFormControlTextarea1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Codigo
                            </label>
                            <input name="codigo" 
                                type="text" 
                                class="form-control" 
                                id="codigo" 
                                maxlength="7"
                                value="${codigo}">
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
                                value="${autor}">
                        </div>
                        <% if (request.getAttribute("mensajeDanger") != null) { %>
                          <div class="alert alert-danger" role="alert">
                              <%= request.getAttribute("mensajeDanger") %>
                          </div>
                        <% } %>
                        <% if (request.getAttribute("mensajeSuccess") != null) { %>
                          <div class="alert alert-success" role="alert">
                              <%= request.getAttribute("mensajeSuccess") %>
                          </div>
                        <% } %>                
                            <button class="btn btn-primary">
                                  Dar de alta
                            </button>
                              </div>
                          </div>
                      </div>     
                    </form>
                </section>
            </div>
        </div>

        
        

</body>

</html>