##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MapServer"
authors [
  "Aung Khant, http://yehg.net",
  "Brendan Coles <bcoles@gmail.com>", # v0.2 # 2011-07-30 # Added examples URLs, added passive match and added google dork. 
  "Andrew Horton", # v0.3 # Replaced aggressive function with matches
]
version "0.3"
description "Detect MapServer CGI application (http://www.mapserver.org/)"

# Google results as at 2011-07-30 #
# 210 for inurl:cgi-bin/mapserv/?map
# 133 for inurl:"cgi-bin/mapserv/?map"
#  80 for inurl:"cgi-bin/mapserv.exe/?map"

# Dorks #
dorks [
'inurl:cgi-bin/mapserv/?map'
]

			

matches [
 {:name=>"Version", :url=>"?map=*", :version=>/<\/HEAD>\s*<!\-\- MapServer version (.*?)\s/ },
 {:name => "Invalid Map Parameter", :url=>"/cgi-bin/mapserv/?map=*", :regexp=>/<BODY BGCOLOR="#FFFFFF">\s*msLoadMap(): Regular expression error/},
 {:name => "Invalid Map Parameter", :url=>"/cgi-bin/mapserv/?map=*", :regexp=>/<HEAD><TITLE>MapServer Message<\/TITLE><\/HEAD>\s*<!\-\- MapServer version/}
]

# Passive #
passive do
	m=[]
	# Error Message # Empty QUERY_STRING
	if @body == "No query information to decode. QUERY_STRING is set, but empty.\n"
		m << { :name=>"Error Message" }
	end
	# Return passive matches
	m
end

end

