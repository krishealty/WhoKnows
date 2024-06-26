##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "iScripts-MultiCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-11
]
version "0.1"
description "iScripts MultiCart is a multi vendor shopping cart with a single backend."
website "http://www.iscripts.com/multicart/"

# 110 results for "powered by iScripts MultiCart" @ 2010-07-11

# Dorks #
dorks [
'"powered by iScripts MultiCart"'
]

# Exampels #


matches [

{ :regexp=>/Powered by <a href="http:\/\/iscripts.com\/multicart"[\ target="_blank"]*><font color="#[a-zA-Z0-9]{6}"><b>iScripts Multicart<\/b><\/font><\/a>. A premium product from <a href="http:\/\/www.iscripts.com" class="" target="_blank"><font color="#[a-zA-Z0-9]{6}"><b>iScripts.com<\/b><\/font><\/a><\/div>/ },

]

end

