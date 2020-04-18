<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Hello</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="styles/calendar/demo.css"/>
    <link rel="stylesheet" href="styles/calendar/theme1.css"/>
  </head>
  <% 
      
      
      
List<actividadObj> totalActividades = 
                (List<actividadObj>)request.getSession().getAttribute("listaDeActividadesTotal");
    
  int dia = 0;
  int mes = 0;
  int anno = 0;
  String Titulo = "Naniiiiii!";
  %>
  <body>
    <h1>Calendarización AVALES</h1>
    <br><br>
    <div id="caleandar">
        <script type="text/javascript" src="styles/calendar/caleandar.js"></script>
        <script type="text/javascript">
            var events = [
                <% 
                if(totalActividades!=null)
                {
                    Iterator<actividadObj> ite = totalActividades.iterator();
                    actividadObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
                        dia = CTemp.getDia();
                        mes = CTemp.getMes()-1;
                        anno = CTemp.getAnno();
                        Titulo = CTemp.getNombre();

                %>
                {'Date': new Date(<%= anno %>, <%= mes %>, <%= dia %>), 'Title': '<%= Titulo %>'},
                <%
                    }
                }
                %>
            ];
        </script>
        
        <script type="text/javascript">
            var settings = {};
            var element = document.getElementById('caleandar');
            caleandar(element, events, settings);
        </script>
    </div>
  </body>
</html>
