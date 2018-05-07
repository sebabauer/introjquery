class CreateColormixes < ActiveRecord::Migration[5.1]
  def change
    create_table :colormixes do |t|
      t.integer :red
      t.integer :gree
      t.integer :blue
      t.string :finalcolor

      t.timestamps
    end
  end
end
