var loadEditor
function toggleJSON() {
    var json_content = document.getElementById("json_content");
    if (json_content.style.display === "none") {
        json_content.style.display = "block";
        $("#json_button").text("Hide json");
    } else {
        json_content.style.display = "none";
        $("#json_button").text("Show json");
    }
}

loadEditor = function() {
  $(".tasklist_content").hover(function(){
    $(this).addClass("edit-border");
    }, function(){
    $(this).removeClass("edit-border");
  });

  $(".tasklist_title").hover(function(){
    $(this).addClass("edit-border");
    }, function(){
    $(this).removeClass("edit-border");
  });
}

$(document).on('turbolinks:load', loadEditor);
