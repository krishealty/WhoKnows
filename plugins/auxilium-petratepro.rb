##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Auxilium-PetRatePro"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-09-18
]
version "0.1"
description "Auxilium PetRatePro"
website "http://www.auxiliumsoftware.com/PetRatePro/"

# Google results as at 2012-09-18 #
# 29 for inurl:"index.php?cmd=10" "Pets Rating"

# Dorks #
dorks [
'inurl:"index.php?cmd=10" "Pets Rating"'
]



# Matches #
matches [

# Form
{ :text=>'<form method="post" name="myform2" action="index.php?cmd=11">' },

# heading
{ :text=>'<p class="text"><b>Leader Of The Pack (Top 10 Pets)</b><br><br>' },

]

end

