##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "dotclear"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-02-29 #
]
version "0.1"
description "dotclear - blog"
website "http://dotclear.org/"

# Google results as at 2012-02-28 #
# 561 for "powered by dotclear"

# Dorks #
dorks [
'"powered by dotclear"'
]



# Matches #
matches [

# Powered by link
{ :text=>'<p>Powered by <a href="http://dotclear.org/">Dotclear</a></p>' },

# HTML Comments
{ :text=>'<!-- End #d-content -->' },
{ :text=>'<!-- End #blogextra -->' },

# Search link
{ :text=>'<a href="#search">To search</a>' },

# p class="post-info-co"
{ :text=>'<p class="post-info-co">' },

]

end

