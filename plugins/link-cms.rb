##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "LINK-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-12
]
version "0.1"
description "LINK-CMS: PHP based CMS"
website "http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1"

# 50 results for "Powered by LINK CMS" @ 2010-10-12

# Dorks #
dorks [
'"Powered by LINK CMS"'
]



matches [

# Powered by text
{ :text=>'<a href="http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1" target="_blank">LINK CMS</a>' },
{ :text=>'<a href="http://www.link-softsolutions.com/SoftLink-Content-Management-System---CMS_20_1">LINK CMS</a>' },

]

end

