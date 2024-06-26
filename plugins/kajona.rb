##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Kajona"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-07-19
]
version "0.1"
description "Kajona - Open Source Content Management System - Requires PHP & MySQL"
website "http://www.kajona.de/"



# Matches #
matches [

# Meta Generator
{ :regexp=>/<meta name="generator" content="Kajona., www\.kajona\.de" \/>/ },

# HTML Comment
{ :regexp=>/<!--\s+Website powered by Kajona. Open Source Content Management Framework/ },

# JavaScript
{ :regexp=>/<script type="text\/javascript">KAJONA_(DEBUG|WEBPATH) = / },

# Powered by text
{ :text=>'<div class="left">powered by Kajona</div>' },

# Footer
{ :text=>'<div id="footerContainer">powered by <a href="http://www.kajona.de" target="_blank" title="Kajona' },

# Admin Page # Footer # Year Detection
{ :string=>/<div class="copyright">&copy; (20[\d]{2}) <a href="http:\/\/www\.kajona\.de" target="_blank" title="Kajona/ },

]

end

