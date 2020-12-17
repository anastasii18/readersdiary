class InitialMigration < ActiveRecord::Migration[6.0]
  def change

    create_table :authors do |t|
      t.string :name, null: false
    end

    create_table :books do |t|
      t.string :title, null: false
      t.string :comments
      t.integer :rating
      t.datetime :start
      t.datetime :finish
      t.references :author
    end

    create_table :lists do |t|
     t.string :list_name
     t.timestamps
     end
  end
end
