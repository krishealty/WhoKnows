##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IBM-CICS-Transaction-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-22
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "IBM Customer Information Control System is the new face of CICS Integration point for CICS tooling with rich CICS views, data, and methods. CICS Transaction Server for z/OS is a modern, dependable, and cost effective application platform. z/OS is a 64-bit operating system for mainframe computers, produced by IBM."
website " http://www-01.ibm.com/software/htp/cics/tserver/v41/"

# More Info:
#  http://en.wikipedia.org/wiki/Z/OS
#  http://www-03.ibm.com/systems/z/os/zos/

# ShodanHQ results as at 2011-03-22 #
# 16 for IBM_CICS_Transaction_Server
# 16 for (zOS) IBM

matches [
	
	# Version and OS Detection # HTTP Server Header
	{ :os=>"z/OS", :version=>/^IBM_CICS_Transaction_Server\/([^\(]+)\(zOS\)$/, :search=>"headers[server]" },
	{ :os=>"z/OS", :regexp=>/^IBM_CICS_Transaction_Server/, :search=>"headers[server]" },
	
]

end

