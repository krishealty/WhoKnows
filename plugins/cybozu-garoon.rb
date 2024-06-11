##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cybozu-Garoon"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-31
  "Andrew Horton", # v0.2 # 2016-04-19 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Cybozu Garoon is a web-based groupware suite integrating key collaboration applications that provide a ready-to-run intranet solution."
website "http://cybozu.com/en/grn/product/"

# ShodanHQ results as at 2011-05-31 #
# 251 for Cybozu-WS
# Most results are from Japan

matches [
	# Version Detection # HTTP Server Header
	{ :search=>"headers[server]", :version=>/^Cybozu-WS\/([^\s]+)$/ },

]

end

