// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function toggle_done_items() {
  $$(".done").each(function(e) {
    e.toggle()
  })
}

function toggle_marker_buttons(){
   $$(".done").each(function(e) {
    e.show()
  })
  $$(".done_buttons").each(function(e) {
    e.toggle()
  })
  $$(".marker_toggle_form").each(function(e) {
    e.toggle()
  })
}