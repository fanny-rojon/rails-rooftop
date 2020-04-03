class CreateRooftops < ActiveRecord::Migration[5.2]
  def change
    create_table :rooftops do |t|
      t.string :name
      t.text :description
      t.string :address
      t.references :owner, foreign_key: { to_table: :users }   # owner_id
      t.monetize :price   # price_cents

      t.timestamps
    end
  end
end
