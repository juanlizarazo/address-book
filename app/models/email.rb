class Email
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String

  validates :email, email: true, allow_blank: true

  embedded_in :contacts
end
