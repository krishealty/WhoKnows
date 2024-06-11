##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BigDump"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-12-28
]
version "0.1"
description "BigDump: Staggered MySQL Dump Importer "
website "http://www.ozerov.de/bigdump.php"

# 230 for intitle:"BigDump ver" +Filename "BigDump: Staggered MySQL Dump Importer"
# 210 for inurl:"bigdump.php" intitle:"BigDump ver" +Filename "BigDump: Staggered MySQL Dump Importer"

# Dorks #
dorks [
'inurl:"bigdump.php" intitle:"BigDump ver" "Filename" "BigDump: Staggered MySQL Dump Importer"'
]



# Matches #
matches [

# Version Detection
{ :version=>/<h1>BigDump: Staggered MySQL Dump Importer ver\. ([^\s^<]{2,6})<\/h1>/ },
{ :version=>/<title>BigDump ver\. ([^\s^<]{2,6})<\/title>/ },

]

end


