<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
     
        <img class="container-images" src="./images/codoacodo.png" alt="imagen-codoacodo">
     
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