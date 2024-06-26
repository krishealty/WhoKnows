##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "bSpeak"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-27
  # v0.2 # 2011-01-08 # Updated version detection. 
]
version "0.2"
description "bSpeak is 26th Avenue's threaded message board application. It is full-featured and fast, allowing you to create a community, provide online support, or provide announcements for your website."
website "http://www.bspeak.com/"

# 23 results for "powered by bSpeak" @ 2010-08-27

# Dorks #
dorks [
'"powered by bSpeak"'
]



# Matches #
matches [

	# Default title
	{ :text=>' - powered by bSpeak</TITLE>' },

	# Version Detection # Powered by text
	{ :version=>/<br><div align="center"><span class="tinytext">Powered by <\/span><a href="http:\/\/www.bspeak.com" class="tinylink" target="bspeak_window">bSpeak ([\d\.]+)<\/a><\/div>/ },

]

end

