class User < ActiveRecord::Base
    # edit the User model to include the following associations 
    # 'has_many :visits'
    # 'has_many :visited_locations, through: :visits, source: 'location''
    # we want to be able to type '@user.visited_locations', which is we have to provide the additional options to the 'has_many :through' association
    has_many :visits
    has_many :visited_locations, through: :visits, source: 'location'
    
    # edit the User model to read 'has_many :owned_locations, class_name: 'Location''
    # we want to be able to say '@user.owned_locations', so make sure to specify the appropriate options here
    has_many :owned_locations, class_name: 'Location', foreign_key: 'location_id'
    
    # 'has_many :participates'
    # 'has_many :participating_events, through: :participates, source: 'event''
    # we want to be able to type '@user.participating_events', which is we have to provide the additional options to the 'has_many :through' association
    has_many :participates
    has_many :participating_events, through: :participates, source: 'event'
    
    # edit the User model to read 'has_many :owned_events, class_name: 'Event''
    # we want to be able to say '@user.owned_events', so make sure to specify the appropriate options here
    has_many :owned_events, class_name: 'Event', foreign_key: 'event_id'
end