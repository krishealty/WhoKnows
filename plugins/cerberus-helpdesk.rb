##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cerberus-Helpdesk"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-10-22
]
version "0.1"
description "Cerberus Helpdesk - fast and flexible web-based platform for business collaboration and automation"
website "http://www.cerberusweb.com/"

# Google results as at 2012-10-06 #
# 16 for inurl:CerberusPublicGUI

# ShodanHQ results as at 2012-10-06 #
# 42 for CerberusPublicGUI

# Dorks #
dorks [
'inurl:CerberusPublicGUI'
]



# Matches #
matches [

# CerberusPublicGUI Cookie
{ :search=>"headers[set-cookie]", :regexp=>/CerberusPublicGUI=[a-f\d]{32};/ },

# HTML Comment
{ :text=>'<!-- If you have your own stylesheet for HTML elements, you can remove the cerberus-html.css link -->' },

# articles link
{ :text=>'<td width="519" class="kb_most_viewed_articles">Most Viewed Knowledgebase Articles</td>' },

]

end

