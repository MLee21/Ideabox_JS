//= require templates/idea

$(function() {

  $(".ideas_index").on("click", ".delete_button", function(event) {
    var button = $(event.target);
    var ideaID = button.data("id");
    $.ajax({
      url: "/ideas/" + ideaID,
      method: "DELETE",
      success: function() {
        button.parents(".ideas").remove();
      }
    });
  });

  $(".submit_button").on("click", function(event) {
    event.preventDefault();
    var data = {idea: { title: $("#idea_title").val(), body: $("#idea_body").val() }};
    $.ajax({
        url: "/ideas", 
        data: data,
        dataType: "json",
        method: "POST",
        success: function(result) {
          clearForm();
          addIdeasToPage(result.idea, '.ideas_index');
        }
      });
  });

  function clearForm() {
    $("#idea_title").val("");
    $("#idea_body").val("");
  }

  function renderIdea(idea) {
    return JST["templates/idea"]({ idea: idea })
  }

  function addIdeasToPage(idea, target) {
    var renderedIdeas = renderIdea(idea);
    $(target).append(renderedIdeas);
  }

});
