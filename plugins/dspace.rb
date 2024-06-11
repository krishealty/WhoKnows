##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DSpace"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-22
]
version "0.1"
description "An Open Archive Initiative (OAI) - compliant open-source software released by MIT for archiving eprints and other kinds of academic content."
website "http://www.dspace.org/"

# 35 for "Powered by DSpace, version"

# Dorks #
dorks [
'"Powered by DSpace, version"'
]



# Matches #
matches [

# Meta Generator
{ :text=>'<meta content="DSpace" name="Generator" />' },

# Version Detection # Meta Generator
{ :version=>/<meta name="Generator" content="DSpace ([\d\.]+)" \/>/ },

# Version Detection # Powered by text
{ :version=>/[pP]owered by <a href="http:\/\/(www\.)?dspace\.org"[^>]*>DSpace<\/a>, version ([\d\.]+)/, :offset=>1 },

]

end


