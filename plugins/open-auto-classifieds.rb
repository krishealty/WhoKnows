##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Open-Auto-Classifieds"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-27
  # v0.2 # 2011-02-25 # Updated version detection. 
]
version "0.2"
description "OAC is a free, open source vehicle classifieds manager. Intended to be easy to install and easy to administer, Open Auto Classifieds is based on open technologies such as the PHP scripting language, the MySQL database engine, XHTML eXtensible Hypertext Markup Language, and CSS Cascading Style Sheet styling."
website "http://www.openautoclassifieds.com/index.php"

# Google results as at 2010-08-27 #
# 221 for "powered by Open Auto Classifieds"

# Dorks #
dorks [
'"powered by Open Auto Classifieds"'
]



# Matches #
matches [

# Powered by text
{ :text=>'<p>Powered by <a href="http://www.openautoclassifieds.com/index.php">Open Auto Classifieds</a>' },

# Version Detection # Powered by text
{ :version=>/			<p>Powered by <a href="http:\/\/www.openautoclassifieds.com[^"]*">Open Auto Classifieds v([\d\.a-z]+)/ },

# Version Detection # Powered by text
{ :version=>/			<p>Powered by Open Auto Classifieds v([\d\.a-z]+)/ },

]

end

