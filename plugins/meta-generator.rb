##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MetaGenerator"
authors [
  "Andrew Horton",
  # v0.2 # remove :certainty. 
  # v0.3 # 2011-01-26 # Updated regex. 
	"Andrew Horton", # v0.4 # 2019-07-10 # Fix warning: character class has duplicated range
]
version "0.4"
description "This plugin identifies meta generator tags and extracts its value."

# Matches #
matches [

	# Extract value from the content param
	{ :string=>/<meta[^>=]+content[\s]*=[\s]*["|']?([^"^'^>]+)["|']?[^>=]+name[\s]*=[\s]*["|']?generator["|']?/i },
	{ :string=>/<meta[^>=]+name[\s]*=[\s]*["|']?generator["|']?[^>=]+content[\s]*=[\s]*"([^"'>]+)"/i },

]

end

