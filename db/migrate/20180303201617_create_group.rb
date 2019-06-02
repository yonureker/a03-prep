class CreateGroup < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.timestamps
      t.string :founder, null: false
      t.text :description
    end
  end
end
