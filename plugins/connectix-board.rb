##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Connectix-Boards"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-22
  # v0.2 # 2011-02-18 # Updated version detection. 
]
version "0.2"
description "Connectix-Boards Forum"
website "http://www.connectix-boards.org/index.php"

# Google results as at 2010-08-22 #
# 99 for "powered by Connectix Boards" -Vulnerability



# Matches #
matches [

# Install page
{ :text=>'	<title>Installation de Connectix Boards</title>' },

# Error page
{ :text=>'    <title>Connectix Boards - Fatal Error</title>' },
{ :text=>'	<title>Connectix Boards Error</title>' },

# Version Detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/www.connectix-boards.org"[^>]*>Connectix Boards<\/a> ([^&]+) &copy; [0-9]{4}-[0-9]{4}/ },

]

end

