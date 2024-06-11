##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CERVIS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-02
]
version "0.1"
description "Community Event Registration and Volunteer Information System (CERVIS) is the most complete and customizable web-based volunteer management software available."
website "https://www.cervistech.com/"

# Google results as at 2012-05-02 #
# 96 for "powered by CERVIS" "Contact Us" inurl:"console.php" inurl:"console_id"

# Dorks #
dorks [
'"powered by CERVIS" "Contact Us" inurl:"console.php" inurl:"console_id"'
]



# Matches #
matches [

# Powered by logo HTML
{ :text=>'<a href="http://www.cervistech.com" target="_blank"><img src="/acts/images/cervis_logo_sm.png" align=\'absmiddle\' border="0" />Powered by CERVIS</a>' },

# Company Name Detection
{ :string=>/<meta name="title" content="(Volunteer)? Opportunities and Event Registration ([^"]+)" \/>/, :offset=>1 },

]

end

