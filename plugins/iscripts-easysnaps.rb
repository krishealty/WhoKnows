##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "iScripts-EasySnaps"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-11
]
version "0.1"
description "iScripts EasySnaps is an open source image hosting script."
website "http://www.iscripts.com/gallery/"

# 20 results for "powered by iScripts EasySnaps" "A premium product from iScripts.com" @ 2010-07-11

# Dorks #
dorks [
'"powered by iScripts EasySnaps" "A premium product from iScripts.com"'
]



matches [

{ :text=>'          <td height="25" align="center" bgcolor="#000000">Powered by <a href="http://www.iscripts.com/gallery/" target="_blank">iScripts EasySnaps</a>. A premium product from <a href="http://www.iscripts.com/" target="_blank">iScripts.com</a>' },

]


end

