##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mongrel"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-15
]
version "0.1"
description "Mongrel is an open-source HTTP library and web server written in Ruby."
website "http://rubyforge.org/projects/mongrel/"

# ShodanHQ results as at 2011-03-13 #
# 5,815 for Mongrel



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Mongrel ([\d][^\s]+)/ },

]

end

