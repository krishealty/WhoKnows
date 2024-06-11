##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FestOS" 
authors [
	"Brendan Coles <bcoles@gmail.com>", # 2010-07-18
]
version "0.1"
description "FestOS is web-based arts-n-crafts festival management software"
website "http://festengine.org/"

# 5 results for +"powered by FestOS" @ 2010-07-18

# Dorks #
dorks [
'"powered by FestOS"'
]

matches [

{ :regexp=>/Powered by[\ FestOS,]* <a href="http:\/\/[festengine.org\/|www.festengine.org\/|skypanther.com\/festos.php]+" title="FestOS, [the\ festival\ engine|the\ Festival\ Engine|the\ web\-based\ festival\ manager]+"[\ target="_blank"]*>[FestOS|FestOS&trade;|www.festengine.org]+<\/a>/ },

{ :text=>'	<meta name="author" content="FestOS by Skypanther Studios">' },
{ :text=>'	<meta name="author" content="Skypanther Studios">', :certainty=>75 },

]


end

