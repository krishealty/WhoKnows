##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Adobe-Connect"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-05
]
version "0.1"
description "Adobe Connect is an enterprise web conferencing solution for online meetings, eLearning, and webinars used by leading corporations and government agencies."
website "https://www.adobe.com/products/adobeconnect.html"

# ShodanHQ results as at 2011-03-13 #
# 2,459 for BREEZESESSION



# Matches #
matches [

# JavaScript
{ :text=>'<script src="/common/scripts/showContent.js"></script><script type="text/javascript" src="/common/scripts/breezeUI.js"></script><script>' },

# Help Link # Version Detection
{ :version=>/<a class="loginHelp" title="([^\s^\"]+)" target="_blank" href="\/common\/help\/[^\/]+\/go\/login_ts\.html"( target="_blank")?>Help<\/a>/ },

# BREEZESESSION Cookie
{ :search=>"headers[BREEZESESSION]", :regexp=>/BREEZESESSION=breez[^;]+;/ },

# /favicon.ico
{ :url=>"/favicon.ico", :md5=>"b93d28579e6a42ca452c35e8f1eb23ea" },

]

end

