##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Campsite"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-15
  # v0.2 # 2011-01-10 # Updated version detection. 
]
version "0.2"
description "Campsite is a multilingual content management system (CMS) for news websites."
website "http://www.sourcefabric.org/"

# 28 results for "powered by campsite" @ 2010-08-15

# Dorks #
dorks [
'"powered by campsite"'
]



# Matches #
matches [

	# Powered by image
	{ :text=>'<a href="http://www.campware.org" target="_blank"><img src="/templates/img/powered.gif" alt="powered by campsite" border="0"/></a>' },

	# Powered by text
	{ :text=>'powered by <a href="http://www.campware.org" target="_blank">CAMPSite</a></p>' },
	{ :text=>'powered by <a href="http://campsite.campware.org" target="_blank">Campsite</a>' },
	{ :text=>'powered by <a href="http://campsite.sourcefabric.org" target="_blank">Campsite</a>' },

	# Version Detection # Meta generator
        { :version=>/<meta name="generator" content="Campsite ([\d\.a-z]+)" \/>/ },

]

end

