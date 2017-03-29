require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

def deliver_message(recipient_id, message_to_send)
	Bot.deliver({
	  recipient: {
	    id: recipient_id
	  },
	  message: {
	    text: message_to_send
	  }
	}, access_token: ENV['ACCESS_TOKEN'])
end

about_message = "Jon is a full stack developer who loves to collaborate with others and turn ideas into applications. He graduated from Dev Bootcamp as a full stack developer and continues to teach himself more about web development. When he's not coding he enjoys spending time with his wife and son, playing racquetball, and reading.

To find out more about what Jon learned at Dev Bootcamp and what he has been teaching himself just type 'skills' or click on the 'Jon's dev skills' button.

You can also reach Jon by email at sumulong.jon@gmail.com"

skills_message = "Here are some of Jon's skills as a developer: 

Ruby on Rails,
React.js,
JavaScript,
HTML,
CSS,
Bootstrap,
JQuery,
AJAX,
Git,
RSpec,
Agile Development,
Object Oriented Programming

To see some of these skills in action just type 'projects' or click on the'Jon's projects' button."

projects_message = "Jon has worked on some pretty cool projects. Here are a couple of recent projects: 

Vacationer - This is a mock travel agency site built with React!
http://vacationer-project-bucket.s3-website.us-east-2.amazonaws.com/ 

Jon's Resume Bot - Want to see the code that Jon used to breathe digital life into my wires? check out this repository:
https://github.com/JSumulong/jons_resume_bot

Or you can take a look at his GitHub page here:
https://github.com/JSumulong"


Bot.on :message do |message|
  case message.text
  when 'about'
  	message.reply(text: about_message)
  when 'skills'
  	message.reply(text: skills_message)
  when 'projects'
  	message.reply(text: projects_message)
  when "bye" 
    message.reply(text: 'Bye and thanks for chatting with me!')
  when "wat up"
  	message.reply( #### this is experimental, not sure if it works yet ####
			attachment: {
		    type: 'template',
		    payload: {
		      template_type: 'generic',
		      image_aspect_ratio: 'SQUARE',
		      elements: [
	      		title: "Learn About Jon",
	      		image_url: "https://lh3.googleusercontent.com/OLF0M_R2mXGSg29XXBj_CQyfJoVhxmdy60KFQsu0TZJ8JRZVQShQclwHYleTcmJm4Lq9GNpPSCbhi-K_0lRrbZzaWya4xjrHpf1vXCvDggDad2edPEq9ZMaMzM8bYMJpAHXzBubZ-7VooHxXcasi8gc8yzhdrvvDTXGWgwIU3TZjckjillvj1V4VEGu9E15xJUyI1vrjDJ9X-qKWgJ5VoS5lrTvavhJnBLzDvWluNjlcH3KFTeGyxrp8xmCmT_MS6NPlJldo76D7fO1n_n96hlmMCJBF025DaHhQdWfVjKoqaa1vA2bszUDlrpRtHbyOpcU0hFgA2xkcucJx0RvUax0bkAYQGqDpRTKXDP6DGXxX2fhF3zFuVMWOjHHlvN0gANlpRIa5s_-NgJcdzsPdSGexQ8lrjJtshJ0U9XL8GsbC5YvmqrIc7fsh68rvyMBUL-SNpLn4Mc97AgQOOPu7-yeanpK9nsl_fbAt4VRKZ_hcfUm0Ctr4HwmhMps2ocUGpRpbwDMqWHy8-5-STe6yQfKYrYynubZHDtDgLmGb0MrDhowg8jC5DHCuvh3TTAkGJVv7fS2sBEi6H0Bzlyz92aZIlkWiKaLdcUR9yYc8fjmgaE9vkKtL=w1486-h836-no",
	      		subtitle: "Click on one of the following buttons to find out more about Jon...",
	      		buttons: [
		      		{ type: 'postback', title: "About Jon", payload: 'ABOUT_JON' },
			        { type: 'postback', title: "Jon's dev skills", payload: 'SKILLS' },
			        { type: 'postback', title: "Jon's projects", payload: 'PROJECTS' }
	      		]
		      ]
		    }
		  }
		  #     text: "Hi, I'm Jon's Resume Bot. Nice to meet you! Can I tell you a little bit about Jon?",
		  #     buttons: [
		  #       { type: 'postback', title: "About Jon", payload: 'ABOUT_JON' },
		  #       { type: 'postback', title: "Jon's dev skills", payload: 'SKILLS' },
		  #       { type: 'postback', title: "Jon's projects", payload: 'PROJECTS' }
		  #     ]
		  #   }
		  # }
  	)
  else
  	message.reply(
		  attachment: {
		    type: 'template',
		    payload: {
		      template_type: 'button',
		      text: "Hi, I'm Jon's Resume Bot. Nice to meet you! Can I tell you a little bit about Jon?",
		      buttons: [
		        { type: 'postback', title: "About Jon", payload: 'ABOUT_JON' },
		        { type: 'postback', title: "Jon's dev skills", payload: 'SKILLS' },
		        { type: 'postback', title: "Jon's projects", payload: 'PROJECTS' }
		      ]
		    }
		  }
		)
  end
end

Bot.on :postback do |postback|
	case postback.payload
  	when 'ABOUT_JON'
    	deliver_message(postback.sender['id'], about_message)
    when 'SKILLS'
    	deliver_message(postback.sender['id'], skills_message)
    when 'PROJECTS'
    	deliver_message(postback.sender['id'], projects_message)
    when 'SEE_RESUME'
    	deliver_message(postback.sender['id'], "Testing one two three")
    else
    	deliver_message(postback.sender['id'], "I'm sorry, I didn't understand that...")
  end
end
