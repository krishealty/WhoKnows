##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FEX"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-02-22
]
version "0.1"
description "F*EX (Frams's Fast File EXchange) is a service that can be used to allow users anywhere on the Internet to exchange files of ANY size quickly and conveniently."
website "http://fex.rus.uni-stuttgart.de/fex.html"

# ShodanHQ results as at 2012-02-22 #
# 51 for fexsrv

# Google results as at 2012-02-22 #
# 13 for intitle:"F*EX - File EXchange" "F*EX - Frams' Fast File EXchange"

# Dorks #
dorks [
'intitle:"F*EX - File EXchange" "F*EX - Frams\' Fast File EXchange"'
]



# Matches #
matches [

# /logo.jpg
{ :url=>"/logo.jpg", :md5=>"ad8a95bba8dd1a61d70bd38611bc2059" },

# Title
{ :text=>'<HEAD><TITLE>F*EX - File EXchange</TITLE></HEAD>' },

# h1 heading
{ :certainty=>75, :text=>"<h1>F*EX - Frams' Fast File EXchange" },

# email address
{ :regexp=>/<a href="mailto:[^"]+">fexmaster<\/a><\/address>/i },

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^fexsrv$/ },

]

end

