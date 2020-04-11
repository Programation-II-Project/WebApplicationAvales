
package com.AvalesWebAppServlet;

import com.AvalesWebAppLogics.proyectoLogic;
import com.AvalesWebAppObjs.proyectoObj;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletMainPage", urlPatterns = {"/ServletMainPage"})
public class ServletMainPage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String stringform = request.getParameter("formid");
        
        if (stringform.equals("1"))
            {   
                proyectoLogic CLogic = new proyectoLogic();
                
                List<proyectoObj> proyectosViewByUser = CLogic.getAllProyects();
                
                request.getSession().setAttribute("proyectosViewByUser", proyectosViewByUser);
                request.getRequestDispatcher("proyectosEnCurso.jsp")
                    .forward(request, response);
            }
        
        if (stringform.equals("2"))
            {   
                String id = request.getParameter("id");
                int id_proyecto = Integer.parseInt(id);
                
                proyectoLogic CLogic = new proyectoLogic();
                
                proyectoObj proyectoAVer = CLogic.getProyectByID(id_proyecto);
                
                request.getSession().setAttribute("proyectoAVer", proyectoAVer);
                request.getRequestDispatcher("ProyectosAvales.jsp")
                    .forward(request, response);
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
