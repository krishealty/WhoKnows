##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BlackJumboDog"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
]
version "0.1"
description "SapporoWorks BlackJumboDog provides server functions (HTTP, FTP, etc)"
website "http://www.spw02.sakura.ne.jp/spw/"

# ShodanHQ results as at 2011-03-13 #
# 453 for BlackJumboDog
# Most results are from Japan



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^BlackJumboDog$/ },

# Version Detection
{ :search=>"headers[server]", :version=>/^BlackJumboDog Version (.+)$/ },

]

end
