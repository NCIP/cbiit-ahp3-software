require 'ahp_audit/anthillpro'

module AhpAudit
	describe AnthillPro do

		it "should not allow LDAP user to login without a password" do
      anthill = AhpAudit::AnthillPro.new
    end

		it "should not allow admin to login without a password" do
      pending
#			@anthill = AhpAudit::AnthillPro.new
#				sleep 5
#			@anthill.close
		end

		it "should allow admin to login with correct password" do
      pending
    end

		it "should have more than 3 agents listening" do
      pending
    end

		it "should have more than 3 agents in the build farm" do
      pending
    end

		it "should have Dashboard with automated and manual folders" do
      pending
    end

		it "should include LDAP user elkins" do
      pending
    end

		it "should include LDAP user adamsa" do
      pending
    end

		it "should include LDAP user vitroa" do
      pending
    end

		it "should build maven archetype successfully" do
      pending
    end

		it "should not show passwords in build logs" do
      pending
    end

	end
end
