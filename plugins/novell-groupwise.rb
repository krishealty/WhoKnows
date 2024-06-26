##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Novell-Groupwise"
authors [
  "Andrew Horton",
  # v0.2 # removed :name & :probability. 
  # v0.3 # 2011-04-21 # Added cookie match, version detection and dorks. 
]
version "0.3"
description "Novell GroupWise collaboration software is a premier collaboration tool for large enterprise. GroupWise WebAccess was released as an add-on to Novell GroupWise, providing internet-based access to GroupWise from a web browser."
website "http://www.novell.com/products/groupwise/"

# 414 for intitle:"novell webaccess" -filetype:html
# 206 for inurl:servlet/webacc -filetype:html
# 65 for intitle:"novell webaccess" inurl:servlet/webacc -filetype:html

# Dorks #
dorks [
'intitle:"novell webaccess" inurl:servlet/webacc -filetype:html'
]



# Matches #
matches [

# HTML Comments
{ :text=>"<!-- START NOVELL SERVICES -->" },
{ :text=>"<!-- START GROUPWISE WEBACCESS -->" },
{ :text=>'<!-- ========== GroupWise WebAccess Form ========== -->' },

# URL pattern and title
{ :ghdb=>'intitle:"novell webaccess" inurl:"servlet/webacc" -filetype:html' },

# Title
{ :text=>"<title>Novell Web Services</title>"},
{ :text=>'<TITLE>Novell WebAccess</TITLE>' },

# Version Detection # 6.x # Copyright footer text
{ :version=>/^&copy; Copyright 1993-20[\d]{2} Novell, Inc. All rights reserved.[\s]+<BR>Version ([\d\.]+)$/ },

]

# Passive #
passive do
	m=[]

	# NJSCN Cookie
	if @headers["set-cookie"] =~ /^NJSCN=[\d]+$/
		m << { :name=>"NJSCN Cookie" }
	end

	# Return passive matches
	m
end

end

