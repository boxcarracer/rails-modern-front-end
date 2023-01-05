class Concert < ApplicationRecord
  belongs_to :vanue

  enum ilk: { concert: "concert", meet_n_greet: "meet_n_greet", battle: "battle" }
  enum access: { general: "general", members: "members", vips: "vips" }
end
