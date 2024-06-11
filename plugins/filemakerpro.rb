##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FileMakerPro"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "FileMaker Pro web publishing - FileMaker Pro is powerful, easy-to-use database software that helps you and your team get any task done faster. Millions of people in business, government, and education use FileMaker Pro to effortlessly manage all their information on Windows, Mac, and the web."
website "http://www.filemaker.com.au/products/filemaker-pro/"

# ShodanHQ results as at 2011-03-13 #
# 951 for FileMakerPro
# 127 for FileMakerPro -WebCompanion

matches [

	# HTTP Server Header
	{ :regexp=>/^FileMakerPro/, :search=>"headers[server]" },
	# Version Detection # HTTP Server Header
	{ :version=>/^FileMakerPro\/([^\s]+)/, :search=>"headers[server]" },
	# Module Detection # HTTP Server Header
	{ :module=>/^FileMakerPro\/[^\s]+ (WebCompanion\/.+)$/, :search=>"headers[server]" },

]

end

