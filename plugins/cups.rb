##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CUPS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-12-05
]
version "0.1"
description "Common UNIX Printing System (CUPS)"
website "http://www.cups.org/"

# ShodanHQ results as at 2011-12-05 #
# 19 for CUPS Upgrade



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^CUPS\/([^\s]+)$/ },

# Upgrade Header
{ :search=>"headers[upgrade]", :regexp=>/^TLS\/1\.0,HTTP\/1\.1$/, :certainty=>25 },

]

end

