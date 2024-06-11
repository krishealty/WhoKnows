##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DiamondList"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-18
]
version "0.1"
description "DiamondList is a free open source ruby on rails wishlist management program. It allows you to track one or more wishlists for one or more people, for any kind of event!"
website "http://www.hulihanapplications.com/projects/diamondlist"

# 11 results for "powered by DiamondList" @ 2010-09-18

# Dorks #
dorks [
'"powered by DiamondList"'
]



matches [

# Powered by text
{ :text=>'Powered by <a href="http://www.hulihanapplications.com/projects/diamondlist"><b>DiamondList</b>' },

]

end

