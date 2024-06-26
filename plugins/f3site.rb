##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "F3Site"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-27
  # v0.2 # Updated matches and version detection. 
]
version "0.2"
description "F3Site is a lightweight CMS written in XHTML 1.0 Strict, CSS and PHP 5. It lets you create multilingual websites without necessity of separate installation for each language."
website "http://compmaster.prv.pl"

# 64 results for "powered by F3Site" -exploit -dork @ 2010-10-20

# Dorks #
dorks [
'"powered by F3Site" -exploit -dork'
]



matches [

# Powered by text
{ :text=>'<a href="http://compmaster.prv.pl" target="_blank">powered by F3Site</a></span>' },
{ :regexp=>/Powered by[^>]*<a[^>]*href="http:\/\/compmaster.prv.pl[^>]*>F3Site[^>]*<\/a>/ },
{ :regexp=>/Powered by[^>]*<a[^>]*href="http:\/\/dhost.info\/compmaste[^>]*>F3Site[^<]*<\/a>/ },

# Version detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/compmaster.prv.pl">F3Site v([\d\.]+) plus<\/a>/ },

]

end

