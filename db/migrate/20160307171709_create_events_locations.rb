# create a migration for the join table using the following command: 'rails g migration create_events_locations'
# migrate the database using 'rake db:migrate'
class CreateEventsLocations < ActiveRecord::Migration
  def change
    # add the appropriate <tt>t.belongs_to</tt> references inside the migration
    create_table :events_locations, id: false do |t|
      t.belongs_to :events, index: true
      t.belongs_to :locations, index: true
    end
  end
end
