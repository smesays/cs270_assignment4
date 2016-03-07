class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.string :coordinates
      
      # update the locations migration to include a 't.belongs_to' reference to the users table.
      t.belongs_to :users, index: true
    end
  end
end
