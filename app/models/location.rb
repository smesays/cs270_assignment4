class Location < ActiveRecord::Base
    # edit the Location model to read 'has_and_belongs_to_many :events'
    has_and_belongs_to_many :events
    
    # edit the Location model to include the following associations 
    # 'has_many :visits'
    # 'has_many :visitors, through: :visits, source: 'user''
    # we want to be able to type '@location.visitors', which is we have to provide the additional options to the 'has_many :through' association
    has_many :visits
    has_many :visitors, through: :visits, source: 'user'
    
    # edit the Location model to read 'belongs_to :owner, class_name: 'User', foreign_key: 'user_id''
    # we want to be able to say '@location.owner', so make sure to specify the appropriate options here
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
end