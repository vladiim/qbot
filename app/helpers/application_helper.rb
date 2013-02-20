module ApplicationHelper
  def section_title
    @title.upcase if @title
  end

  def section_title_or_qbot
  	@title ? @title : "QBot"
  end
end