class Band < ApplicationRecord
  validates :name,
            format: { with: /\A[a-zA-Z]+\z/,
            message: "only allows letters" }
end
