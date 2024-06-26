##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AJA-Video-Converter"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-12-05
]
version "0.1"
description "AJA digital video converter devices"
website "http://www.aja.com/en/products/convert/"



# Matches #
matches [

# FS1 # Title
{ :text=>'<title>AJA Video - FS1 Admin: Main</title> <link href="/css/aja_fs1.css"', :model=>"FS1" },

# System Name # /json?action=get&configid=0&alt=json&paramid=eParamID_SysName
{ :url=>"/json?action=get&configid=0&alt=json&paramid=eParamID_SysName", :string=>/\{"paramid":"839188480","name":"eParamID_SysName","value":"([^\"]+)"/ },

]

end

