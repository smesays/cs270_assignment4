# create a migration for the join model using the following command: 'rails g migration create_visits'
# add the appropriate 't.belongs_to' references inside the migration, and migrate the database using 'rake db:migrate'. 
# Remember to include 't.timestamps null: false'
class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :location
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
