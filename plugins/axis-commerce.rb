##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Axis-Commerce"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "Axis Commerce - open source eCommerce software - Requires: PHP and MySQL"
website "http://axiscommerce.com/"



# Matches #
matches [

# Admin Page # Version Detection
{ :version=>/<div class="head"><h2>Login<\/h2><p class="powered">Powered by Axis v. ([\d\.]+)<\/p><\/div>/ },

# Forgot password page
{ :text=>'<div class="head"><h2>Forgot password</h2><p class="powered">Powered by Axis</p></div>' },

# Title
{ :text=>'<title>Login to Axis administrator panel</title>' },

# Report bugs link
{ :text=>"<p class=\"bug-report\">Report any <a href='http://github.com/axis/axiscommerce/issues' onclick='window.open(this.href); return false;' title='Report'>Bugs or Issues</a> you've found</p>" },

# axisid cookie
{ :search=>"headers[set-cookie]", :regexp=>/axisid=[a-z\d]{20,32};/ },

]

end

