##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mailman"
authors [
  "Tonmoy Saikia",
  "Brendan Coles <bcoles@gmail.com>", # v0.2 # 2011-03-05 # Updated version detection. 
]
version "0.2"
description "Mailman is free software for managing electronic mail discussion and e-newsletter lists. WEB:http://www.gnu.org/software/mailman/index.html"

# Google results as at 2011-03-05 #
# 443 for inurl:mailman "Delivered by Mailman"
# 300 for inurl:mailman "Delivered by Mailman" inurl:edu
# 205 for inurl:mailman "Delivered by Mailman" inurl:gov
# 25  for inurl:mailman "Delivered by Mailman" inurl:mil

# Dorks #
dorks [
'inurl:mailman "Delivered by Mailman"'
]



# Matches #
matches [

# GHDB Match
{ :certainty=>25, :ghdb=>'inurl:mailman "Delivered by Mailman"'},

# Mailing list listinfo links
{ :regexp=>/<td><a[^>]+href="[^"]+\/listinfo\/[^"]+"><strong>[^<]+<\/strong><\/a><\/td>/ },

# Version Detection # Delivered by logo
{ :version=>/<td><img src="[^"]+\/mailman.jpg" alt="Delivered by Mailman"[^>]+><br>version (\d.\d.[0-9a-z]+)/ },

# Version Detection # Delivered by text
{ :version=>/<td><a href="http:\/\/www.gnu.org\/software\/mailman\/index.html">Delivered by Mailman<br>version (\d.\d.[0-9a-z]+)<\/a>/ },

]

end

