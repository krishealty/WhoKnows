##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Access-Control-Allow-Methods"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "Specifies the method or methods allowed when accessing a resource"
website "http://www.w3.org/TR/2008/WD-access-control-20080912/"

# ShodanHQ results as at 2011-08-20 #
# 106 for Access-Control-Allow-Methods



# Matches #
matches [

# Access-Control-Allow-Methods Header
{ :search=>"headers[access-control-allow-methods]", :string=>/(.+)/ },

]

end

