##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Aardvark-Topsites-PHP"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-26
  # v0.2 # Updated regex and version detection. 
]
version "0.2"
description "Aardvark Topsites PHP is a free topsites script built on PHP and MySQL."
website "http://www.aardvarktopsitesphp.com/topsites/"

# Dorks #
dorks [
'"Powered by Aardvark Topsites PHP"'
]

# About 330,000 results for "Powered by Aardvark Topsites PHP" @ 2010-06-26


matches [

# GHDB Match
{ :ghdb=>'"Powered by Aardvark Topsites PHP"' },

# Default powered by text
{ :regexp=>/Powered by <a href="http:\/\/www.aardvarktopsitesphp.com[^>]*>[^A]*Aardvark Topsites PHP/i },

# Version detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/www.aardvarktopsitesphp.com\/"><b>Aardvark Topsites PHP<\/b><\/a> ([\d\.]+)/ },
{ :version=>/Powered by <a href="http:\/\/www.aardvarkind.com\/">Aardvark Topsites PHP<\/a> ([\d\.]+)/ },

]

end

