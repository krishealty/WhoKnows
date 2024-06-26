##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Ektron-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-09
  "Bhavin Senjaliya", # v0.2 # 2016-08-19 # Add EkAnalytics cookie. 
]
version "0.2"
description "Ektron provides web content management and social software. Ektron's primary product is CMS400.NET, which is built on the Microsoft .NET Framework."
website "http://www.ektron.com/"

# ShodanHQ results as at 2011-08-09 #
# 1,922 for ecm username site_id isMembershipUser

# Google results as at 2011-08-09 #
# 104 for inurl:/workarea/java/ +ektron

# Dorks #
dorks [
'inurl:"/workarea/java/" "ektron"'
]



# Matches #
matches [

# EktGUID Cookie
{ :search=>"headers[set-cookie]", :regexp=>/EktGUID=[a-f\d]{8}-[a-f\d]{4}-[a-f\d]{4}-[a-f\d]{4}-[a-f\d]{12}; expires=/ },

# EkAnalytics
{ :search => "headers[set-cookie]", :regexp => /EkAnalytics/, :name=>"EkAnalytics cookie" },

# ecm Cookie
{ :search=>"headers[set-cookie]", :regexp=>/ecm=user_id=[\d]+&isMembershipUser=[\d]+&site_id=&username=&new_site=[^&]+&unique_id=[\d]+&site_preview=[\d]+&langvalue=[\d]+&DefaultLanguage=[\d]+/ },

# JavaScript
{ :text=>'<script id="EktronJS" type="text/javascript" src="/WorkArea/java/ektron.js">' },

# JavaScript
{ :text=>'<script id="EktronRegisteredJs" type="text/javascript" src="/workarea/java/ektronJs.ashx?id=' },

# JavaScript
{ :text=>'<script id="EktronModalJS" type="text/javascript" src="/WorkArea/java/plugins/modal/ektron.modal.js">' },

]

end

