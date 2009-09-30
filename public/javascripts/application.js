// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function hide_done() {
  $$(".done").each(function(e) {
    e.addClassName("hidden")
  })
}
function show_done() {
  $$(".done").each(function(e) {
    e.removeClassName("hidden")
  })

}