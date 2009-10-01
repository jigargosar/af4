// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function toggle_done_items() {
  $$(".done").invoke("toggle")
}

function toggle_marker_buttons() {
  $$(".done_buttons, .marker_toggle_form").invoke("toggle")
}