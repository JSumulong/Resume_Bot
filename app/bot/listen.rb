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
			      		image_url: "https://lh3.googleusercontent.com/h9EQ0I8W_7ms0-QKxAyTRZuYHAxSYSf1SUecTWdI2A7R1bjmfFQSpJO9EB9rJQ3RpyVhz4eRQCkMktoZcvZWrDIA8NCijetczlqg3oR7RZM_6m8cFUhiJG2vRLlCdeCW_KzIRuWIRbqzLSSkJiWV1vXgl8XG_YVyLUomibiRDH-tSlaiSN4p79PBkOIrpsCtszpsX4yq8UkM_tq-qaSY-p4IT7LKVrCKeOZC20iH-l3xwuwO69JKJpabpsII8_39ien8LUZAtQRASSFUDawjUWfFsIVDrYmXs2_dtX-bPZccl0Srh56MFY6dZKtk22pXqHQJrFt1UwYgxIsm7wnFtKnLGUJESRFbDk1inpLdK0-Kz_zXrLZ3iShuU-z0X2Pd8epdnjE9_Mz9ODMLST5rwSitdetBF2vADJA-XS52ni2znWNUlr0VnH0rK3HA7TcJ3eFBaACyF9CffgBaa0zPwURR9P4OF3dK-WENzkaB2szEl0Ua5yaGYQ-zejKTfN-hYdLdR0rHgE0kCvnu8ZjZnw3Rl8nrvmCR9pnZB9yTOCXfbn91a2WmM0djsQcam4-opXoxLqbE-bCvuLrColZw4bhGtIM3g06fY7PL7ZYGljP3iH0gir2v=w646-h678-no",
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
			      		image_url: "https://lh3.googleusercontent.com/rsYz2eguUaF-wPRJ-FTfTNpBiSkpRdd7m4p8LFZGwkjCmKIdeRmptI0sp8ZkV18Z88SYd1YxDPoSEIeu-WC-0o5MjaLptSY0bHtB76TvcwTgB_jANV9R_HA5VrBVHDdFuSXtsZguq2JSq9x9I5stan_mu1TOsmGkuO4vYC8W03z8TNOxuU7cKj5wsrI3uvw_gj8hbzkFikTmBIN2kHnvFeukUM0g1h3uw7VLb1Lirf4DMgeZCyxlbKofmFvZztf8dJZPetsfKd9YP2GdHCxAw0r1h1yQjihLrECIa3Pq_KF25cqNxwUAQSzpLUWEwXmHzb_gp3_rMljWTup0s0ZNtYQct0sYtwS5LzGarpKgbL4VpeWHWgArNIUThC2djDNOVWBrM7WZyy9fJm2nWQykjHJnaqjq9KA1iQaYHGtwHhm_86MR11HNtVvqd3J6bx_4EBRd0asOdD76XpXZis-MPj2dZpojcxpK7v7rc7x-7C8GpHKsqUeFpgSVbwgdGkoPoMkH5_NPPz2v0l_TwyR8e4Rw-E0irim-CbAgDU662bN9US_pnn2h3ZMaVDJnva0bk4kUcuBKbtwjfPAh6v6hImyEf8AJXktRrcMduKNDqrSnEIyMU78U=w1488-h788-no",
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
		      		image_url: "https://lh3.googleusercontent.com/y1k0ynx9cApP6zrPX-p0r1T2WOC6qjoLvXn-jV405z7b5sFkuQCYcaL49pUv-_u5dsaD3PWqxDuKCzfh6ELKJQ9TTEOR2KmEWTpNs-5ezHbE5jXbXu706jO7yLzfzJO-ksNUppd6uhzsvaR19ZxNXFI291Cbwv6iVKDsh9Gs7UXdl0y9Thjw2z8hsuH4W9zBSz_PSKMvBNkLITrmD0rL_RyYzejb3lGQqMWNgvHtWnJYW9XW6VgS1HSUJZHZSlkAWkv-LzJ5RX55tRYIVe5G2Z9_Va4UreE4kPFZp1Aa_5hIGOJVFnAfuAz89QywsBjRCEnFi73ByC-OmfZQlqUgev3gFYlgyYVEJTHt-NsuQpb6H6QqVVL2It6lFVOo6ad3EmNgMs3XbFstfSg3iNESqhiobpD9KAxKnRusjQQkBjkepobeHSTBET6m4E9DbmZXFHwGKbbQAz1YE7qBMDr-3uLRHPecyN7zN73uDykDe0Wwoc6gD2nNUV2QzcBjsLCIWaH39YexbrMbl3zitJlcEu931L1YQmfChqrWwOg6JM4FQx-bi62pYMmBWqMWm9GcRGW2MqVym0exjFPIvcLPCOM0feb6cPVMkn6o6_9p4vO5kae3gyzI=w1486-h618-no",
		      		subtitle: "Tech used: Ruby, Rails, PostGreSQL, Facebook-Messenger Gem",
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
	      		image_url: "https://lh3.googleusercontent.com/08Z3_UQi9Yqtu_liE8wc5GHygw_P0AD_qNbu2yId92MfUkMQObQS3qgQAdyfcYyGWlY774TsUrPjBThgp-hPme9kqdjlbfIweSPSuKtlUsscGYD77GAV3LoUCKT9qZwaeMmn3KGYRgRbWh8JG7JgnTItrrWdzSADCAfrCZ6DtpkjHUhNd8S9AG-3lvwWVL4B1RMCjiDK86vXfHgyMIpEWaycTTcqpPvTZ79mJp_tGGQlVsPqKDvjIyGygbsA6gM7ml9T_5c5oW4m7VY-pAy5xZkiUx3pQcbq9QwIT5nyTYLo8O9r_paRWxzO21Aa2Refi9eapYaI7jq50noCyAqQjuUBncrH_iIKKhOhkWxjxVeFlDmtaOGPwgdOijyhlbrP4XRO9Dz3ofsIyOdUtfHFgL5N7Ng9Of74LjyKtTcV3RfXYV2I4cyF1O2t6vvW-0iDR5ETGH8wY2H2qxyEh3xqM6Y3g6KG2xraH6hv0aNm0IQscVs3bFWQNiBtaSNcCoW7I5QvhLC_CVE5-bJqx2KzsJ2MKVvBCNDyihLdOLa7xs221uwqUKucIyX0J1L6GOMh2ioh3zgFINajf0DlgL4v9J_fKmrewe7C62u3wX6DW7LDDmLNiE7U=w1486-h684-no",
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



