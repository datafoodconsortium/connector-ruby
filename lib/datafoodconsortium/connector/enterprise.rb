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




require "datafoodconsortium/connector/supplied_product"

require "datafoodconsortium/connector/agent"

require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::Enterprise < DataFoodConsortium::Connector::Agent

	

	attr_accessor :name
	attr_accessor :description
	attr_accessor :vatNumber
	attr_accessor :customerCategories
	attr_accessor :suppliedProducts
	attr_accessor :catalogItems

	def initialize(name)
		super()
		self.semanticType = "http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#Enterprise"
		self.name = name
		self.description = nil
		self.vatNumber = nil
		self.customerCategories = []
		self.suppliedProducts = []
		self.catalogItems = []
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasName") { self.name }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasDescription") { self.description }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#VATnumber") { self.vatNumber }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#defines") { self.customerCategories }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#supplies") { self.suppliedProducts }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#manages") { self.catalogItems }
	end
	

	def addCustomerCategory(customerCategory)
		self.customerCategories.push(customerCategory)
	end
	
	def addSupplyProduct(suppliedProduct)
		self.suppliedProducts.push(suppliedProduct)
	end
	
	def addCatalogItem(catalogItem)
		self.catalogItems.push(catalogItem)
	end
	
	def addSupplyProduct(suppliedProduct)
		self.suppliedProducts.push(suppliedProduct)
	end
	
	def addCatalogItem(catalogItem)
		self.catalogItems.push(catalogItem)
	end
	
	def addCustomerCategory(customerCategory)
		self.customerCategories.push(customerCategory)
	end
	

end
