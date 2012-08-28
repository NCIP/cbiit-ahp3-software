require 'highline/import'

module AhpAudit
	module Password
		def get_password(prompt="Password: ")
		  ask(prompt) {|q| q.echo = false}
		end
	end
end
