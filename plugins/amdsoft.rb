##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AMDSoFT"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-21
]
version "0.1"
description "CMS [Iranian]"
website "http://www.iranfairit.com/main/index.aspx"

# Google results as at 2011-06-21 #
# 50 for "Powered by AMDSoFT" ext:aspx

# Dorks #
dorks [
'"Powered by AMDSoFT" ext:aspx'
]



# Matches #
matches [

# Powered by link
{ :regexp=>/style="color: aliceblue"><span style="color: gray">Powered\s+by<\/span> <\/span><a href="http:\/\/www\.iranfairit\.com">/ },

]

end

