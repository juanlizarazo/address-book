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

  # Callbacks
  after_initialize :init_embedded_attributes

  private

  # Init embedded documents when empty
  def init_embedded_attributes
    self.phones = [Phone.new] unless phones.count > 0
    self.emails = [Email.new] unless phones.count > 0
    self.addresses = [Address.new] unless addresses.count > 0
  end
end
