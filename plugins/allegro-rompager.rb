##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Allegro-RomPager"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-26
  # v0.2 # Added EXT HTTP header. 
  "Andrew Horton", # v0.3 # 2016-04-19 # Replaced passive function with match. 
  # Andrew Horton # v0.4 # 2019-07-10 # Fix warning: character class has duplicated range
]
version "0.4"
description "The RomPager suite of products enable your engineering team to leverage proven Web-based technologies in your networked embedded device."
website "http://www.allegrosoft.com/embedded-web-server"

# ShodanHQ results as at 2010-10-26 #
# 2,247,816 for "server: RomPager"
# 190,212   for "server: Allegro-Software-RomPager" 
# 2,087,647 for "EXT: "

matches [
	# Server # RomPager
	{ :version=>/^[\s]*RomPager\/([^\s]+)/, :search=>"headers[server]" },

	# Server # Allegro-Software-RomPager
	{ :version=>/^[\s]*Allegro-Software-RomPager\/([^\s]+)/, :search=>"headers[server]" },
	
	# EXT
	{ :text=>"", :search=>"headers[ext]" },

]

end

