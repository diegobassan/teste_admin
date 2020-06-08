# frozen_string_literal: true

class Product < ApplicationRecord
  def time
    hr = minutes / 60
    min = minutes % 60
    "#{hr}h:#{min}"
  end
end
