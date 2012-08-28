require 'watir-webdriver'
require 'highline/import'
require_relative '../lib/ahp_audit/anthillpro'

anthill = AhpAudit::AnthillPro.new

anthill.list_environments


sleep 5
anthill.close

