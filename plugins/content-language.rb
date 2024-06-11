##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Content-Language"
authors [
  "Peter van der Laan",
]
version "0.1"
description "Detect the content-language setting from the HTTP header."

# Passive #
passive do
	m=[]

	# HTTP Server Header # Content-Language
	unless @headers["content-language"].nil? or @headers["content-language"].empty?

		# Language Detection
		m << { :string=>@headers["content-language"].to_s }
	end
	
	# Return passive match
	m
end

end

