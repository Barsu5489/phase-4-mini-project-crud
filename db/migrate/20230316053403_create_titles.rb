class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :image
      t.string :description
      t.string :notes
      t.float :rating

      t.timestamps
    end
  end
end
