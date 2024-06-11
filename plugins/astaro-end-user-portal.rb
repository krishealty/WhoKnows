##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Astaro-End-User-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-04-12
]
version "0.1"
description "Astaro End User Portal - A complete end-user tool suite for managing SMTP and POP3 quarantine."
website "http://www.astaro.com/"



# Matches #
matches [

# JavaScript
{ :text=>'<script src="eup/eup_50_change_password.js" type="text/JavaScript"></script>' },

# /jape/ellipsis.xml
{ :url=>"/jape/ellipsis.xml", :md5=>"9639763b8c7f8caef097be4f3ffe5106" },

]

end

