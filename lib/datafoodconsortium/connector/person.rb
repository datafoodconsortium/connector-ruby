# MIT License
# 
# Copyright (c) 2023 Maxime Lecoq <maxime@lecoqlibre.fr>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require "datafoodconsortium/connector/agent"



require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::Person < DataFoodConsortium::Connector::Agent

    SEMANTIC_TYPE = "dfc-b:Person".freeze

	# @return [String]
	attr_accessor :firstName

	# @return [String]
	attr_accessor :lastName

	# @return [IEnterprise]
	attr_accessor :affiliatedOrganizations

	# @param semanticId [String]
	# @param firstName [String]
	# @param lastName [String]
	# @param affiliatedOrganizations [IEnterprise]
	# @param localizations [IAddress]
	# @param phoneNumbers [IPhoneNumber]
	# @param emails [String]
	# @param websites [String]
	# @param socialMedias [ISocialMedia]
	def initialize(semanticId, firstName: "", lastName: "", affiliatedOrganizations: [], localizations: [], phoneNumbers: [], emails: [], websites: [], socialMedias: [])
		super(semanticId, localizations: localizations, phoneNumbers: phoneNumbers, emails: emails, websites: websites, socialMedias: socialMedias)
		@firstName = firstName
		@lastName = lastName
		@affiliatedOrganizations = affiliatedOrganizations
		self.semanticType = "dfc-b:Person"
		registerSemanticProperty("dfc-b:firstName", &method("firstName")).valueSetter = method("firstName=")
		registerSemanticProperty("dfc-b:familyName", &method("lastName")).valueSetter = method("lastName=")
		registerSemanticProperty("dfc-b:affiliates", &method("affiliatedOrganizations")).valueSetter = method("affiliatedOrganizations=")
	end
	


end
