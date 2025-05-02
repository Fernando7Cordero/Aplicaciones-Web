// Rutas
$(document).ready(function () {
  $("#btn_inicio").click(function () {
    $("#container").load("../sistema/inicio/frm_inicio_reportes.php");
  });

  $("#btn_articulos").click(function () {
    $("#container").load("../sistema/articulos/articulos.php");
  });
});
