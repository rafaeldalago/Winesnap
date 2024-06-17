module ExperiencesHelper
  def to_currency(price)
    return '-' unless price.present?

    number_to_currency price, unit: 'R$', separator: ',', format: '%u %n'
  end

  def add_scale(rating)
    "#{rating}/10"
  end

  def alcohol(value)
    "#{value}%"
  end
end
