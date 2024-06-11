##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Embedthis-AppWeb"
authors [
  "Andrew Horton",
  # Andrew Horton, # v0.2 # 2016-04-19 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Web server for embedded devices"
website "http://embedthis.com/products/appweb/embedded-web-server.html"

matches [
	{ :version=>/Mbedthis-Appweb\/(.*)/, :search=>"headers[server]" },
	{ :regexp=>/^Mbedthis-Appweb/, :search=>"headers[server]" },
]

end

