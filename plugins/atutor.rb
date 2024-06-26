##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ATutor"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-17
]
version "0.2"
description "ATutor is a free Open Source Web-based elearning environment designed with accessibility and adaptability in mind."
website "http://www.atutor.ca/"
# Source: https://github.com/atutor/ATutor/

# Dorks #
dorks [
'For guidance on using ATutor see the official ATutor Handbook',
'inurl:"mods/_standard/social/index_public.php"'
]

# Matches #
matches [

{ :name => "Meta Generator", :string => %r{<meta name="Generator" content="ATutor - Copyright ([0-9]{4}) by http://atutor.ca" />} },

{ :name => "JavaScript", :certainty => 75, :text => 'ATutor.course = ATutor.course || {};' },

{ :name => "Documentation link", :text => '<span id="howto">For guidance on using ATutor see the official' },

]


end

