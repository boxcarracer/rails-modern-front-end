class CreateShopingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :shoping_carts do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

    change_table :tickets do |t|
      t.references :shopping_carts, null: true, foreign_key: true
    end

    change_table :ticket_orders do |t|
      t.references :shopping_carts, null: true, foreign_key: true
    end
  end
end
