##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Kohana"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-10
]
version "0.1"
description "Kohana is an elegant HMVC PHP5 framework that provides a rich set of components for building web applications."
website "http://kohanaframework.org/"

# Google results as at 2011-05-10 #
# 394 for kohanasession



# Matches #
matches [


]

# Passive #
passive do
	m=[]

	# kohanasession cookie
	m << { :name=>"kohanasession cookie" } if @headers["set-cookie"] =~ /kohanasession=[a-z\d]{26}; expires=/

	# kohanasession_data cookie
	m << { :name=>"kohanasession_data cookie" } if @headers["set-cookie"] =~ /kohanasession_data=/

	# Return passive matches
	m
end

end


