require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

def deliver_projects_message(recipient_id)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient_id
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'list',
		      	top_element_style: 'compact',
			      elements: [
			      	{
			      		title: "Resume Bot",
			      		image_url: "http://gdurl.com/l0yP",
			      		subtitle: "Rails server that delivers resume info to fb messenger",
			      		buttons: [
			      			{
			      				type: 'postback',
			      				title: "More details...",
			      				payload: 'RESUME_BOT'
			      			}
			      		]
			      	}, 
		      		{
		      			title: "Vacationer",
			      		image_url: "http://gdurl.com/Z49S",
			      		subtitle: "Front-end project built with react.js",
			      		buttons: [
				      		{ 
				      			type: 'postback',
				      			title: "More details...",
				      			payload: 'VACATIONER'	
				      		}
			      		]
			      	},
			      	{
			      		title: "Congo Directory",
			      		image_url: "http://gdurl.com/i04s",
			      		subtitle: "Businesses directory  built with Rails",
			      		buttons: [
			      			{
			      				type: 'postback',
			      				title: "More details...",
			      				payload: 'CONGO_DIRECTORY'
			      			}
			      		]
			      	},
			      	{
			      		title: "Remindr",
			      		image_url: "http://gdurl.com/apc6",
			      		subtitle: "Rails project that sends scheduled text messages as reminders",
			      		buttons: [
			      			{
			      				type: 'postback',
			      				title: "More details...",
			      				payload: 'REMINDR'
			      			}
			      		]
			      	}
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)
end

def deliver_bot_message(recipient_id)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient_id
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'generic',
			      image_aspect_ratio: 'HORIZONTAL',
			      elements: [
		      		title: "Resume Bot utilizes a Rails server to respond to messages via fb messenger",
		      		image_url: "http://gdurl.com/PmLF",
		      		subtitle: "Tech used: Ruby, Rails, Facebook-Messenger Gem",
		      		buttons: [
		      			{ type: 'web_url', url: 'https://github.com/JSumulong/Resume_Bot', title: "View GitHub Repo" }
		      		]
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)
end

def deliver_vacationer_message(recipient_id)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient_id
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'generic',
			      image_aspect_ratio: 'HORIZONTAL',
			      elements: [
		      		title: "Vacationer is a mock travel site emphasizing design and composition with React",
		      		image_url: "http://gdurl.com/eEOj",
		      		subtitle: "Tech used: React.js, HTML, CSS, Javascript, Webpack, Babel",
		      		buttons: [
		      			{ type: 'web_url', url: 'https://github.com/JSumulong/Vacationer', title: "View GitHub Repo" }
		      		]
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)
end

def deliver_congo_message(recipient_id)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient_id
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'generic',
			      image_aspect_ratio: 'HORIZONTAL',
			      elements: [
		      		title: "Congo Directory: a business directory built with Rails for a small startup",
		      		image_url: "http://gdurl.com/Nv92",
		      		subtitle: "Tech: Rails, HTML, CSS, Javascript, PostGreSQL, Faker, Bootstrap",
		      		buttons: [
		      			{ type: 'web_url', url: 'https://github.com/JSumulong/Congo_Directory', title: "View GitHub Repo" }
		      		]
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)
end

def deliver_remindr_message(recipient_id)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient_id
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'generic',
			      image_aspect_ratio: 'HORIZONTAL',
			      elements: [
		      		title: "Remindr was a group project built at DBC that sends scheduled texts as reminders",
		      		image_url: "http://gdurl.com/xRTo",
		      		subtitle: "Tech: Rails, Twilio API, Heroku Scheudler, PostGreSQL, Bootstrap",
		      		buttons: [
		      			{ type: 'web_url', url: 'https://github.com/JSumulong/remindr', title: "View GitHub Repo" }
		      		]
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)
end
def deliver_skills_message(recipient)
	Bot.deliver(
		{
		  recipient: {
		    id: recipient
		  },
		  message: {
			  attachment: {
			    type: 'template',
			    payload: {
			      template_type: 'list',
		      	top_element_style: 'compact',
			      elements: [
			      	{
			      		title: "Javascript, Jasmine, and other related tech",
			      		image_url: "http://gdurl.com/fu56",
			      		subtitle: "Jon has experience with Javascript, HTML, CSS, Bootstrap, Express, JQuery, AJAX",
			      	}, 
		      		{
		      			title: "Ruby, Rails, Sinatra, and RSpec",
			      		image_url: "http://gdurl.com/fM7y",
			      		subtitle: "Jon has built several Rails and Sinatra applications and tested with RSpec",
			      	},
			      	{
			      		title: "React, React-Router, Babel, and Webpack",
			      		image_url: "http://gdurl.com/IurI",
			      		subtitle: "Jon has worked with React utilizing state, inline styles, and lifecycle hooks",
			      	},
			      	{
			      		title: "Git & GitHub",
			      		image_url: "http://gdurl.com/ojSc",
			      		subtitle: "Ever since he started coding Jon has used git and GitHub for version control",
			      	}
			      ]
			    }
			  }
		  }
		}, access_token: ENV['ACCESS_TOKEN']
	)

end

# Bot Response
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
  when "asdf"
  	message.reply( #### this is experimental, not sure if it works yet ####
			attachment: {
		    type: 'template',
		    payload: {
		      template_type: 'generic',
		      image_aspect_ratio: 'HORIZONTAL',
		      elements: [
	      		title: "Learn About Jon",
	      		image_url: "http://gdurl.com/bKGc",
	      		subtitle: "Click on one of the following buttons to find out more about Jon...",
	      		buttons: [
		      		{ type: 'postback', title: "Tell me about Jon", payload: 'ABOUT_JON' },
			        { type: 'postback', title: "Skills", payload: 'SKILLS' },
			        { type: 'postback', title: "Projects", payload: 'PROJECTS' }
	      		]
		      ]
		    }
		  }
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
		        { type: 'postback', title: "Projects", payload: 'PROJECTS' }
		      ]
		    }
		  }
		)
  end
end

# Postback response
Bot.on :postback do |postback|
	case postback.payload
  	when 'ABOUT_JON'
    	deliver_message(postback.sender['id'], about_message)
    when 'SKILLS'
    	deliver_skills_message(postback.sender['id'])
    when 'PROJECTS'
    	deliver_projects_message(postback.sender['id'])
    when 'SEE_RESUME'
    	deliver_message(postback.sender['id'], "Testing one two three")
    when 'RESUME_BOT'
    	deliver_bot_message(postback.sender['id'])
    when 'VACATIONER'
    	deliver_vacationer_message(postback.sender['id'])
    when 'CONGO_DIRECTORY'
    	deliver_congo_message(postback.sender['id'])
    when 'REMINDR'
    	deliver_remindr_message(postback.sender['id'])
    else
    	deliver_message(postback.sender['id'], "I'm sorry, I didn't understand that...")
  end
end

##################
# Old

# def deliver_message(recipient_id, message)
# 	Bot.deliver(
# 		{
# 		  recipient: {
# 		    id: recipient_id
# 		  },
# 		  message: {
# 			  attachment: {
# 			    type: 'template',
# 			    payload: {
# 			      template_type: 'generic',
# 			      image_aspect_ratio: 'SQUARE',
# 			      elements: [
# 		      		title: "Learn About Jon",
# 		      		image_url: "https://lh3.googleusercontent.com/vU7SPK5WcB_KVlSZhAdp2q3aGDmG7I74jLJL7fQvqhcKipj443Deyk-Llhg2VUwKfXSieKHn6xwwoaDV_nVc9-svt4mdmn0bNx3NJ8nTn5_E_3YM1Ol7LhLsvbwcM4uh6bYkozQuuNGMVsmg9K_wFiISzzwUUe0jRk2iPfNMOlhXeRIH2oQQ12mKBSZ5NKV9qWVB9UEPOh22WWd2ocEsHElNzzLpYn_F6mb8Zg4CxO2R5maSUE_2x61OoHJsUvVizFTcaMVE2xSXkc6zydyWLZfKXgD7HEV5ldpWKcrH7JT6LNcxtE6khWGmjg4YND01m3iiFRlEJiNrfQ3c2JiZqdNuvpJE3ZxIJqzjvCYwR3A1RDsYLS48rp_rs3ugyD47lJ3UrwJaAcE7e6oEciD6IDmDWkGbQq717GoD9gFX3VJyMgNManCSIQ3J5g55rILrDLD9hKBuQCXJxRvVhc3ixxclSlAsBgpkPfH1ctzzrZLS4pFn5s9tRuvHaW0mAAWEa0ABWiX91YFDNlDc5lFPdqvm3M-HmfI2X_2R8MHx4ey7IHWM2Q9ji5DsEdxd8ipAakp1LOBrdgY28XOq7Vwsi8h248Y9oL7ExLfMwR_vR_JoUEmHod1r=w1451-h1347-no",
# 		      		subtitle: "Click on one of the following buttons to find out more about Jon...",
# 		      		buttons: [
# 			      		{ type: 'postback', title: "Vacationer", payload: 'ABOUT_JON' },
# 				        { type: 'postback', title: "Congo Directory", payload: 'SKILLS' },
# 				        { type: 'postback', title: "Resume Bot", payload: 'PROJECTS' }
# 		      		]
# 			      ]
# 			    }
# 			  }
# 		  }
# 		}, access_token: ENV['ACCESS_TOKEN']
# 	)
# end

# about_message = "Jon is a full stack developer who loves to collaborate with others and turn ideas into applications. He graduated from Dev Bootcamp as a full stack developer and continues to teach himself more about web development. When he's not coding he enjoys spending time with his wife and son, playing racquetball, and reading.

# To find out more about what Jon learned at Dev Bootcamp and what he has been teaching himself just type 'skills' or click on the 'Jon's dev skills' button.

# You can also reach Jon by email at sumulong.jon@gmail.com"

# skills_message = "Here are some of Jon's skills as a developer: 

# Ruby on Rails,
# React.js,
# JavaScript,
# HTML,
# CSS,
# Bootstrap,
# JQuery,
# AJAX,
# Git,
# RSpec,
# Agile Development,
# Object Oriented Programming

# To see some of these skills in action just type 'projects' or click on the'Jon's projects' button."

# projects_message = "Jon has worked on some pretty cool projects. Here are a couple of recent projects: 

# Vacationer - This is a mock travel agency site built with React!
# http://vacationer-project-bucket.s3-website.us-east-2.amazonaws.com/ 

# Jon's Resume Bot - Want to see the code that Jon used to breathe digital life into my wires? check out this repository:
# https://github.com/JSumulong/jons_resume_bot

# Or you can take a look at his GitHub page here:
# https://github.com/JSumulong"



