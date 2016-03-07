# create the Participate model, and add the appropriate 'belongs_to' associations
class Visit < ActiveRecord::Base
    belongs_to :event
    belongs_to :user
end