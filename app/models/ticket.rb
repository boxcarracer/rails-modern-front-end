class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user
  belongs_to :ticket_order, optional: true
  belongs_to :shopping_cart, optional: true

  enum status: {
    unsold: "unsold",
    held: "held",
    purchased: "purchased",
    refunded: "refunded"
  }
end
