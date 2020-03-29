class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :theme
      t.text :description

      t.timestamps
    end
  end
end
