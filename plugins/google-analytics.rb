##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Google-Analytics"
authors [
  "Peter van der Laan",
]
version "0.1"
description "This plugin identifies the Google Analytics account."
website "http://www.google.com/analytics/"

# Matches #
matches [

	# Google Analytics
	# String:  _gaq.push(['_setAccount', 'UA-12345678-1']);
	# String:  _gaq.push(['_setAccount', 'UA-1234567-12']);
	{ :account=>/_gaq.push\(\['_setAccount',[\s]*'(\w{2}-\d{1,}-\d{1,})'\]/},

	# New Google Universal Analytics
	# String : ga('create', 'UA-12345678-1', 'example.com');
	# String : ga('create', 'UA-1234567-12', 'example.com');
	{ :version=>"Universal", :account=>/ga\([\s]*'create',[\s]*'(\w{2}-\d{1,}-\d{1,})',/}
]

end

