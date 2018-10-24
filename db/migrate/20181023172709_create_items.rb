class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :cost
      t.string :item_type
      t.string :description

      t.timestamps
    end
  end
end
