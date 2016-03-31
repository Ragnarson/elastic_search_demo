class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :country
      t.string :city
    end

    create_table :houses do |t|
      t.string :city
      t.string :information
    end
  end
end
