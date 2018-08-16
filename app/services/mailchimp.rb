class Mailchimp

  def subscribe(email)

    puts "[Mailchimp] [new subscriber] #{email}"
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_KEY'])
	  gibbon.timeout = 30
		gibbon.open_timeout = 30
    result = gibbon.lists(ENV['MAILCHIMP_LIST']).members.create(body:{email_address: email, status: "subscribed", merge_fields:{FNAME: "todo", LNAME:"todo"} }) rescue false

  end


end
