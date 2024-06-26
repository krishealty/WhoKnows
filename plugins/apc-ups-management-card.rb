##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "APC-UPS-Management-Card"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-12
  "Andrew Horton", # v0.2 # 2016-04-18 # Replaced passive function with match for WWW-Authenticate. 
]
version "0.2"
description "APC UPS Network Management Cards allow for secure monitoring and control of an individual APC UPS via web browser, command line interface, or SNMP."
website "http://www.apc.com/products/family/index.cfm?id=98"

# ShodanHQ results as at 2011-03-12 #
# 6,524 for APC Management Card realm
# 2,064 for APC Management Card -realm



# Matches #
matches [

# Logo Link
{ :text=>'<td class="apclogo"><a href="http://www.apc.com"><img src="images/smapc.gif" alt="APC Website" width="59" height="17" border="0" align="top" /></a>&nbsp;&nbsp;</td>' },

# HTTPS Required
{ :url=>"/RpError/SslRequired", :text=>'<td>This object on the&nbsp;APC Management Web Server&nbsp;is protected and requires a secure socket connection.<br /><br /><br /><br /><A HREF="https://' },

# WWW-Authenticate
{ :name=>"WWW-Authenticate realm", :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="APC Management Card"$/ }

]

end


