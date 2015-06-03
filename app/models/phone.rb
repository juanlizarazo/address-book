class Phone
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: String
  field :type, type: String

  embedded_in :contacts
end
