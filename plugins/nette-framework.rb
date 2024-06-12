##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Nette-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-08
]
version "0.1"
description "Nette Framework is a powerful framework for rapid and easy creation of high quality and innovative web applications in PHP 5.3"
website "http://nette.org/cs/"

# ShodanHQ results as at 2011-04-08 #
# 105 for X-Powered-By: Nette Framework



# Passive #
passive do
	m=[]

	# X-Powered-By Header
	m << { :name=>"X-Powered-By" } if @headers["x-powered-by"] =~ /^Nette Framework$/

	# Return passive matches
	m

end

end

