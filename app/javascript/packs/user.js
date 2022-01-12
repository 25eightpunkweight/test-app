require( 'datatables.net-dt' );
jQuery(document).ready(function() {
  $('#users-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#users-datatable').data('source')
    },
    // "pagingType": "full_numbers",
    "columns": [
      {"data": "id"},
      {"data": "first_name"},
      {"data": "last_name"},
      {"data": "email"}
      // { "data": "avatar",
      //   render: function (data, type, row, meta) {
      //     return '<img src="' + data + '" height="50" width="50"/>';
      //   } 
      // }
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
});