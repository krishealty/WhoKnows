# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "4D"
authors [
  "Brendan Coles <bcoles@gmail.com>"
]
version "0.2"
description "4D web application deployment server"
website "http://www.4d.com/products.html"

# ShodanHQ results
# 431 for 4D_v11_SQL

# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^4D_v[\d]{1,2}(_SQL)?\/([\d\.]+)$/, :offset=>1 },

]

end

