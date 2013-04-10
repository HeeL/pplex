class ContactMailer < ActionMailer::Base
  default from: 'no-reply@pplex.net'
 
  def send_learner_contacts(info)
    @info = info
    mail(to: info[:to].email, subject: "[Pplex] Learner sent you his contact details")
  end

  def send_teacher_contacts(info)
    @info = info
    mail(to: info[:to].email, subject: "[Pplex] Teacher sent you his contact details")
  end

end