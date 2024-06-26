##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ChiliProject"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-07-24
]
version "0.1"
description "ChiliProject is a web based project management system."
website "https://www.chiliproject.org/"

# ShodanHQ results as at 2012-07-24 #
# 25 for _chiliproject_session

# Google results as at 2012-07-24 #
# 113 for "Powered by ChiliProject" intitle:"ChiliProject" -site:chiliproject.org

# Dorks #
dorks [
'"Powered by ChiliProject" intitle:"ChiliProject" -site:chiliproject.org'
]



# Matches #
matches [

# Powered by link
{ :text=>'Powered by <a href="https://www.chiliproject.org/">ChiliProject</a>' },

# Meta Description
{ :text=>'<meta name="description" content="ChiliProject" />' },

# HTML Comment
{ :text=>'<!-- page specific tags -->' },

# Help Link # Version Detection
{ :version=>/<li><a href="https:\/\/www\.chiliproject\.org\/help\/v([^\s^"]+)" class="help">/ },

# Set-Cookie # _chiliproject_session
{ :search=>"headers[set-cookie]", :regexp=>/_chiliproject_session=/ },

]

end

