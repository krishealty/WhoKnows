##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "OpenID"
authors [
  "Caleb Anderson",
]
version "0.1"
description "openid detection"



matches [
{:name=>"openid",
:regexp=>/<link [^>]*rel=['"](openid\.server|openid\.delegate)['"][^>]*>/i
},

]


end


