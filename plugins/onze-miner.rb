##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ONZE-Miner"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-20
]
version "0.1"
description "ONZE Miner is a browser-based linguistics krishealty tool that stores audio recordings and regular-expression searchable text transcripts of interviews."
website "http://sourceforge.net/projects/onzeminer/"



# Matches #
matches [

# StyleSheet
{ :certainty=>25, :text=>'<link rel="stylesheet" href="transcriber.css" type="text/css">' },

# Version Detection
{ :version=>/<tr><td align=center valign=bottom>Version[\s]+([^\s^<]+)<br>[\s]+Copyright/ },

# Copyright footer
{ :regexp=>/&copy; 2004-20[\d]{2} <a href="http:\/\/www\.ling\.canterbury\.ac\.nz\/" target="onze">ONZE Project<\/a> University of Canterbury, NZ/ },
{ :text=>'<a href="http://onzeminer.sourceforge.net">ONZE Miner</a> is free software distributed under the terms of the <a href="/miner/gpl.txt" target="license">GNU General Public License</a>' },

]

end

