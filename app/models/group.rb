class Group < ApplicationRecord
    has_and_belongs_to_many :products
    has_paper_trail

    validates :name, :description, :products, presence: true

    rails_admin do
      edit do
        field :name
        field :description
        field :products
      end
      list do
        # virtual field
        configure :time do
          # any configuration
        end
        fields :name, :description, :time
      end
    end
    def time
        hr = self.products.sum(:minutes) / 60
        min = self.products.sum(:minutes) % 60
        "#{hr}h:#{min}"
      end
end
