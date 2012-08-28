require_relative 'password'

module AhpAudit
  class AnthillPro < Watir::Browser
    include Password

    def initialize
      @password = get_password
      super(:ff)
      login
    end

  	def login(userid='admin', url='https://anthillpro3.nci.nih.gov/')
  		self.goto url
  		self.text_field(name: "param_username").set(userid)
  		self.text_field(name: "param_password").set(@password)
  		self.button(name: "Login").click
  	end

    def list_environments
      self.link(text: 'System').click
      self.link(text: 'Environments').click
    end

  end
end