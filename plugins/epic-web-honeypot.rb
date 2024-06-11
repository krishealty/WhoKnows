##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Epic-Web-Honeypot"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-23
]
version "0.1"
description "Epic Web Honeypot"

# Google results as at 2011-09-23 #
# 1 for intitle:"Epic Web Honeypot - Extended edition"



# Matches #
matches [

{ :text=>'<center><font size="3" face="monospace">******************************** Epic Web Honeypot ********************************</font></center>' },

{ :version=>/<center><font size="3" face="monospace">\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* Version ([^\s]+) \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*<\/font><\/center>/ },

{ :text=>'<!-- Added OS fingerprints - creds - nmap and honeyd nmap.prints file!-->' },

]

end

