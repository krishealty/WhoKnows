##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mura-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-07-27
]
version "0.1"
description "Mura CMS (previously known as Sava CMS) is an open source CMS for ColdFusion."
website "http://www.getmura.com/"



# Matches #
matches [

# Version Detection # Meta Generator
{ :version=>/<meta name="generator" content="(Mura|Sava) CMS ([\d\.]+)" \/>/, :offset=>1 },

# Powered by link
{ :text=>'Powered by <a href="http://www.getmura.com/">Mura CMS</a>' },

# Admin Page
{ :text=>'<form novalidate="novalidate" id="sendLogin" name="sendLogin" method="post" action="index.cfm?fuseaction=cLogin.main" onsubmit="javascript:if(document.sendLogin.email.value !=\'\'){return true;}else{return false;}">' },

]

end

