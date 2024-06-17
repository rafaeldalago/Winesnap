module ApplicationHelper
  def link_to_cond(condition, path, &block)
    return unless block.present?

    if condition
      link_to(path, &block)
    else
      capture(path, &block)
    end
  end

  def display(text)
    return '-' unless text.present?

    text
  end
end
