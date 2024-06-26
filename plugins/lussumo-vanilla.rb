##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Lussumo-Vanilla"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-07
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "A free, open-source, standards-compliant discussion forum for the web. "
website "http://code.google.com/p/lussumo-vanilla/"

# ShodanHQ results as at 2011-03-13 #
# 74 for Lussumo Vanilla

# Google results as at 2011-05-07 #
# 20 for inurl:"people.php?PageAction=SignOutNow"

# Dorks #
dorks [
'inurl:"people.php?PageAction=SignOutNow"'
]

matches [
	
	# HTTP x-powered-by
	{ :version=>/Lussumo Vanilla/, :search=>"headers[x-powered-by]" },

	# Version Detection # HTTP x-powered-by
	{ :version=>/Lussumo Vanilla ([^\s]+)/, :search=>"headers[x-powered-by]" },

]

end

