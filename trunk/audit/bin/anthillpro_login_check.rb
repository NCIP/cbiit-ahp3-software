require 'rubygems'
require 'watir-webdriver'
require 'highline/import'

class AnthillPro < Watir::Browser

  def initialize
    super(:ff)
  end

	def login(password, userid='admin', url='https://anthillpro3.nci.nih.gov/')
		self.goto url
		self.text_field(name: "param_username").set(userid)
		self.text_field(name: "param_password").set(password)
		self.button(name: "Login").click
	end

  def list_environments
    self.link(text: 'System').click
    self.link(text: 'Environments').click
  end

end

def get_password(prompt="Password: ")
  ask(prompt) {|q| q.echo = false}
end

password = get_password

anthill = AnthillPro.new

# anthill.login(password, userid, 'https://anthillpro3.nci.nih.gov/')
anthill.login(password)
anthill.list_environments


sleep 5
anthill.close

