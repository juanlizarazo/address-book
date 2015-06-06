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
          redirect_to @contact, notice: 'Contact was successfully created.'
        end
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
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
          redirect_to @contact, notice: 'Contact was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json do
          render json: @contact.errors, status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: 'Contact was successfully deleted.'
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
        phones_attributes: [:number, :id]
      )
  end
end
