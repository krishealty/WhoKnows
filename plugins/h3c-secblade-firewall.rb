##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "H3C-SecBlade-FireWall"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-12
]
version "0.1"
description "H3C SecBlade FireWall modules are industry-leading 10000-Mbps high-performance firewall modules"
website "http://www.h3c.com/portal/Products___Solutions/Products/Security_Products/H3C_SecBlade_Module/H3C_SecBlade_FW/"

# ShodanHQ results as at 2011-09-12 #
# 65,838 for Switch 301

# Google results as at 2011-09-12 #
# 4 for intitle:"Web user login" inurl:"en/login.html"



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^Switch$/ },

# Redirect Page
{ :text=>'<script language=javascript src="js/MulPlatAPI.js"></script>' },

# Login Page
{ :text=>'<a href="../cn/login.html"><img border="0" src="../images/Cnlink.jpg" alt="Chinese"></a>' },
{ :text=>'<a href="../en/login.html"><img border="0" src="../images/Enlink.jpg" alt="English"></a>' },

# Login Page # JavaScript
{ :text=>'<script language=javascript src="/js/MulPlatAPI.js"></script>' },

]

end

