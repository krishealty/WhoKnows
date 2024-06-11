##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AdaptCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-12
]
version "0.1"
description "AdaptCMS is a PHP CMS that is made for complete control of your website, easiness of use and easily adaptable to any type of website"
website "http://www.adaptsoftware.org/article/1/Projects/AdaptCMS/"

# Google results as at 2010-10-12 #
# 7 for "powered by AdaptCMS"

# Dorks #
dorks [
'"powered by AdaptCMS"'
]



matches [

# Version detection
{ :version=>/Powered by <a href="http:\/\/www.adaptcms.com">[<b>]*AdaptCMS([^<]*)<\/a>/ },

# Powered by <a href="http://www.adaptcms.com">AdaptCMS</a>, <a href="http://www.adaptbb.com">AdaptBB</a>.
# Powered by <a href="http://www.adaptcms.com"><b>AdaptCMS</a>
# Powered by <a href="http://www.adaptcms.com"><b>AdaptCMS Lite</a>
# Powered by <a href="http://www.adaptcms.com">AdaptCMS Pro</a>

]

end

