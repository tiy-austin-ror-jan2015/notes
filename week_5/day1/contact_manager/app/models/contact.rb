class Contact < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email, :age, :twitter, :github, :phone_number
	validates_uniqueness_of :first_name, scope: :last_name, message: "has already been added for given last name"
	validates_uniqueness_of :twitter, :github
	validates :age, numericality: { greater_than: 18 }

    default_scope { aarp_member }

    scope :sort_by_last_name, ->  { order(:last_name) }
    
    scope :long_name,   -> { where("char_length('contacts.last_name') < 10") } 

    scope :aarp_member, -> { where(arel_table[:age].gt(50)) }
end    