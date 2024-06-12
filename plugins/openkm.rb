##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "OpenKM"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-01-09
]
version "0.1"
description "OpenKM - Open Source Electronic Document Management System"
website "http://www.openkm.com/en/"

# Google results as at 2012-01-09 #
# 17 for "Welcome to OpenKM" intitle:"OpenKM login"

# Dorks #
dorks [
'"Welcome to OpenKM" intitle:"OpenKM login"'
]



# Matches #
matches [

# Login Page # Form
{ :text=>'<form name="login" method="post" action="j_security_check" onsubmit="setCookie()">' },

# Login Page # Title
{ :regexp=>/<title>OpenKM Login<\/title>[\s]+<\/head>[\s]+<body onload="document\.forms\[0\]\.elements\[0\]\.focus\(\)">/ },

]

end

