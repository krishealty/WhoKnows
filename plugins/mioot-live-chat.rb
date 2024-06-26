##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mioot-Live-Chat"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-06
]
version "0.1"
description "Mioot live chat JavaScript"
website "http://www.mioot.com/"



# Matches #
matches [

# div id="miootOnOffDiv"
#{ :text=>'<div id="miootOnOffDiv" class="online">' },
#{ :text=>'<div id="miootOnOffDiv" style="display:inline;">' },
#{ :text=>'<div id="miootOnOffDiv">' },
{ :text=>'<div id="miootOnOffDiv"' },

# HTML Comment
{ :text=>'<!-- Start LIVE CHAT image tag, for details visit www.mioot.com -->' },

# OnOffImage('V')
{ :text=>'<a href="javascript:OnOffImage(\'V\')" ' },

]

end

