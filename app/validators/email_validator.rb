class EmailValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    object.errors[attribute] <<
      I18n.t('validator.email.invalid_format') unless
        value =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  end
end
