<%-- 
    Document   : CalendarizacionTabla
    Created on : abr 18, 2020, 2:13:09 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="styles/CSStables/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/css/util.css">
	<link rel="stylesheet" type="text/css" href="styles/CSStables/css/main.css">
        <title>JSP Page</title>
    </head>
     <% 



        List<actividadObj> totalActividades = 
                        (List<actividadObj>)request.getSession().getAttribute("listaDeActividadesTotal");

          %>
    <body>
    <h1>Todas las actividades de AVALES</h1>
            <%--Desde aquí empieza la tabla --%>  
    <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver4 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Nombre</th>
									<th class="cell100 column2">Descripcion</th>
									<th class="cell100 column3">Costo</th>
									<th class="cell100 column4">Año</th>
									<th class="cell100 column5">Mes</th>
                                                                        <th class="cell100 column6" >Dia</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                                                    <% 
                                                                        if(totalActividades!=null)
                                                                        {
                                                                            Iterator<actividadObj> ite = totalActividades.iterator();
                                                                            actividadObj CTemp;
                                                                            while(ite.hasNext())
                                                                            {
                                                                                CTemp = ite.next();

                                                                    %>
								<tr class="row100 body">

                                                                    <td class="cell100 column1"><a href="ServletMainPage?formid=4&id=<%= CTemp.getId_Actividad() %>"><%= CTemp.getNombre() %></a></td>
									<td class="cell100 column2"><%= CTemp.getDescripcion() %></td>
									<td class="cell100 column3"><%= CTemp.getCosto() %></td>
									<td class="cell100 column4"><%= CTemp.getAnno() %></td>
									<td class="cell100 column5"><%= CTemp.getMes() %></td>
									<td class="cell100 column6"><%= CTemp.getDia() %></td>
								
                                                                </tr>
                                                                <%
                                                                    }
                                                                }
                                                                %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
        <script src="js/main.js"></script>
        
  <button onclick="goBack()">Back</button>
  <script>
  function goBack() {
  window.history.back();
  }
  </script>
    </body>
</html>
