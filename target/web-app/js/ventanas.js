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
            document.getElementById("error-button").style.display = "block";
            document.getElementById("success-button").style.display = "none";
        } else {
            // Muestra el mensaje de éxito
            document.getElementById("success-button").style.display = "block";
            document.getElementById("error-button").style.display = "none";
            
            

            // Aquí puedes enviar el formulario o realizar otras acciones adicionales
            // document.getElementById("myForm").submit();
        }
    }

    

