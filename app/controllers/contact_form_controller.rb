class ContactFormController < ApplicationController
  layout 'grayscale'

  def create
    c = ContactForm.new(contact_form_params)

    if c.deliver
      redirect_to thankyou_path
      flash[:success] = "Thanks for reaching out! Jack will be in touch shortly."
    else
      render root_path
      flash[:error] ="Oops! Something went wrong. You can always send an email manually to j@jackschuss.com."
    end
  end

  def show
  end


  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message)
  end
end
