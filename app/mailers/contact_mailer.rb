class ContactMailer < ApplicationMailer
  
  def email_agent agent_id, first_name, last_name, email, message
    @agent_id = User.find(@agent)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @message = message

    if @agent.present?
      mail to: @agent.email, message: "You have a new contact from Location Property."
    end
  end
end
