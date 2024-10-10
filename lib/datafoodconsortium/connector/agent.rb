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



require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::Agent
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:Agent".freeze

	# @return [IAddress]
	attr_accessor :localizations

	# @return [IPhoneNumber]
	attr_accessor :phoneNumbers

	# @return [String]
	attr_accessor :emails

	# @return [String]
	attr_accessor :websites

	# @return [ISocialMedia]
	attr_accessor :socialMedias

	# @return [String]
	attr_accessor :logo

	# @param semanticId [String]
	# @param localizations [IAddress]
	# @param phoneNumbers [IPhoneNumber]
	# @param emails [String]
	# @param websites [String]
	# @param socialMedias [ISocialMedia]
	# @param logo [String]
	def initialize(semanticId, localizations: [], phoneNumbers: [], emails: [], websites: [], socialMedias: [], logo: nil)
		super(semanticId)
		@localizations = localizations
		@phoneNumbers = phoneNumbers
		@emails = emails
		@websites = websites
		@socialMedias = socialMedias
		@logo = logo
		self.semanticType = "dfc-b:Agent"
		registerSemanticProperty("dfc-b:hasAddress", &method("localizations")).valueSetter = method("localizations=")
		registerSemanticProperty("dfc-b:hasPhoneNumber", &method("phoneNumbers")).valueSetter = method("phoneNumbers=")
		registerSemanticProperty("dfc-b:email", &method("emails")).valueSetter = method("emails=")
		registerSemanticProperty("dfc-b:websitePage", &method("websites")).valueSetter = method("websites=")
		registerSemanticProperty("dfc-b:hasSocialMedia", &method("socialMedias")).valueSetter = method("socialMedias=")
		registerSemanticProperty("dfc-b:logo", &method("logo")).valueSetter = method("logo=")
	end
	


end
