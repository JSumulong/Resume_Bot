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
			      		subtitle: "A bot that utilizes a Rails server to respond to messages via Facebook Messenger.",
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
			      		subtitle: "Built with React, this is a mock travel agency website with an emphasis on front end design and composition with React components.",
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
			      		image_url: "https://lh3.googleusercontent.com/18-ov_ve0Va8E83ApzgSM_2tlqGyvwJL1oZObbxanT-EHYnBKNazkM8fA6fa4eHkn9Sbtkkpg8rUoERw9dFgYF-1KahTwRFu0fC6-ELptfWUDoQNcj4Zf34L7p6psPwesdgXKTtSkG2Dod0irMF1PCM0gNnB4WmWT5CJs0YOuJdSeqt4R_2PdZ1tnF3CPMtKQZnuKW1npzKBWovwTb8dPN-IizHoB84zv57T0547zK9vrYxQrQnfkYbibDv4THDAOF1lSW0GtjPWNlT7iYv8esC96MRtQvNRFwoSasHEKNiY93wA12eYSOM_B3D626WkT-ZiEWZ8jRk9JceoA7hSFfAvqvfLhSah1S7ETongQv2oQ3OoJJibb46ccK7d1dlh3-C78hQeQWuumto3f1RzzXXMzEUJWyiqe4zI0vj1XJgtnpmFFVGcoW_XYoMXc5MCpoQNuYFSbGjkZbDcbTS0gzVMywppc1a8sAsTjD85ngKD9ekGIZObUIjmUgN9wcwsNUsjOr3uIJz5qh1YRylJFVaowHs0vRbxDr5S15k9-_91BB6sgKGszF6CglGMZqJOQBrmuHP7tM3AkifhX4AFxNkyQu-Mu0Ep1ZRVSjemMG5fLNJrIzgL=w1486-h936-no",
			      		subtitle: "Built with Ruby on Rails, this is a directory for local businesses in the Democratic Repulic of Congo.",
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
			      		image_url: "https://lh3.googleusercontent.com/4sbauG2sgtFJXNSE_29J1iBD_4fO4VsloMWxKC-WL24EnyqZ9J5IOlcuz_U6P0EFtOfaK7udsN9dpwNKhQryiO5ZE-OvShKiQrOEeWPRgjsQ-itWHd_JTqTHqaHDTFe2DRYYPC4anRKOWnOwEP8Cm7tNgaIuow9er9hKlJT07uVVPVVr49OS2OKglHTpoqDT2hGojzmeHtRexL0ur2WJ5qCy3KtRZWwQ3kTtHaq5FLD_z3vD5W8ruFdoe7G9n0ALjm43QbYvKwAOeQRmyVVNLJJ6sqlCczib-NQOCBq92VRvDcNFdn98YOms-ZMLtYdIb1Z8v93JgaCOCK5Z-EsHojpJmArhF2EVcXPYXyo3e8-JnGy-S60Hc9GMi8SxIRy5AbqrAsVg9upa3rfp2TYADBQ6isxQjrXuY3tn3xmouTH7zrYD5TgkZS_IRKV-Mw7WDZNE7IqGYey7vVMwKi_OPfLQMeKw8Bqab_WLK0vYUhECgJ_-1mZ1stpE_wXn6jr1SqWH4TX-LDe7ohDHEGygmourZ6fPUZLp70L8BZQeyKCh4oIAbcanlhkGZ6xOtW97AXaDbdnu-jz5LIKocfm44Wk2iPTWw42Xnnl00rjYNCz4ye9FoQi_=w1486-h862-no",
			      		subtitle: "Built with Ruby on Rails, this is a web app that sends reminders via text to a user's contacts.",
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
		      		title: "Vacationer",
		      		image_url: "https://lh3.googleusercontent.com/y1k0ynx9cApP6zrPX-p0r1T2WOC6qjoLvXn-jV405z7b5sFkuQCYcaL49pUv-_u5dsaD3PWqxDuKCzfh6ELKJQ9TTEOR2KmEWTpNs-5ezHbE5jXbXu706jO7yLzfzJO-ksNUppd6uhzsvaR19ZxNXFI291Cbwv6iVKDsh9Gs7UXdl0y9Thjw2z8hsuH4W9zBSz_PSKMvBNkLITrmD0rL_RyYzejb3lGQqMWNgvHtWnJYW9XW6VgS1HSUJZHZSlkAWkv-LzJ5RX55tRYIVe5G2Z9_Va4UreE4kPFZp1Aa_5hIGOJVFnAfuAz89QywsBjRCEnFi73ByC-OmfZQlqUgev3gFYlgyYVEJTHt-NsuQpb6H6QqVVL2It6lFVOo6ad3EmNgMs3XbFstfSg3iNESqhiobpD9KAxKnRusjQQkBjkepobeHSTBET6m4E9DbmZXFHwGKbbQAz1YE7qBMDr-3uLRHPecyN7zN73uDykDe0Wwoc6gD2nNUV2QzcBjsLCIWaH39YexbrMbl3zitJlcEu931L1YQmfChqrWwOg6JM4FQx-bi62pYMmBWqMWm9GcRGW2MqVym0exjFPIvcLPCOM0feb6cPVMkn6o6_9p4vO5kae3gyzI=w1486-h618-no",
		      		subtitle: "Tech used: React.js, HTML, CSS, Javascript, Webpack, Babel",
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
    	deliver_message(postback.sender['id'], skills_message)
    when 'PROJECTS'
    	deliver_projects_message(postback.sender['id'])
    when 'SEE_RESUME'
    	deliver_message(postback.sender['id'], "Testing one two three")
    when 'RESUME_BOT'
    	deliver_bot_message(postback.sender['id'])
    when 'VACATIONER'
    	deliver_vacationer_message(postback.sender['id'])
    else
    	deliver_message(postback.sender['id'], "I'm sorry, I didn't understand that...")
  end
end

##################
# Old

# def deliver_projects_message(recipient_id)
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



