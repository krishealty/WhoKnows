##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Dell-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-22
  # v0.2 # 2011-02-25 # Updated model detection. 
]
version "0.2"
description "Dell printer web frontend - http://www.dell.com/" 

# Google results as at 2010-07-22 #
# 1 for intitle:"Dell *" inurl:port_0
# 1 for intitle:"configuration" inurl:port_0
# 4 for "Online Help" "Order Supplies" intitle:"Laser Printer" intitle:dell
# 2 for inurl:"port_255" -htm intitle:"Printer Settings"

# Dorks #
dorks [
'"Online Help" "Order Supplies" intitle:"Laser Printer" intitle:dell'
]



# Matches #
matches [

# Model Detection # Tested models: 3100cn / 5100cn / M5200 / 1710n
{ :model=>/<title>Dell Laser Printer ([A-Z]?[\d]{4}[a-z]{0,2})<\/title>/i },

# Model Detection # Tested model: 2330dn
{ :model=>/<TITLE>Dell ([\d]{4}[a-z]+) Laser Printer<\/TITLE>/ },

]

end

