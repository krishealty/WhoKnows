##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Daisy"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-09
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Daisy is a content management system that offers rich out-of-the-box functionality combined with solid foundations for extensibility and integration. Daisy consists of two main components: a stand-alone repository server accessible through HTTP/XML (using the ReST style of WebServices) and/or a high-level (remote) Java API, and an extensive editing and publishing front-end web application running inside Apache Cocoon."
website "http://daisycms.org/daisy/about.html"

# Documentation: http://cocoondev.org/books/daisy_docs_book--20070924-074927/publications/html-one-page/output/index.html

# ShodanHQ results as at 2011-06-09 #
# 26 for X-Daisy-Version

matches [

	# HTTP X-Daisy-Version Header
	{ :regexp=>//, :search=>"headers[x-daisy-version]" },

	# HTTP X-Daisy-Version # Version Detection
	{ :version=>/^([^\s]+) \(build: [^\s]+/, :search=>"headers[x-daisy-version]" },

	# HTTP X-Daisy-Version # Build Detection
	{ :string=>/^[^\s]+ \(build: ([^\s]+)/, :search=>"headers[x-daisy-version]" },

]


end

