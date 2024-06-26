##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Bentley-Systems-ProjectWise"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-12-28
]
version "0.1"
description "ProjectWise - Project Collaboration and Content Management Software for Architecture, Construction, and Engineering Projects"
website "http://www.bentley.com/en-US/Products/ProjectWise"

# ShodanHQ results as at 2011-12-28 #
# 15 for Bentley.WebSession

# Google results as at 2011-12-28 #
# 43 for intitle:"ProjectWise Web Server" "ProjectWise Web Server"

# Dorks #
dorks [
'intitle:"ProjectWise Web Server" "ProjectWise Web Server"'
]



# Matches #
matches [

# Login Page # Favicon HTML
{ :text=>'</title><meta http-equiv="X-UA-Compatible" content="IE=8" /><link rel="shortcut icon" href="ProjectWise.ico" />' },

# Login Page # Title
{ :regexp=>/<title>\s+ProjectWise Web Server\s+<\/title>/ },

# Login Page # HTML Comment
{ :certainty=>75, :text=>'<!-- Initially invisible login form -->' },

# Set-Cookie # Bentley.WebSession
{ :search=>"headers[set-cookie]", :regexp=>/Bentley.WebSession=/ },

# /ProjectWise.ico
{ :url=>"/ProjectWise.ico", :md5=>"c20606b0a22e4c91940798a485d7eff7" },

]

end

