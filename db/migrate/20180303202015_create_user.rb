class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, null: false
    end
  end
end
