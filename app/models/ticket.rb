class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user

  enum status: {
    unsold: "unsold",
    held: "held",
    purchased: "purchased",
    refunded: "refunded"
  }
end
