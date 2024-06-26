##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Op5-Monitor"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-24
]
version "0.1"
description "Op5-Monitor - Enterprise Open Source Monitoring"
website "https://www.op5.com/demo"

# Dorks #
dorks [
'inurl:"monitor/index.php/default/show_login"'
]



# Matches #
matches [

# /monitor/index.php/default/show_login # Title
{ :text=>'<title>op5 Monitor login</title>' },

# /monitor/index.php/default/show_login # StyleSheet
{ :text=>'<link type="text/css" rel="stylesheet" href="/monitor/application/views/themes/default/css/default/common.css" />' },

# /monitor/application/views/themes/default/icons/16x16/favicon.ico
{ :url=>"/monitor/application/views/themes/default/icons/16x16/favicon.ico", :md5=>"7ed48f7e1e0b8d6ead4317f84b64ab86" },

]

end

