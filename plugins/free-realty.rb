##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Free-Realty"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-15
]
version "0.1"
description "Free Realty is primarily designed for real estate agents and offices to list properties on the internet."
website "http://freerealty.rwcinc.net/"

# Google results as at 2012-05-15 #
# 19 for inurl:"propview.php" "equal housing logo This tool is Open Source and released under the GPL "

# Dorks #
dorks [
'inurl:"propview.php" "equal housing logo This tool is Open Source and released under the GPL"'
]



# Matches #
matches [

# HTML Comment # Version Detection
{ :version=>/<!--FreeRealty ([^\s]+) -->/ },

# Footer
{ :text=>'<font class="foot">This tool is Open Source and released under the <a href="http://www.gnu.org/copyleft/gpl.html">GPL</a></font>' },

# HTML Comments
{ :text=>'<!-- THUS ENDETH THE MAIN CONTENT -->' },
{ :text=>'<!-- HERE BEGINNETH THE FOOTER --><div class="foot">' },

]

end

