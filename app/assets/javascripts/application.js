//= require jquery

$("#save").click(() => {
  const title = $("#title").val();
  const priority = $("#priority").val();
  const time = $("#time").val();
  $.post(
    "http://localhost/todos",
    {
      title: title,
      priority: priority,
      time: time
    },
    function (data, status) {
    //   alert("Data: " + data + "\nStatus: " + status);
    }
  );
});


function handleDelete(id) {
  $.ajax({
    type : "DELETE",
    url : "http://localhost/todos/"+id,
    success: function (result) {       
                          
    },
    error: function (e) {
        
    }
});
}

function handleCheck(id) {
  $.ajax({
    type : "PUT",
    url : "http://localhost/todos/"+id+"/completed",
    success: function (result) {       
                          
    },
    error: function (e) {
        
    }
});
}

function handleEdit(id) {
  $.ajax({
    type : "GET",
    url : "http://localhost/todos/"+id+"/edit",
    success: function (result) {       
                          
    },
    error: function (e) {
        
    }
});
}

function handleEdit(id) {
  $.ajax({
    type : "GET",
    url : "http://localhost/todos/"+id+"/edit",
    success: function (result) {       
                          
    },
    error: function (e) {
        
    }
});
}

function handlePatch(id) {
  const title = $("#title").val();
  const priority = $("#priority").val();
  const time = $("#time").val();
  $.ajax({
    type : "PUT",
    url : "http://localhost/todos/"+id,
    data: {
      title: title,
      priority: priority,
      time: time
    },
    success: function (result) {       
                          
    },
    error: function (e) {
        
    }
});
}