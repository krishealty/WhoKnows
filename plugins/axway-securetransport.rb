##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Axway-SecureTransport"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-24
]
version "0.1"
description "Axway SecureTransport is a secure, multi-protocol managed file transfer solution"
website "http://www.axway.com/products-solutions/mft/gateways/securetransport"

# ShodanHQ results as at 2012-03-24 #
# 126 for SecureTransport

# Google results as at 2012-03-24 #
# 15 for intitle:"Welcome to SecureTransport"

# Dorks #
dorks [
'intitle:"Welcome to SecureTransport"'
]



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^SecureTransport\/([^\s]+)/ },

# Login Page # HTML Comment
{ :text=>'<!-- /application.bar -->' },

# Title
{ :certainty=>75, :text=>'<title>Welcome to SecureTransport</title>' },

]

end

