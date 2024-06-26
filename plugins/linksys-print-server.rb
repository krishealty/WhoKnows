##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Linksys-Print-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-07
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Linksys Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://homesupport.cisco.com/en-us/wireless/lbc/PSUS4/download"

# ShodanHQ results as at 2011-03-07 #
# 1,142 for PRINT_SERVER WEB
# 1,142 for PRINT_SERVER WEB 1.0


# Matches #
matches [

# Model Detection
{ :text=>'<td align="right" class="pname" height="25" colspan="5">Print Server for USB with 4-Port Switch &nbsp; &nbsp; </td>', :model=>"PSUS4" },

# Firmware Version Detection
{ :firmware=>/<td width="585" colspan="2" bgcolor="#6666CC" valign="bottom" align="right"><span class="fwversion">Firmware Version: &nbsp; ([^\s]{1,10}) <\/span> &nbsp;&nbsp;<\/td>/ },

# Server: PRINT_SERVER WEB # Also used by other printer servers
{ :certainty=>25, :version=>/^PRINT_SERVER WEB ([\d\.]+)$/, :search=>"headers[server]" },

# Server
{ :certainty=>25, :regexp=>/^PRINT_SERVER WEB/, :search=>"headers[server]" },

]

end


