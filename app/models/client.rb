class Client < ApplicationRecord
    validates :code, :name, :address, presence: true

    rails_admin do
        list do
            field :code
            field :name
            field :address
            field :created_at
            field :updated_at
          end
    end
end
