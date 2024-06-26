##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "lochDNS-MyDNS-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-09-29
]
version "0.1"
description "lochDNS MyDNS Appliance provides a web-based user interface for appliance administration."
website "http://wiki.rpath.com/wiki/Appliance:LochDNS"

# Default Login: admin/password

# Google results as at 2012-09-29 #
# 1 for "Manage lochDNS system with rPath Appliance Agent"

# Dorks #
dorks [
'"Manage lochDNS system with rPath Appliance Agent"'
]



# Matches #
matches [

# / # Configure link
{ :text=>'<li><a href="/mydnsconfig/index.htm">Configure MyDNS</a>' },

# /mydnsconfig/web/index.php # body tag
{ :text=>'<body bgcolor="#FFFFFF" leftmargin=0 topmargin=0 marginwidth=0 marginheight=0 onLoad="breakout()">' },

# Version Detection # rPath Appliance Agent interface (default port 8003)
{ :version=>/<div id="appliance-name">lochDNS MyDNS Appliance<\/div>\s+<div id="appliance-version">\s+Version ([^\s^<]+)<\/div>/ },

# rPath Appliance Agent Version Detection # rPath Appliance Agent interface (default port 8003)
{ :module=>/<div class="hidden">\s+(rPath Platform Agent [^\s]+)\s+<\/div>/ },

]

end

