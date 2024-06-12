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

class DataFoodConsortium::Connector::CatalogItem
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:CatalogItem".freeze

	# @return [IDefinedProduct]
	attr_accessor :product

	# @return [String]
	attr_accessor :sku

	# @return [Real]
	attr_accessor :stockLimitation

	# @return [IOffer]
	attr_accessor :offers

	# @return [ICatalog]
	attr_accessor :catalogs

	# @param semanticId [String]
	# @param product [IDefinedProduct]
	# @param sku [String]
	# @param stockLimitation [Real]
	# @param offers [IOffer]
	# @param catalogs [ICatalog]
	def initialize(semanticId, product: nil, sku: nil, stockLimitation: nil, offers: [], catalogs: [])
		super(semanticId)
		@product = product
		@sku = sku
		@stockLimitation = stockLimitation
		@offers = offers
		@catalogs = catalogs
		self.semanticType = "dfc-b:CatalogItem"
		registerSemanticProperty("dfc-b:references", &method("product")).valueSetter = method("product=")
		registerSemanticProperty("dfc-b:sku", &method("sku")).valueSetter = method("sku=")
		registerSemanticProperty("dfc-b:stockLimitation", &method("stockLimitation")).valueSetter = method("stockLimitation=")
		registerSemanticProperty("dfc-b:offeredThrough", &method("offers")).valueSetter = method("offers=")
		registerSemanticProperty("dfc-b:listedIn", &method("catalogs")).valueSetter = method("catalogs=")
	end
	


end
