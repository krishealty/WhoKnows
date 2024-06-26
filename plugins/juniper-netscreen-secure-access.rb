##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Juniper-NetScreen-Secure-Access"
authors [
  "Aung Khant <http://yehg.net/>", # 2011-02-04
]
version "0.1"
description "Juniper Networks NetScreen Secure Access (SSL VPN) - http://www.juniper.net/"





matches [

{:name => 'juniper logo md5', :md5=> '1ec04eec4e1898da8258215a2eb4758b', :url=>'/dana-na/auth/welcome.cgi?p=rolelogo'},

{:name => 'html body', :regexp=>/src="\/dana\-na\/css\/ds\.js">|<img border="0" src="welcome\.cgi\?p=logo|src="\/dana\-na\/imgs\/space\.gif"|document\.cookie = "DSPREAUTH="\+ escape\(""\)|src="\/dana\-na\/auth\/url_default\/s/i }

]




end


