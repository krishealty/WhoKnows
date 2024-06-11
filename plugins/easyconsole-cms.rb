##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "EasyConsole-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-03
]
version "0.1"
description "EasyConsole CMS allows you to manage the content and usage across your Intranet, Extranet or Portal.
Text, documents, media and virtually any type of information can be securely shared across your organization, your partners or clients through a web-based environment that consistently reflects your branding DNA."
website "http://www.easyconsole.com/web-content-management.html"

# Google results as at 2011-03-03 #
# 66 for "powered by EasyConsole-CMS" inurl:"easyconsole.cfm" ext:cfm

# Dorks #
dorks [
'"powered by EasyConsole-CMS" inurl:"easyconsole.cfm" ext:cfm'
]



# Matches #
matches [

# GHDB Match
{ :certainty=>75, :ghdb=>'"Powered by EasyConsole CMS" inurl:"easyconsole.cfm" ext:cfm' },

# HTML Comment
{ :regexp=>/<!-- Powered by EasyConsole CMS, Copyright DW Dynamic Works LTD 2003 - 20[\d]{2} - http:\/\/www.easyconsole.com -->/ },

]

end

