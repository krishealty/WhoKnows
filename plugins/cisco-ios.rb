##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cisco-IOS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-26
  # v0.2 # 2011-03-02 # Removed redundant capitalized @headers["Server"] match. 
  "Andrew Horton", # v0.3 # 2011-03-16 # Added cisco model detection
]
version "0.3"
description "Cisco IOS (originally Internetwork Operating System) is the software used on the vast majority of Cisco Systems routers and current Cisco network switches. (Earlier switches ran CatOS.) IOS is a package of routing, switching, internetworking and telecommunications functions tightly integrated with a multitasking operating system. - More info: http://en.wikipedia.org/wiki/Cisco_IOS"

# ShodanHQ results as at 2010-10-26 #
# 284,567 for "server: cisco-IOS"



# Matches #
matches [

# Model Detection
{ :model=>/\ssdmconfig-([^\.]+).cfg/}, 
{ :model=>/\sc(\d+)(nm)?[^\-]*-\S+-mz\S+\.bin/}, 

# Directory
{ :string=>"Dir",     :regexp=>/<input type="hidden" name="DIRINFO" value="\s+Directory of archive:\// },
{ :string=>"DirFail", :regexp=>/<input type="hidden" name="DIRINFO" value="\s*(Command authorization failed|% Authorization failed)/ },

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^cisco-IOS/ },

]

end

