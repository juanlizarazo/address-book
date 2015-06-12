class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new

    # Init embedded documents
    @contact.phones.build
    @contact.emails.build
    @contact.addresses.build
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html do
          redirect_to @contact, notice: t('contact.success.create')
        end
        format.json { render :show, status: :created, location: @contact }
      else
        format.html do
          set_flash_errors
          render :new
        end
        format.json do
          render json: @contact.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html do
          redirect_to @contact, notice: t('contact.success.update')
        end
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html do
          set_flash_errors
          render :edit
        end
        format.json do
          render json: @contact.errors, status: :unprocessable_entity
        end
      end
    end
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
