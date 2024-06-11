##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Energine"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-02-27
]
version "0.1"
description "Energine Content Management Framework - XML based PHP5 content management framework"
website "http://energine.org/"

# Google results as at 2011-02-27 #
# 85 for "Powered by Energine"

# Dorks #
dorks [
'"Powered by Energine"'
]



# Matches #
matches [

# Default JavaScript
{ :regexp=>/<script type="text\/javascript" src="[^"]*scripts\/Energine.js"><\/script>/ },

# Default Stylesheet
{ :regexp=>/<link rel="stylesheet" type="text\/css" href="[^"]*stylesheets\/energine.css" \/>/ },

# Powered by text
{ :text=>'<div id="footer"><span class="copyright">Powered by <a href="http://energine.org">Energine</a><br/>' },
{ :text=>'<span class="copyright">Powered by <a href= "http://energine.org/">Energine</a></span>' },

# Error Page # Powered by text
{ :certainty=>75, :text=>'<div id="footer">Powered by Energine.</div>' },
{ :text=>'<div id="footer">Powered by <a href="http://energine.org">Energine</a>' },

]

end


