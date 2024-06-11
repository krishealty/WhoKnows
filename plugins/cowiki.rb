##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "coWiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-22
  # v0.2 # 2011-02-25 # Updated version detection. 
]
version "0.2"
description "coWiki - wiki"
website "http://www.cowiki.org/"

# Google results as at 2010-07-22 #
# 8 for "powered by coWiki"



# Matches #
matches [

# HTML Comment
{ :version=>/<!-- Generated by coWiki ([^ ]+) \((http:\/\/www.develnet.org|http:\/\/www.cowiki.org)\) -->/ },

# Meta Generator
{ :version=>/<meta name="generator" content="coWiki ([^,]+), (http:\/\/www.develnet.org|http:\/\/www.cowiki.org)"[^>]*>/ },

]

end
