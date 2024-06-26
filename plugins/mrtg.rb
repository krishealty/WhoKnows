##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MRTG"
authors [
  "Aung Khant <http://yehg.net/>", # 2012-02-10
  "Andrew Horton", # v0.2 # Replaced matches, replaced Google dork, replaced examples. Plugin still needs to be tested on all versions of MRTG
]
version "0.2"
description "MRTG - Multi Router Traffic Grapher - http://oss.oetiker.ch/mrtg/"

# Google results as at 2012-08-09 #
# 8330 for intitle:"MRTG Index Page"



# Matches #
matches [
{:name=>"Title", :regexp=>/<TITLE>MRTG Index Page<\/TITLE>/i},
{:name=>"Logo in footer", :regexp=>/HREF="http:\/\/oss.oetiker.ch\/mrtg\/"><IMG[\s]*BORDER=0 SRC="mrtg-l.png"/mi},

{:name=>"Logo in footer2", :regexp=>/HREF="http:\/\/www.ee.ethz.ch\/~oetiker\/webtools\/mrtg\/">.*src=mrtg-l.png alt=MRTG/mi},

{:name=>"Logo image", :url=>"/mrtg-l.png", :md5=>"241244d0d8845dcad7e891e84e79d63f"},
{:version=>/<title>MRTG Index Page.*version ([^<]+)<\/font><\/td>/mi}

]

end

