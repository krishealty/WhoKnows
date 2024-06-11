##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "LiteSpeed"
authors [
  "Sagar Prakash Junnarkar  <sagarjunnu@gmail.com>", # 2012-11-09" 
]
  version "1.0"
  description "LiteSpeed web server, which is able to read Apache configuration directly and used together with web hosting control panels by replacing Apache"

	passive do
		m=[]
		m << {:name=>"LiteSpeed server" } if @headers["server"] =~ /LiteSpeed/i
		m
	end
end
