class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new

    # Init embedded documents
    @contact.phones.build
    @contact.emails.build
    @contact.addresses.build
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    flash[:notice] = t('contact.success.create') if @contact.save
    set_flash_errors

    respond_with(@contact)
  end

  def update
    flash[:notice] = t('contact.success.update') if @contact.update(contact_params)
    set_flash_errors

    respond_with(@contact)
  end

  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: t('contact.success.destroy')
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params
      .require(:contact)
      .permit(
        :firstname,
        :lastname,
        emails_attributes: [:id, :email],
        phones_attributes: [:id, :number],
        addresses_attributes: [
          :id,
          :street_address_1,
          :street_address_2,
          :city,
          :state,
          :country,
          :zipcode
        ]
      )
  end

  def set_flash_errors
    flash.now[:error] = @contact.errors.full_messages.to_sentence if
      @contact.errors.any?
  end
end
