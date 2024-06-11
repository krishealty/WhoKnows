##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Atvise-webMI"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-04-11
]
version "0.1"
description "Web-based HMI server - atvise webMI compliant web servers can be extremely slim and work on the smallest hardware."
website "http://www.atvise.com/en/how-it-works"

# ShodanHQ results as at 2012-04-11 #
# 7 for atvise



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^atvise$/ },

# / # noscript
{ :text=>'<td><noscript>N/A</noscript><script type="text/javascript"><!--' },

# /visu.htm
{ :url=>"/visu.htm", :text=>'<li class="btn"><a class="button" style="left:93%;" href="javascript:void(0)" target="mainframe" id="alarmlistbutton"><img height="30" width="47" src="buttonc.gif" alt="" /></a></li>' },

]

end

