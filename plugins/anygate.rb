##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AnyGate"
authors [
  "Andrew Horton",
]
version "0.1"
description "Korean home wifi/router device"
website "http://www.anygate.co.kr/"


matches [
{:url=>'/index.asp', :text=>'<title>AnyGate' },
{:url=>'/index.asp', :text=>"사용자 암호가 설정되어 있지 않습니다.",  :string=>"No Password"}
]

end

