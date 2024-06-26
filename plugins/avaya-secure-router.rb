##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Avaya-Secure-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-26
]
version "0.1"
description "Avaya Secure Router - Hompage: http://www.avaya.com/usa/products/category--branch-routers"

# ShodanHQ results as at 2012-08-26 #
# 19 for "Avaya Http Server v"



# Matches #
matches [

# Model Detection # Also used by other manufacturers
{ :certainty=>25, :model=>/<td class="headtext" nowrap>Router Model: (<font size=2>)?<b>([^\s^<]+)[\s]*(&nbsp;)?<\/b><\//, :offset=>1 },

# td class="greytitle"
{ :text=>'<td class="greytitle" nowrap><b>About Avaya Secure Router</b></td>' },

# Telnet link # Also used by other manufacturers
{ :certainty=>25, :text=>'<td class="headtext" nowrap><font class="yellowbullet">&#149;</font> <a href="javascript:telnetToBox();">Telnet</a></td>' },

# Footer
{ :text=>'<font color="white" style="font-size:30px;"><span id="guiname">Avaya Secure Router</span></font>' },

# Server Header # Version Detection
{ :search=>"headers[server]", :version=>/^Avaya Http Server v([^\s]+)$/ },

]

end

