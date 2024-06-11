##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Check-Point-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-18
]
version "0.1"
description "Check Point Firewall"
website "http://www.checkpoint.com/"

# ShodanHQ results as at 2011-03-13 #
# 6,527 for fwauthredirect



# Matches #
matches [

# HTTP Location Header
{ :search=>"headers[location]", :regexp=>/\/fwauthredirect[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}id[\d]+$/ },

# System Name Detection
{ :status=>401, :string=>/FW-1 at ([^\s]+): Unauthorized to access the document\./ },

]

end

