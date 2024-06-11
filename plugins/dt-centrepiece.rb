##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DT-Centrepiece"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-06
]
version "0.1"
description "DT Centrepiece is a free open-source content management system (CMS) for commercial or personal use."
website "www.dt.net.nz/centrepiece/"

# 14 results for "powered by DT Centrepiece" @ 2010-08-06

# Dorks #
dorks [
'"powered by DT Centrepiece"'
]



matches [

{ :text=>'	<meta name="generator" content="DT Centrepiece - www.dt.net.nz/centrepiece/" />' },
{ :text=>'<a href="http://www.dt.net.nz/centrepiece/" target="_blank">Powered By DT Centrepiece</a>' },

]

end

