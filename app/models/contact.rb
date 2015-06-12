class Contact
  include Mongoid::Document
  include Mongoid::Timestamps

  field :firstname, type: String
  field :lastname, type: String

  validates :firstname, presence: true
  validates :lastname, presence: true

  embeds_many :addresses
  embeds_many :phones
  embeds_many :emails

  accepts_nested_attributes_for :addresses, :phones, :emails
end
