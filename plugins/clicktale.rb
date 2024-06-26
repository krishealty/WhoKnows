##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ClickTale"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-26
]
version "0.1"
description "Customer Experience Analytics by ClickTale - discover everything visitors do on your website. Watch Visitor Recordings, Mouse Move Heatmaps, and Form Analytics."
website "http://www.clicktale.com/"



# Matches #
matches [

# div id="ClickTaleDiv"
{ :text=>'<div id="ClickTaleDiv" style="display: none;"></div>' },

]

end

