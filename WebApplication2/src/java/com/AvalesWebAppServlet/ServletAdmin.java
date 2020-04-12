package com.AvalesWebAppServlet;

import com.AvalesWebAppLogics.ayudaLogic;
import com.AvalesWebAppLogics.proyectoLogic;
import com.AvalesWebAppLogics.registerLogic;
import com.AvalesWebAppObjs.nuevoRegistroObj;
import com.AvalesWebAppObjs.proyectoObj;
import com.AvalesWebAppObjs.solicitudAyudaObj;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletAdmin", urlPatterns = {"/ServletAdmin"})
public class ServletAdmin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String stringform = request.getParameter("formid");
        
       if (stringform.equals("1"))
            {   
                ayudaLogic CLogic = new ayudaLogic();
                
                List<solicitudAyudaObj> listaDeAyudasTotal = CLogic.getAllHelps();
                
                request.getSession().setAttribute("listaTotal", listaDeAyudasTotal);
                request.getRequestDispatcher("solicitudesDeAyudaParaAdmin.jsp")
                    .forward(request, response);
            }
        
        if (stringform.equals("2"))
            {
                    String aprobacion = request.getParameter("aprobacion");
                    String ID = request.getParameter("id");
                    int IDsolicitud = Integer.parseInt(ID);
                    
                    
                    if(!aprobacion.equals("Aprobado") & !aprobacion.equals("No aprobado"))
                    {
                    ayudaLogic CLogic = new ayudaLogic();
                    boolean solicitudAprobada = CLogic.aprobarSolicitud(IDsolicitud);

                    request.getSession().setAttribute("solicitudAprobada", solicitudAprobada);
                    request.getRequestDispatcher("ServletAdmin?formid=1")
                        .forward(request, response);
                    
                    }
                        else
                    {
                        request.getRequestDispatcher("noEditarSolicitud.jsp")
                        .forward(request, response);
                    }
            }
        
        if (stringform.equals("3"))
            {
                    String aprobacion = request.getParameter("aprobacion");
                    String ID = request.getParameter("id");
                    int IDsolicitud = Integer.parseInt(ID);
                    
                    if(!aprobacion.equals("Aprobado") & !aprobacion.equals("No aprobado"))
                    {
                    ayudaLogic CLogic = new ayudaLogic();
                    boolean solicitudRechazada = CLogic.rechazarSolicitud(IDsolicitud);

                    request.getSession().setAttribute("solicitudRechazada", solicitudRechazada);
                    request.getRequestDispatcher("ServletAdmin?formid=1")
                        .forward(request, response);
                    
                    }
                        else
                    {
                        request.getRequestDispatcher("noEditarSolicitud.jsp")
                        .forward(request, response);
                    }
            }
        
        if (stringform.equals("4"))
            {
                    String ID = request.getParameter("id");
                    int IDsolicitud = Integer.parseInt(ID);
                    
                    
                    
                    registerLogic CLogic = new registerLogic();
                    nuevoRegistroObj registroPedido = CLogic.getUserByID(IDsolicitud);

                    request.getSession().setAttribute("registroPedido", registroPedido);
                    request.getRequestDispatcher("InfoDelUsuarioParaAdmin.jsp")
                        .forward(request, response);
                    
                    
            }
        
        if (stringform.equals("5"))
            {   
                proyectoLogic CLogic = new proyectoLogic();
                
                List<proyectoObj> listaDeProyectosTotal = CLogic.getAllProyects();
                
                request.getSession().setAttribute("listaTotalProyectos", listaDeProyectosTotal);
                request.getRequestDispatcher("tablaProyectos.jsp")
                    .forward(request, response);
            }
        
        if (stringform.equals("6"))
            {   
                
                String nombre = request.getParameter("proyecto");
                String descripcion = request.getParameter("descripcion");
                String lugar = request.getParameter("lugar");
                String foto = request.getParameter("foto");
                String video = request.getParameter("video");
                
                proyectoLogic CLogic = new proyectoLogic();
                
                boolean insertProyect = CLogic.insertProyect(nombre, descripcion, lugar, foto, video);
                
                request.getSession().setAttribute("insertProyect", insertProyect);
                request.getRequestDispatcher("ServletAdmin?formid=5")
                    .forward(request, response);
            }
        
        if (stringform.equals("7"))
            {   
                
                
                String id = request.getParameter("id");
                int id_proyecto = Integer.parseInt(id);
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String lugar = request.getParameter("lugar");
                String foto = request.getParameter("foto");
                String video = request.getParameter("video");
                
                proyectoObj proyectoAEditar = new proyectoObj(id_proyecto,nombre,descripcion,lugar,foto,video);
                
                request.getSession().setAttribute("proyectoAEditar", proyectoAEditar);
                request.getRequestDispatcher("editarProyecto.jsp")
                    .forward(request, response);
            }
        
        if (stringform.equals("8"))
            {   
                String id = request.getParameter("id");
                int id_proyecto = Integer.parseInt(id);
                
                proyectoLogic CLogic = new proyectoLogic();
                
                Boolean delProyect = CLogic.borrarProyecto(id_proyecto);
                
                request.getRequestDispatcher("ServletAdmin?formid=5")
                    .forward(request, response);
            }
        
        if (stringform.equals("9"))
            {   
                proyectoObj proyectoAEditar = 
                            (proyectoObj)request.getSession().getAttribute("proyectoAEditar");
                
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String lugar = request.getParameter("lugar");
                String foto = request.getParameter("foto");
                String video = request.getParameter("video");
                
                proyectoLogic CLogic = new proyectoLogic();
                
                boolean editProyect = CLogic.editProyecto(proyectoAEditar.getID(),nombre,descripcion,lugar,foto,video);
                
                request.getSession().setAttribute("editAproved", editProyect);
                request.getRequestDispatcher("ServletAdmin?formid=5")
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
