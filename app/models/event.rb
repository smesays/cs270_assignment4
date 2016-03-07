class Event < ActiveRecord::Base
    # edit the Event model to read 'has_and_belongs_to_many :locations'
    has_and_belongs_to_many :locations
    
    # edit the Event model to include the following associations 
    # 'has_many :users'
    # 'has_many :participants, through: :participates, source: 'user''
    # we want to be able to type '@event.participants', which is we have to provide the additional options to the 'has_many :through' association
    has_many :users
    has_many :participants, through: :participates, source: 'user'
    
    # edit the Event model to read 'belongs_to :owner, class_name: 'User', foreign_key: 'user_id''
    # we want to be able to say '@location.owner', so make sure to specify the appropriate options here
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'

end