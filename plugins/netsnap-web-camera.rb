##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Netsnap-Web-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-10
]
version "0.1"
description "Netsnap java client web interface for video cameras"

# 18 for intitle:"Live NetSnap Cam-Server feed" -intitle @ 2010-07-10

# Dorks #
dorks [
'intitle:"Live NetSnap Cam-Server feed" -intitle'
]



# Matches #
matches [

{:text=>'<title>Live NetSnap Cam-Server feed</title>' },

{:text=>'color="#008080">Live-Webcam</font></big></big></big></strong></em></font></h3>' },

{:text=>'color="#008080">NetSnap®</font></big></big></big></big><font size="6"> </font></strong></font></em></h3>' },

{:text=>'<p align="center"><font face="Arial"><small><small>NetSnap is a registered Trademark of' },
]


end

