##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "activeWeb-Content-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-25
  "Andrew Horton", # v0.2 # 2016-04-18 # Moved HTTP header patterns from passive function to matches[]. 
]
version "0.2"
description "Content Server is a comprehensive, scalable content management platform for professional demands. It combines editorial system, website management and development environment for Web applications in one package."
website "http://www.active-web.de/"

# ShodanHQ results as at 2011-03-25 #
# 19 for X-AwCache

# Matches #
matches [

# Version Detection # HTML Comment
{ :version=>/<!--[\s]+page generated with activeWeb contentserver R([\d\.]+)/ },
{ :version=>/<!--[\s]+activeWeb cache extension R([\d\.]+)/ },

# HTML Comment
{ :text=>'<!-- AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN__AWNOCACHEBEGIN -->' },

# X-AwCache-* HTTP Server Header
{ :name=>"X-AwCache-FollowUp Header", :text=>"", :search=>"headers[x-awcache-followup]" },
{ :name=>"X-AwCache-Command Header", :text=>"", :search=>"headers[x-awcache-command]" },

# Technology Detection
{ :name=>"X-AwCache-ScriptTechnology Header", :string=>/^.*$/ ,:search=>"headers[x-awcache-scripttechnology]" },

]


end

