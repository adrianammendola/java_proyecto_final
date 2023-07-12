<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Final JAVA 2023</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
  
          <img src="" alt="">
          
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="nuevo.jsp">Nuevo Articulo</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/ListadoArticuloController">Listado de Articulos</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>            
            
    <div class="container">
        <div class="row">
            <div class="col-12">
                <section>
                    <h1>Alta Articulo</h1>
                    <form  method="post" action="<%=request.getContextPath()%>/AltaArticuloController">
                      
                      
                      <div class="mb-3">
                            <label for="exampleFormControlInput1" 
                                class="form-label">Nombre</label>
                            <input name="nombre" 
                                type="text" 
                                class="form-control" 
                                id="nombre"
                                
                                maxlength="50">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" 
                                class="form-label">Precio
                            </label>
                            <input name="precio" 
                                type="number" 
                                class="form-control" 
                                id="precio"
                                >
                                
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
                                >
                        </div>
                        <div class="mb-3">
                            <label for="autor" 
                                class="form-label">Autor
                            </label>
                            <input name="autor" 
                                type="text" 
                                class="form-control" 
                                id="autor" 
                                maxlength="50">
                        </div>
                        <% if (request.getAttribute("mensaje") != null) { %>
                          <div class="alert alert-success" role="alert">
                              <%= request.getAttribute("mensaje") %>
                          </div>
                        <% } %>
                        <%-- Fin del bloque de código JSP --%>
                                      
                                        
                                          <button class="btn btn-primary">
                                              Dar de alta
                                          </button>
                                      </form>
                                  </section>
                              </div>
                          </div>
                      </div>     
                    </form>
                </section>
            </div>
        </div>

        
        

</body>

</html>