function toggleJSON() {
    var json_content = document.getElementById("json_content");
    if (json_content.style.display === "none") {
        json_content.style.display = "block";
    } else {
        json_content.style.display = "none";
    }
}

$( document ).ready(function() {
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
});
