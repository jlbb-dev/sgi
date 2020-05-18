  
  $(document).ready(function(){
    $('.datepicker').datepicker({
       todayHighlight: true, 
    format: 'dd/mm/yyyy'
    });
  });

  $(document).ready(function() {
  $('#dttb').dataTable({
  

     "language": {
    "sProcessing":     "Procesando...",
    "sLengthMenu":     "Mostrar _MENU_ registros",
    "sZeroRecords":    "No se encontraron resultados",
    "sEmptyTable":     "Ningún dato disponible en esta tabla",
    "sInfo":           "Registros del _START_ al _END_ de un total de _TOTAL_ registros",
    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
    "sInfoPostFix":    "",
    "sSearch":         "Buscar:",
    "sUrl":            "",
    "sInfoThousands":  ",",
    "sLoadingRecords": "Cargando...",
    "oPaginate": {
        "sFirst":    "Primero",
        "sLast":     "Último",
        "sNext":     "Siguiente",
        "sPrevious": "Anterior"
    },
    "oAria": {
        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
    },
    "buttons": {
        "copy": "Copiar",
        "colvis": "Visibilidad"
    }
}

  });
});

 $(function(){
    $('#complaint_selector1').on('change',
    function(){
     if ($('#complaint_selector1').find('option:selected').text() == "Poder Judicial")
      {
      
        $('#complaint_selector2').show();
      }
     else
      {
    
        $('#complaint_selector2').hide();
      }
    })
  });