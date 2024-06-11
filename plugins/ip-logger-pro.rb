##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IP-Logger-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-03
]
version "0.1"
description "The IP Logger PRO provides a straightforward and efficient way to record and analyze your website visitors completely."
website "http://www.debilsoft.de/"

# Google results as at 2011-03-03 #
# 50 for "Logdaten - Bitte hier klicken." inurl:"iplog.php?action=show"

# Dorks #
dorks [
'"Logdaten - Bitte hier klicken." inurl:"iplog.php?action=show"'
]




# Matches #
matches [

# GHDB Match
{ :certainty=>75, :ghdb=>'"Logdaten - Bitte hier klicken." inurl:"iplog.php?action=show"' },

# Version Detection # Licensed to text
{ :version=>/<br \/><br \/>&nbsp;debilsoft IP-Logger PRO Version ([\d\.]{1,5}) is licensed to [^<]+<\/div><\/body><\/html>/ },

# Default Title
{ :text=>'<title>debilsoft IP-Logger PRO Besucherdaten</title>' },

]

end


