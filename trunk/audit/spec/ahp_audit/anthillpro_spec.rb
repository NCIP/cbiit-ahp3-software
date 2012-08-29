require 'ahp_audit/anthillpro'

module AhpAudit
	describe AnthillPro do

		it "should not allow LDAP user to login without a password"

		it "should not allow admin to login without a password" do
			@anthill = AhpAudit::AnthillPro.new
				sleep 5
			@anthill.close
		end

		it "should allow admin to login with correct password"

		it "should have more than 3 agents listening"

		it "should have more than 3 agents in the build farm"

		it "should have Dashboard with automated and manual folders"

		it "should include LDAP user elkins"

		it "should include LDAP user adamsa"

		it "should include LDAP user vitroa"

		it "should build maven archetype successfully"

		it "should not show passwords in build logs"

	end
end
