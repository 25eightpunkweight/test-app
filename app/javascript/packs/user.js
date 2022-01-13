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
      {"data": "email"},
      // {"data": "avatar"}
      { "data": "avatar",
        render: function (data, type, row, meta) {
          if (data) {
            return '<img src="' + data + '" height="75" width="75"/>';
          }
          return '<p>No Image<br> Available!</p>';
        }
      },
      { "mRender": 
        function ( data, type, row ) {
          return '<a href=/users/'+row.id+'/edit>Edit</a>';
        }
      }
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
});