class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :code
      t.string :tel
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
