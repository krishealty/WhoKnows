##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "easyLink-Web-Solutions"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-03
  # v0.2 # 2011-02-24 # Updated version detection. 
  "Andrew Horton", # v0.3 # 2016-04-17 # Added website parameter and description. 
]
version "0.3"
description "German Content Management System"
website "http://www.mountaingrafix.eu/tag/easylink/"

# Google rsults as at 2010-09-03 #
# 308 for "powered by easyLink"

# Dorks #
dorks [
'"powered by easyLink"'
]



# Matches #
matches [

# HTML Comment # This may be removed only with permission of the developer
{ :text=>'Dieser Abschnitt darf nur mit Genehmigung des Entwicklers entfernt werden und bedarf einer' },

# Version Detection # Meta generator
{ :version=>/<meta name="generator" content="easyLink v([\d\.]+)" \/>/ },

# Version Detection # Powered by text
{ :version=>/[P|p]?owered by easyLink v([\d\.]+)/ },

]

end

