##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Amiro-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-04
]
version "0.1"
description "Amiro.CMS is a top-notch website development and content management system with several dynamic features and a user-friendly interface."
website "http://www.amirocms.com/"

# Dorks #
dorks [
'"powered by Amiro.CMS"'
]

# 235 results for "powered by Amiro.CMS" @ 2010-09-04


matches [

# Powered by text
{ :text=>"<a href='http://www.amirocms.com' target=_blank>Powered by: Amiro CMS</a>" },
{ :text=>'<a href="http://www.amirocms.com/" target=_blank><FONT size=1><B>Powered by: Amiro CMS</B></FONT></A>' },

]


# Meta generator over multiple lines:
# <meta name="GENERATOR" content="
# -= Amiro.CMS (c) =- 
# www.amirocms.com 
# ">

passive do
        m=[]

        if @body =~ /<meta name="GENERATOR" content="/ and @body =~ / -= Amiro.CMS \(c\) =- / and (@body =~ / www.amiro.ru / or @body =~ / www.amirocms.com /)
                m << {:name=>"multi-line meta generator"}
        end

        m

end


end

