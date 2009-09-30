# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def focus id
    javascript_tag("$('#{id}').focus()")
  end

  def foo
    link_to_function("Hide Done", nil, :id => "more_link") do|p|
      p[".done"].hide
    end
  end
end
