class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :year
      t.integer :msrp
      t.string :type
      t.string :hp
      t.string :mpg
      t.integer :seating
      t.string :description
      t.boolean :favorite
      t.string :image
      t.belongs_to :make, null: false, foreign_key: true

      t.timestamps
    end
  end
end
