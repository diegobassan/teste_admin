# frozen_string_literal: true

class Product < ApplicationRecord
  has_and_belongs_to_many :group, optional: true
  has_paper_trail

  validates :name, :description, :minutes, presence: true

  def time
    if minutes > 0
      hr = minutes / 60
      min = minutes % 60
      "#{hr}h:#{min}"
    else
      "0h:0"
    end
  end

  rails_admin do
    edit do
      fields :name, :description, :minutes, :online
    end
    list do
      # virtual field
      configure :time do
        # any configuration
      end
      fields :name, :description, :online, :time, :group
    end
  end
end
