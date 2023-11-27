module LocationsHelper
  def submit_button_text
    if params[:from]
      'Create and go back'
    else
      'Create'
    end
  end
end
