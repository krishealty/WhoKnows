##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "1024-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-12
]
version "0.1"
description "1024 is one of a few CMS's leading the way with the implementation of the AJAX technology  into all its areas. This includes dynamic adminstration and user interaction. 1024 offers you to ability to set up your own community forums, download area, news posts, member management and more."
website "http://www.1024cms.org/"

# 25 results "Powered By 1024 CMS" @ 2010-09-12

matches [
{ :text=>"<div id='otatfpowered'><a href='http://www.1024cms.com' target='_blank'>Powered by 1024 CMS</a></div></div>" },
{ :text=>'<meta name="generator" content="1024 CMS (c) 2008 Treble Designs. This is free software, and you may redistribute it under the Attribution-Non-Commercial-Share Alike 2.0 license (http://creativecommons.org/licenses/by-nc-sa/2.0/uk/). 1024 CMS comes with absolutely no warranty, for details, see the license (http://creativecommons.org/licenses/by-nc-sa/2.0/uk/)." />' },
]

end
