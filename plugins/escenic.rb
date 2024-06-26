##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Escenic"
authors [
  "Erik Inge Bolsø <knan+whoknows@redpill-linpro.com>",
  "nikosk <nk@dsigned.gr>",
  "Brendan Coles <bcoles@gmail.com>", # v0.3 # 2011-03-30 # Updated regex to decrease false positives & merged EscenicEngine5 plugin. 
]
version "0.3"
description "Escenic is a commercial CMS popular in the Nordic region."
website "http://escenic.com/"

# Google results as at 2011-03-19 #
# 273 for filetype:ece

# Dorks #
dorks [
'filetype:ece'
]



# Matches #
matches [

# HTML Comment
{ :text=>'<!-- Start Escenic Analysis Engine client script -->' },

# Meta Author
{ :certainty=>75, :text=>'<meta name="author" content="Escenic AS"/>' },

# Search Form
{ :certainty=>25, :regexp=>/<form action="\/sok\/" id="[^"]+" method="get" accept-charset="utf-8"[^>]*>/ },

# GHDB # Filetype
{ :certainty=>75, :ghdb=>"filetype:ece inurl:article" },

# escenic 4.x image storage structure
{ :certainty=>25, :regexp=>/<img[^>]+src="[^"^>]+\/archive\/\d{5}\/[^"^>]+"[^>]*>/ },

# escenic .ece url match
{ :certainty=>25, :regexp=>/<a[^>]+href="[^"^>]+\/article[\d]{5,10}\.ece">[^<]*<\/a>/ },

]

end

