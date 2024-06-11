##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cisco-ACE"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-02
]
version "0.1"
description "Cisco Application Control Engine (ACE) Device Manager"
website "http://www.cisco.com/en/US/products/ps6906/index.html"

# Google results as at 2012-05-04 #
# 4 for inurl:"/change_password.vm?username"

# dorks #
dorks [
'inurl:"/change_password.vm?username"'
]



# Matches #
matches [

# /favicon.ico
{ :certainty=>75, :url=>"/favicon.ico", :md5=>"5ee29688a968d3912880b3780cdde42e" },

# StyleSheet
{ :text=>'<link href="/utility/cuesStylesLogo.css" rel="stylesheet" type="text/css" />' },

# Version Detection # div class="cuesLoginVersionInfo"
{ :version=>/<div class="cuesLoginVersionInfo">Version ([^\s]+)<\/div>/ },

# Model Detection # div class="cuesLoginProductName"
{ :model=>/<div class="cuesLoginProductName">ACE ([^\s]+) Device Manager<\/div>/ },

]

end

