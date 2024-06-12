##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MSFWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-06
  "Andrew Horton", # v0.2 # 2019-07-10 # Fix warning: character class has duplicated range
]
version "0.2"
description "Metasploit Framework Web Console"
website "http://www.metasploit.com/"

# Matches #
matches [

# Version Detection # Default Title
{ :version=>/<title>Metasploit Framework Web Console [v]?([\d\.]{1,6})-(dev|release)<\/title>/ },
{ :version=>/<title>Metasploit Framework Web Console [v]?([\d\.]{1,6})-(dev|release)<\/title>/, :offset=>1 },

# Meta Author
{ :text=>'<meta name="Author" content="Mike Whitehead (mwhite22[at]caledonian.ac.uk), Metasploit LLC" />' },

# Meta Copyright
{ :text=>'<meta name="Copyright" content="(c) 2007, Mike Whitehead (mwhite22[at]caledonian.ac.uk), (c) 2006-2007 Metasploit LLC" />' },

# Default JavaScript
{ :regexp=>/<script>[\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + mainStyle + '">'); \/\/ MSFWeb main stylesheet[\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + windowStyle + '">'); \/\/ Window frame stylesheet[\s]*<\/script>/ },

]

end


