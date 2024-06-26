##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MShift"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-12
]
version "0.1"
description "MShift - Comprehensive Mobile Banking - Over 200 US Financial Institutions are MShift clients. With a base comprised of the largest banks in the world, as well as regional credit unions and local banks, MShift is the standard by which Mobile Banking is measured."
website "http://www.mshift.com/"

# Google results as at 2011-05-12 #
# 53 for inurl:msestks

# Dorks #
dorks [
'inurl:msestks'
]



# Matches #
matches [

# Default Page # body
{ :text=>'<BODY><b>MShift, Inc</b><br>Relevant Mobile Solutions<br>http://www.mshift.com' },

# Powered by text
{ :text=>'<td align="center"><font size="-1" color="#FFFFFF">Powered by MShift&reg;</font></td></tr>' },
{ :text=>'<td align="center"><font size="-1" color=#FFFFFF>Powered by MShift&reg;</font></td></tr>' },
{ :text=>'<div class="poweredBy">Powered by MShift &reg;</div>' },

]

# Passive #
passive do
	m=[]

	# dcttype cookie
	m << { :certainty=>25, :name=>"dcttype cookie" } if @headers["set-cookie"] =~ /^dcttype=1$/

	# Return passive matches
	m
end

end


