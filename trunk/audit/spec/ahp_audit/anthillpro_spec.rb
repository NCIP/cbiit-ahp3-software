require 'ahp_audit/anthillpro'

module AhpAudit
	describe AnthillPro do

		it "should not allow LDAP user to login without a password" do
		end

		it "should not allow admin to login without a password" do
			@anthill = AhpAudit::AnthillPro.new
				sleep 5
			@anthill.close
		end

		it "should allow admin to login with correct password" do
		end

		it "should have more than 3 agents listening" do
		end

		it "should have more than 3 agents in the build farm" do
		end

		it "should have Dashboard with automated and manual folders" do
		end

		it "should build maven archetype successfully" do
		end

		it "should include LDAP user elkins" do
		end

		it "should include LDAP user adamsa" do
		end

		it "should include LDAP user vitroa" do
		end

	end
end
