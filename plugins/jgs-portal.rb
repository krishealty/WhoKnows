##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "JGS-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-26
  # v0.2 # 2011-02-16 # Updated version detection. 
]
version "0.2"
description "CMS"
website "http://www.jgs-xa.de"

# Google results as at 2010-06-26 #
# 4,580,000 for "Powered by JGS-Portal Version"

# Dorks #
dorks [
'"Powered by JGS-Portal Version"'
]



# Matches #
matches [

# GHDB Match # Powered by text
{ :certainty=>75, :ghdb=>'"Powered by JGS-Portal Version"' },

# Version Detection # Powered by text
{ :version=>/Powered by <b>JGS-Portal Version ([\d\.]+)<\/b> &copy; / },

]

end

