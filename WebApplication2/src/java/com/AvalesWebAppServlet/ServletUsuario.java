
package com.AvalesWebAppServlet;

import com.AvalesWebAppLogics.ayudaLogic;
import com.AvalesWebAppLogics.messageLogic;
import com.AvalesWebAppObjs.nuevoRegistroObj;
import com.AvalesWebAppObjs.solicitudAyudaObj;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario"})
public class ServletUsuario extends HttpServlet 
    {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException, SQLException 
        {
            String stringform = request.getParameter("formid");

            if (stringform.equals("1")) 
            {
                
            String s_proyecto = request.getParameter("f_proyecto");
            String s_descripcion = request.getParameter("f_descripcion");
            
            nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
            
                ayudaLogic CLogic = new ayudaLogic();
                boolean nuevaAyuda = CLogic.InsertHelp(user.getId(), s_proyecto, s_descripcion);
                
                request.getSession().setAttribute("nuevaAyuda", nuevaAyuda);
                request.getRequestDispatcher("perfil.jsp")
                    .forward(request, response);
            
            }
            
            if (stringform.equals("2"))
            {
                
                nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
                
                ayudaLogic CLogic = new ayudaLogic();
                
                List<solicitudAyudaObj> listaDeAyudas = CLogic.getAllHelpsByUserID(user.getId());
                
                request.getSession().setAttribute("ayudas", listaDeAyudas);
                request.getRequestDispatcher("solicitudesUsuario.jsp")
                    .forward(request, response);
            }
            
            if (stringform.equals("3"))
            {
                    String aprobacion = request.getParameter("aprobacion");
                    String id = request.getParameter("id");
                    int int_id = Integer.parseInt(id);
                    
                    if(!aprobacion.equals("Aprobado") & !aprobacion.equals("No aprobado"))
                    {
                    ayudaLogic CLogic = new ayudaLogic();
                    boolean borrarAyuda = CLogic.deleteHelp(int_id);

                    request.getSession().setAttribute("delete", borrarAyuda);
                    request.getRequestDispatcher("ServletUsuario?formid=2")
                        .forward(request, response);
                    
                    }
                        else
                    {
                        request.getRequestDispatcher("errorBorrarSolicitud.jsp")
                        .forward(request, response);
                    }
            }
            
            if (stringform.equals("4"))
            {
                    String aprobacion = request.getParameter("aprobacion");
                    String id = request.getParameter("id");
                    int int_id = Integer.parseInt(id);
                    String iduser = request.getParameter("iduser");
                    int int_iduser = Integer.parseInt(iduser);
                    String proyecto = request.getParameter("proyecto");
                    String descripcion = request.getParameter("descripcion");
                    String fecha = request.getParameter("fecha");
                    
                    
                    if(!aprobacion.equals("Aprobado") & !aprobacion.equals("No aprobado"))
                    {
                    solicitudAyudaObj ayudaAEditar = new solicitudAyudaObj(int_id, int_iduser, proyecto, descripcion, fecha, aprobacion);

                    request.getSession().setAttribute("ayudaAEditar", ayudaAEditar);
                    request.getRequestDispatcher("editarSolicitudAyuda.jsp")
                        .forward(request, response);
                    
                    }
                        else
                    {
                        request.getRequestDispatcher("errorBorrarSolicitud.jsp")
                        .forward(request, response);
                    }
            }
            if (stringform.equals("100"))
            {
              String s_newMessage = request.getParameter("fl_newMessage");
              byte adminStatus = 0;
              
            
             nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
             
              messageLogic CnewMessageL = new messageLogic();
              int p_count;
              p_count = CnewMessageL.getIdMessageUserFrom(user.getId()).size() + 1;
              boolean newMessage = CnewMessageL.insertMessage(user.getId(), p_count, s_newMessage, adminStatus);
              
              request.getSession().setAttribute("message", newMessage);
                request.getRequestDispatcher("Mensajeria.jsp")
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ServletUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }
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
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ServletUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }
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