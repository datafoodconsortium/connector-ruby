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

	# @return [Contactable]
	attr_accessor :contacts

	# @return [Localizable]
	attr_accessor :localizations

	# @param semanticId [String]
	# @param contacts [Contactable]
	# @param localizations [Localizable]
	def initialize(semanticId, contacts: [], localizations: [])
		super(semanticId)
		@contacts = contacts
		@localizations = localizations
		self.semanticType = "http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#Agent"
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasAddress") { self.localizations }
	end
	

	
	def addContact(contact)
		self.contacts.push(contact)
	end
	
	
	def addLocalization(localization)
		self.localizations.push(localization)
	end
	
	
	def removeContact(contact)
		raise "Not yet implemented."
	end
	
	
	def removeLocalization(localization)
		raise "Not yet implemented."
	end
	

end
