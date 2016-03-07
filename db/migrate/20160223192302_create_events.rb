class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      
      # update the event migration to include a 't.belongs_to' reference to the users table.
      t.belongs_to :users, index: true
    end
  end
end
