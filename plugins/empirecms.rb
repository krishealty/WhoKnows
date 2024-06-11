##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Empire-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-04
]
version "0.1"
description "Open source CMS"
website "http://www.phome.net/"

# 371 results for "powered by EmpireCMS" @ 2010-08-04

# Dorks #
dorks [
'"powered by EmpireCMS"'
]



matches [

{ :text=>' - Powered by EmpireCMS</title>' },

]

end

