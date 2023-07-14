//paquete: ar/com/codo
package ar.com.codoacodo;

import java.io.IOException;
import java.time.LocalDateTime;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import ar.com.codoacodo.dao.impl.DAO;
import ar.com.codoacodo.dao.impl.MySQLDAOImpl;
import ar.com.codoacodo.oop.Articulo;
import ar.com.codoacodo.oop.Libro;

//App.java = Clase java
@WebServlet("/AltaArticuloController")
public class AltaArticuloController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //CREATE CONTROLLER 
        //System.out.println("AltaArticuloController");

// Obtención de los valores de los campos
String titulo = req.getParameter("nombre");
String precioStr = req.getParameter("precio");
String autor = req.getParameter("autor");
String codigo = req.getParameter("codigo");

// Verificación de campos vacíos
if (titulo.isEmpty() || precioStr.isEmpty() || autor.isEmpty() || codigo.isEmpty()) {
    String mensaje = "Por favor, complete todos los campos.";
    req.setAttribute("mensajeDanger", mensaje);
        
    req.setAttribute("titulo", titulo);
    req.setAttribute("precio", precioStr);
    req.setAttribute("autor", autor);
    req.setAttribute("codigo", codigo);
        
    req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
    return;
    
}

// Conversión y validación del campo "precio"
double precio;
try {
    precio = Double.parseDouble(precioStr);
} catch (NumberFormatException e) {
    String mensaje = "El valor del campo 'precio' no es válido.";
    req.setAttribute("mensajeSuccess", mensaje);
    req.getRequestDispatcher("nuevo.jsp").forward(req, resp);
    return;
}

// Creación del artículo y procesamiento
String isbn = "123465465456";
LocalDateTime fechaCreacion = LocalDateTime.now();
Articulo nuevo = new Libro(titulo, codigo, autor, precio, false, isbn, codigo, fechaCreacion);
DAO dao = new MySQLDAOImpl();

try {
    dao.create(nuevo);

    String mensaje = "Artículo creado exitosamente.";
    req.setAttribute("mensajeSuccess", mensaje);
    req.getRequestDispatcher("nuevo.jsp").forward(req, resp);

} catch (Exception e) {
    e.printStackTrace();
    // Manejo de excepciones
    // Redireccionar a una página de error, si es necesario
}

    }
}
