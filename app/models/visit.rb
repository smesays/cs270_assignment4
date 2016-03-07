# create the Visit model, and add the appropriate 'belongs_to' associations
class Visit < ActiveRecord::Base
    belongs_to :location
    belongs_to :user
end