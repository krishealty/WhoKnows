##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cougar"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-07-27
  "Andrew Horton", # v0.2 # 2016-04-19 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Cougar video conferencing server"
website "http://www.cougarconference.com/"

# ShodanHQ results as at 2011-07-27 #
# 21,987 for Cougar
# 21,026 for Cougar Supported

matches [

	{ :search=>"headers[server]", :version=>/^Cougar\/([\d\.]+)$/ }

]

end

