##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ACTi-Web-Configurator"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-04-27
]
version "0.1"
description "ACTi Web Configurator - camera web interface"
website "http://www.acti.com/home/index.asp"

# Google results as at 2012-04-27 #
# 69 for intitle:"Web Configurator" "ACTi Corporation All Rights Reserved"
# 28 for inurl:"cgi-bin/videoconfiguration.cgi"

# Dorks #
dorks [
'intitle:"Web Configurator" "ACTi Corporation All Rights Reserved"'
]



# Matches #
matches [

# Login Page # Title # Version Detection
{ :version=>/<title>Web Configurator - Version ([^\s]*\s?v[^<]+)<\/title>/ },

# Login Page # Login Form
{ :regexp=>/<form name="frm(LOGIN|Config)" method="POST" enctype="multipart\/form-data" action="videoconfiguration\.cgi">/ },

# Login Page # Year Detetcion # Footer
{ :string=>/<tr class="layout_footer_bgcolor">\s*<td width="776"[^>]*>\s+Copyright@2003-(20[\d]{2}) ACTi Corporation All Rights Reserved/ },

]

end

