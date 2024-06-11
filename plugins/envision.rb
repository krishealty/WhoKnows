##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "enVision"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-24
]
version "0.1"
description "Content Interface Corp enVision - interactive WYSIWYG layout editor"
website "http://www.contentinterface.com/index.php?option=com_content&task=view&id=14&Itemid=26"

# ShodanHQ results as at 2012-03-24 #
# 5 for Content Interface Corp enVision



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Content Interface Corp - enVision ([^\s]+)/ },

]

end

