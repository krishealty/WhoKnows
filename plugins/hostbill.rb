##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HostBill"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-02-10
]
version "0.1"
description "HostBill - Billing software"
website "http://hostbillapp.com/"

# Google results as at 2012-02-10 #
# 31 for inurl:"index.php?/tickets/new/" "Powered by HostBill"

# Dorks #
dorks [
'inurl:"index.php?/tickets/new/" "Powered by HostBill"'
]



# Matches #
matches [

# HTML Comment
{ :text=>'<!-- part below is not css valid. remove it if you want this document to be css valid -->' },

# Powered by text
{ :text=>'</div><br/><center>Powered by <a href="http://hostbillapp.com" target="_blank"><strong>HostBill</strong></a></center><br/></div>' },

]

end

