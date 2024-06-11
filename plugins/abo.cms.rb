##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ABO_CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-08
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "ABO.CMS"
website "http://www.abocms.com/"

# ShodanHQ results as at 2011-04-08 #
# 54 for A-Powered-By

matches [
	
	# Version Detection # A-Powered-By Header
	{ :version=>/^ABO\.CMS( E-commerce| Corporative)? ([\d\.]+)/, :offset=>1 , :search=>"headers[a-powered-by]" },

]

end


