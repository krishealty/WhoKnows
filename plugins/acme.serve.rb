##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Acme_Serve"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-01
  "Andrew Horton", # v0.2 # 2016-04-18 # Replaced passive function with match. 
]
version "0.2"
description "Minimal Java HTTP server class. This class implements a very small embeddable HTTP server. It runs Servlets compatible with the API used by JavaSoft's JavaServer server. Used as an embedded server for many devices."
website "http://www.acme.com/java/software/Acme.Serve.Serve.html"

# ShodanHQ results as at 2011-06-01 #
# 600 for Acme.Serve
# 592 for Acme.Serve -TJWS
#  95 for Acme.Serve -JWS
#  87 for Acme.Serve -JWS -TJWS
#  87 for Acme.Serve -Rogatkin

matches [
	# Version Detection
	{ :search=>"headers[server]", :version=>/^Acme\.Serve\/v([\d\.]+) of [\d]{2}[a-z]{3}[\d]{2}$/ },
	# Date Detection
	{ :name=>"Date from server header", :search=>"headers[server]", :string=>/^Acme\.Serve\/v[\d\.]+ of ([\d]{2}[a-z]{3}[\d]{2})$/ },
]

end

