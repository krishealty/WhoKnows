##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Lotus-Notes-Traveler"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-07-22
]
version "0.1"
description "IBM Lotus Notes Traveler is a push email solution providing quick access to email, calendar, address book, journal, and to-do list for Lotus Notes mobile users."
website "https://www-01.ibm.com/software/lotus/products/notes/traveler.html"

# ShodanHQ results as at 2012-07-22 #
# 107 for Lotus Notes Traveler



# Matches #
matches [

# WWW-Authenticate # Lotus Notes Traveler
{ :search=>"headers[www-authenticate]", :string=>/^Basic realm="Lotus Notes Traveler \(([^\)]+)\)"$/ },

# 401 # Unauthorized
{ :status=>401, :text=>'<HTML><HEAD><TITLE>Unable to Process Request</TITLE></HEAD><BODY><P>Servlet Status Code: 401</P><P>Servlet Status Message: Unauthorized</P></BODY></HTML>' },

]

end

