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

class DataFoodConsortium::Connector::Enterprise < DataFoodConsortium::Connector::Agent

	

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [String]
	attr_accessor :vatNumber

	# @return [ICustomerCategory]
	attr_accessor :customerCategories

	# @return [ICatalog]
	attr_accessor :catalogs

	# @return [ICatalogItem]
	attr_accessor :catalogItems

	# @return [ISuppliedProduct]
	attr_accessor :suppliedProducts

	# @return [ITechnicalProduct]
	attr_accessor :technicalProducts

	# @return [IPerson]
	attr_accessor :mainContact

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param vatNumber [String]
	# @param customerCategories [ICustomerCategory]
	# @param catalogs [ICatalog]
	# @param catalogItems [ICatalogItem]
	# @param suppliedProducts [ISuppliedProduct]
	# @param technicalProducts [ITechnicalProduct]
	# @param mainContact [IPerson]
	# @param localizations [IAddress]
	# @param phoneNumbers [IPhoneNumber]
	# @param emails [String]
	# @param websites [String]
	# @param socialMedias [ISocialMedia]
	def initialize(semanticId, name: "", description: "", vatNumber: "", customerCategories: [], catalogs: [], catalogItems: [], suppliedProducts: [], technicalProducts: [], mainContact: nil, localizations: [], phoneNumbers: [], emails: [], websites: [], socialMedias: [])
		super(semanticId, localizations: localizations, phoneNumbers: phoneNumbers, emails: emails, websites: websites, socialMedias: socialMedias)
		@name = name
		@description = description
		@vatNumber = vatNumber
		@customerCategories = customerCategories
		@catalogs = catalogs
		@catalogItems = catalogItems
		@suppliedProducts = suppliedProducts
		@technicalProducts = technicalProducts
		@mainContact = mainContact
		self.semanticType = "dfc-b:Enterprise"
		registerSemanticProperty("dfc-b:name") { self.name }
		registerSemanticProperty("dfc-b:hasDescription") { self.description }
		registerSemanticProperty("dfc-b:VATnumber") { self.vatNumber }
		registerSemanticProperty("dfc-b:defines") { self.customerCategories }
		registerSemanticProperty("dfc-b:maintains") { self.catalogs }
		registerSemanticProperty("dfc-b:manages") { self.catalogItems }
		registerSemanticProperty("dfc-b:supplies") { self.suppliedProducts }
		registerSemanticProperty("dfc-b:proposes") { self.technicalProducts }
		registerSemanticProperty("dfc-b:hasMainContact") { self.mainContact }
	end
	


end
