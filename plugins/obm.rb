##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "OBM"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-12-28
]
version "0.1"
description "OBM is a free messaging and collaboration software including Groupware, Messaging, CRM, LDAP, Domain management, Smartphones and PDA synchronization"
website "http://obm.org/"

# ShodanHQ results as at 2011-12-28 #
# 4 for OBM_Session

# Google results as at 2011-12-28 #
# 16 for intitle:"Login - OBM" "OBM.org"

# Dorks #
dorks [
'intitle:"Login - OBM" "OBM.org"'
]



# Matches #
matches [

# Login Page # Title # Version Detection
{ :certainty=>75, :version=>/<title>Login - OBM ([^\s^<]+)<\/title>/ },

# Login Page # body + p tags and omb.org link
{ :regexp=>/<body>[\s]+[\s]+<p id="aliasource">[\s]+<a href="http:\/\/www\.obm\.org">OBM\.org<\/a>[\s]+<\/p>[\s]+<h1>/ },

# Set-Cookie # OBM_Session
{ :search=>"headers[set-cookie]", :regexp=>/OBM_Session=[\s]+;/ },

]

end

