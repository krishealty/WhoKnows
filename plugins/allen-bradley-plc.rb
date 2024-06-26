##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Allen-Bradley-PLC"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-06
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with matches. 
]
version "0.2"
description "SCADA - Allen Bradley programmable logic controller (PLC)"
website "http://ab.rockwellautomation.com/Programmable-Controllers"

# ShodanHQ results as at 2011-03-06 #
# 16 for port:161 SLC5
# 23 for Allen-Bradley



# Matches #
matches [

# Model Detection # 1747 Series # Default Title
{ :model=>/<html><head><title>([\d]{4}-[A-Z][\d]{3}|[\d]{4}-[A-Z][\d]{3}\/[A-Z]) Home Page<\/title><\/head>/ },

# Model Detection # 1747 Series # Default h1 Title
{ :model=>/<h1><font face="helvetica" size=6>([\d]{4}-[A-Z][\d]{3}|[\d]{4}-[A-Z][\d]{3}\/[A-Z]) Ethernet Processor<\/font><\/h1><br><\/td>/ },

# Model Detection # 1766 Series # Default Title
{ :model=>/<html><head><title>([\d]{4}-[A-Z][\d]{2}[A-Z]{4} [A-Z]\/[\d\.]{4})  <\/title><META HTTP-EQUIV="Pragma" CONTENT="no-cache"><META HTTP-EQUIV="Expires" CONTENT="-1">/ },

# Default logo # 1747 Series
{ :url=>"/images/rockcolor.gif", :md5=>"4e77d7a8ac45b5c7afe7ade730f172e7", :model=>"1747 Series" },

# Default logo # 1766 Series
{ :url=>"/ralogo.gif", :md5=>"640eeef53f64fac202eb0673ed269be1", :model=>"1766 Series" },

{ :version=>/^A-B WWW\/([\d\.]{3})/, :search=>"headers[server]" },

]


end


