##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MapServer-4-Windows"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-26
]
version "0.1"
description "MapServer for Windows (MS4W)"
website "http://www.maptools.org/ms4w/"



# Matches #
matches [

# / # Title
{ :text=>'<title>MS4W - MapServer 4 Windows</title>' },

# / # Heading # Version Detection
{ :version=>/<h1>MS4W - MapServer 4 Windows - version ([^<]+)<\/h1>\s+<h2>Introduction<\/h2>/ },

]

end

