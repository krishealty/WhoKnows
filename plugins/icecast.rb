##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Icecast"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-07
]
version "0.1"
description "Icecast is a GPL streaming media server project that currently streams in MP3 format."
website "http://www.icecast.org/"

# ShodanHQ results as at 2011-08-07 #
# 75 for icecast



# Passive #
passive do
	m=[]

	# Version Detection # HTTP Server Header
	if @headers["server"] =~ /^Icecast ([^\s]+)/
		m << { :version=>"#{$1}" }
	end
	if @headers["server"] =~ /^icecast\/([^\s]+)/
		m << { :version=>"#{$1}" }
	end

	# icy-name Header
	m << { :string=>@headers["icy-name"].to_s } unless @headers["icy-name"].nil?

	# WWW-Authenticate Header
	m << { :certainty=>75, :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /Basic realm="Icecast/

	# Return passive matches
	m
end
end

