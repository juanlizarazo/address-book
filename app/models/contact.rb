class Contact
  include Mongoid::Document
  include Mongoid::Timestamps

  field :firstname, type: String
  field :lastname, type: String

  embeds_many :addresses
  embeds_many :phones
  embeds_many :emails
end
