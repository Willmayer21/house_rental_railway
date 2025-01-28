class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    puts "Testing ENV variables:"
    puts "GMAIL_USERNAME: #{ENV['GMAIL_USERNAME']}"
    puts "GMAIL_INBOX: #{ENV['GMAIL_INBOX']}"
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to root_path, notice: 'Thank you for your message!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
