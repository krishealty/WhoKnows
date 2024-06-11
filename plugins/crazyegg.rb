##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CrazyEgg"
authors [
  "Peter van der Laan",
]
version "0.1"
description "Visualizes where your visitors click"
website "http://www.crazyegg.com/"

matches [

# HTML
{ :text=>"cetrk.com" },
{ :account=>/dnn506yrbagrg\.cloudfront\.net\/pages\/scripts\/(\d+\/\d+)/}

]

end

