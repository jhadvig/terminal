class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name

      t.integer :program_id

      t.timestamps
    end
  end
end
