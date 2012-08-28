require 'ahp_audit/anthillpro'

module AhpAudit
	describe AnthillPro do

	

		it "should not allow admin to login without a password" do
			@anthill = AhpAudit::AnthillPro.new
				sleep 5
			@anthill.close
		end

		it "should not allow LDAP user to login without a password" do

		end

		it "should allow admin to login with a proper password" do

		end

		it "should have agents listening" do
		end



	end
end