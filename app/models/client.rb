class Client < ApplicationRecord
    validates :code, :name, :address, presence: true
    has_paper_trail

    rails_admin do
        list do
            field :code
            field :name
            field :address
          end
    end
end
