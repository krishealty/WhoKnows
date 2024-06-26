##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FluentNET"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-08
  # v0.2 # Fixed GHDB and regex matches. 
]
version "0.2"
description "FluentNET, DotContent's powerful content management software, empowers business users to create, manage and publish web content for both general public access as well as internal use, and maximises the value of web-based information."
website "http://www.dotcontent.net"

# 14 results for "powered by FluentCMS from DotContent" @ 2010-08-08

# Dorks #
dorks [
'"powered by FluentCMS from DotContent"'
]



matches [

# Powered by text
{ :ghdb=>'"powered by FluentCMS from DotContent"', :certainty=>75 },

# Version Detection # Meta Generator
{ :version=>/<meta name="GENERATOR" content="Fluent[CMS|NET]+ ([\d\.]+) / },

]

end

