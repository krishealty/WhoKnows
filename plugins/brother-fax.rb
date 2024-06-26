##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Brother-Fax"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-14
  # v0.2 # 2016-04-18 # Replaced passive function with matches. 
]
version "0.2"
description "Brother fax web interface"
website "http://www.brother.com/"
# Default login: Admin/Access

# ShodanHQ results as at 2011-05-14 #
# 12,539 for Debut
#  7,950 for Debut -printer

# Google results as at 2011-05-14 #
# 84 for intitle:"brother mfc" inurl:"/main/main.html"

# Dorks #
dorks [
'intitle:"brother mfc" inurl:"/main/main.html"'
]

# Matches #
matches [
# Model Detection # Default Title
{ :model=>/<TITLE>\nBrother (MFC-[\dA-Z]+)\n<\/TITLE>/ },
{ :certainty=>25, :search=>"headers[server]", :version=>/^[Dd]ebut\/([\d\.]+)$/ }

]

end

