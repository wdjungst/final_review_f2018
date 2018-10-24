class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.float :amt
      t.string :entry_type
      t.string :description

      t.timestamps
    end
  end
end
