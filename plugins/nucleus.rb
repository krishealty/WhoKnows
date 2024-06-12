##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Nucleus"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-26
]
version "0.1"
description "Nucleus Webserver"

# About 146037 ShodanHQ results for "server: Nucleus" @ 2010-10-26


# HTTP Header
passive do
	m=[]

	# Server
	m << { :version=>@headers["server"].to_s.scan(/^[\s]*Nucleus\/([^\s^\r^\n]+)/i).flatten } if @headers["server"].to_s =~ /^[\s]*Nucleus\/([^\s^\r^\n]+)/i

	m

end

end

