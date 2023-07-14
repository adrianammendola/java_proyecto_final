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

@WebServlet("/EditarController")
public class EditarController extends HttpServlet {

    // esto lo maneja el servidor (Tomcat)
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        DAO dao = new MySQLDAOImpl();

        try {
            Articulo articulo = dao.getById(Long.parseLong(id));

            req.setAttribute("producto", articulo);
        } catch (Exception e) {
            req.setAttribute("error", "No se ha eliminado el articulo");
            getServletContext().getRequestDispatcher("/ListadoArticuloController").forward(req, resp);
        }

        getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Obtener el ID del artículo del parámetro de la solicitud
        String id = req.getParameter("id");
    
        // Obtener el DAO y el artículo existente por su ID
        DAO dao = new MySQLDAOImpl();
        try {
            Articulo articuloExistente = dao.getById(Long.parseLong(id));
    
            // Obtener los parámetros del formulario
            String titulo = req.getParameter("nombre");
            double precio = Double.parseDouble(req.getParameter("precio"));
            String autor = req.getParameter("autor");
            String codigo = req.getParameter("codigo");
            String isbn = "123465465456";
            LocalDateTime fechaCreacion = LocalDateTime.now();
    
            // Crear el objeto Articulo actualizado
            Articulo articuloActualizado = new Libro(titulo, codigo, autor, precio, false, isbn, codigo, fechaCreacion);
            articuloActualizado.setId(articuloExistente.getId()); // Establecer el ID del artículo existente
    
            // Actualizar el artículo en la base de datos
            dao.update(articuloActualizado);
    
            // Redirigir a la página de listado de artículos
            resp.sendRedirect(req.getContextPath() + "/ListadoArticuloController");
        } catch (Exception e) {
            // Manejar la excepción o lanzarla para que sea capturada en un nivel superior
            e.printStackTrace();
            getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
        }
    }
    

   /* protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //tendria que tener los parametros del front (<form>)
        String titulo = req.getParameter("nombre");
        double precio = Double.parseDouble(req.getParameter("precio"));
        String autor  = req.getParameter("autor");
        String codigo  = req.getParameter("codigo");
        String isbn  = "123465465456";
        LocalDateTime fechaCreacion = LocalDateTime.now();
        
        Articulo nuevo = new Libro(titulo, codigo, autor, precio, false, isbn,codigo,fechaCreacion);
        
        //Interface nombre  = new ClaseQueImplementaLaIntarface();
        DAO dao = new MySQLDAOImpl();
        
        //puedo usar lo metodos que tiene DAO, sin saber quien cumple el contrato
        try {
            dao.update(nuevo);
            //redirect
            //getServletContext().getRequestDispatcher("/ListadoArticuloController").forward(req, resp);//POST ListadoArticuloController
            resp.sendRedirect(req.getContextPath() + "/ListadoArticuloController");
        } catch (Exception e) {
            //redirect
            getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
            e.printStackTrace();
        } //try/catch/finally
    }*/
    
}
