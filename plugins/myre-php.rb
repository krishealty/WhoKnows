##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MYRE-PHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-12
]
version "0.1"
description "MYREPHP - MYRE Real Estate Software, MYRE Holiday Rental Manager, MYRE Realty Manager and MYRE Classifieds scripts"
website "http://www.myrephp.com/"

# Google results as at 2011-09-12 #
# 12 for "My Last Viewed" "Get e-mail alerts" +MYREPHP

# Dorks #
dorks [
'"My Last Viewed" "Get e-mail alerts" "MYREPHP"'
]



# Matches #
matches [

# Menu
{ :text=>"<td align=right><a href='links_view.php'><font class='menu_top'><b><u>My Last Viewed</u></b></font></a>&nbsp;&nbsp;<a href='alert.php?action=register'><font class='menu_top'><b><u>Get e-mail alerts</u></b></font></a>&nbsp;&nbsp;" },

# HTML Comment
{ :text=>"<!-- BEGIN: MENU FOOTER don't change anything -->" },

]

end

