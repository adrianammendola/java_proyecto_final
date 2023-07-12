const sendButton = document.getElementById("success-button")
const errorButton = document.getElementById("error-button")


    function mostrar() {
        // Obtén los valores de los campos del formulario
        const nombre = document.getElementById("nombre").value;
        const precio = document.getElementById("precio").value;
        //const imagen = document.getElementById("exampleFormControlTextarea1").value;
        const codigo = document.getElementById("codigo").value;
        const autor = document.getElementById("autor").value;

        // Verifica si algún campo está vacío
        if (nombre === "" || precio === "" || codigo === "" || autor === "") {
            // Muestra el mensaje de error
            swal("", "Articulo Creado", "error");
            
        } else {
            // Muestra el mensaje de éxito
            swal("", "Articulo Creado", "success");
            getServletContext().getRequestDispatcher("/nuevo.jsp").forward(req, resp);
            
            

            // Aquí puedes enviar el formulario o realizar otras acciones adicionales
            // document.getElementById("myForm").submit();
        }
    }

    

