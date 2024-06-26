##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "All-in-one-SEO-Pack"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-30
  # v0.2 # 2011-01-07 # Renamed to all-in-one-SEO-pack.rb . Updated version detection method. 
]
version "0.2"
description "The all in one SEO pack automatically optimizes your WordPress blog for Search Engines (Search Engine Optimization)."
website "http://wordpress.org/extend/plugins/all-in-one-seo-pack/"



# Matches #
matches [

# HTML comment
{ :text=>'<!-- /all in one seo pack -->' },

# Version Detection # HTML comment

{ :version=>/<!-- All in One SEO Pack ([\d\.]+) by Michael Torbert of Semper Fi Web Design/ },

]

end

