<!DOCTYPE html>
<html>
  <head>
    <title>Hello</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="styles/calendar/demo.css"/>
    <link rel="stylesheet" href="styles/calendar/theme1.css"/>
  </head>
  <% 
  int dia = 19;
  int mes = 3;
  int anno = 2020;
  String Titulo = "Aniversario con mi amorcito Adriana";
  %>
  <body>
    <h1>Calendarización AVALES</h1>
    <br><br>
    <div id="caleandar">
        <script type="text/javascript" src="styles/calendar/caleandar.js"></script>
        <script type="text/javascript">
            var events = [
                {'Date': new Date(<%= anno %>, <%= mes %>, <%= dia %>), 'Title': '<%= Titulo %>'}
            ];
            var settings = {};
            var element = document.getElementById('caleandar');
            caleandar(element, events, settings);
        </script>
    </div>
  </body>
</html>
