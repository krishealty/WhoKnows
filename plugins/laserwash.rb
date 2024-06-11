##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "LaserWash"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2013-07-28
]
version "0.1"
description "PDQ - LaserWash - touchless car wash equipment."
website "http://www.pdqinc.com/car-wash-equipment/laserwash-360.asp"

# ShodanHQ results # 2013-07-28
# 42 for "PDQ Laserwash"


# Matches #
matches [

# WWW-Authenticate realm
{ :status=>401, :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="PDQ Laserwash"$/ },

]

end

