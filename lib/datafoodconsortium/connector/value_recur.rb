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

class DataFoodConsortium::Connector::ValueRecur
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "http://www.w3.org/2002/12/cal/icaltzd#Value_RECUR".freeze

	# @return [String]
	attr_accessor :byday

	# @return [String]
	attr_accessor :bymonth

	# @return [String]
	attr_accessor :freq

	# @return [Integer]
	attr_accessor :interval

	

	

	

	

	

	

	

	

	# @param semanticId [String]
	# @param byday [String]
	# @param bymonth [String]
	# @param freq [String]
	# @param interval [Integer]
	def initialize(semanticId, byday: nil, bymonth: nil, freq: nil, interval: nil)
		super(semanticId)
		@byday = byday
		@bymonth = bymonth
		@freq = freq
		@interval = interval
		self.semanticType = "http://www.w3.org/2002/12/cal/icaltzd#Value_RECUR"
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#byday", &method("byday")).valueSetter = method("byday=")
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#bymonth", &method("bymonth")).valueSetter = method("bymonth=")
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#freq", &method("freq")).valueSetter = method("freq=")
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#interval", &method("interval")).valueSetter = method("interval=")
	end
	


end
