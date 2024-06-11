##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Apache-Struts"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-01-08
  "Andrew Horton", # v0.2 # added org.apache.struts.action. seen in stack traces and GET/POST request parameter names
]
version "0.2"
description "The Apache Struts web framework is a free open-source solution for creating Java web applications."
website "https://struts.apache.org/"

# ShodanHQ results as at 2012-01-08 #
# 7 for org.apache.struts



# Matches #
matches [

# Set-Cookie # org.apache.struts.action.LOCALE
{ :search=>"headers[set-cookie]", :regexp=>/org\.apache\.struts\.action\.LOCALE=[^\s]+;/ },

# Set-Cookie # org.apache.struts.*
{ :search=>"headers[set-cookie]", :regexp=>/org\.apache\.struts\.[^\s]+=[^\s]+;/, :certainty=>75 },

# org.apache.struts.action in a local link parameter name
{:search=>"body", :regexp=>/<a\s+href=[^>]+org.apache.struts/},

# anywhere in page
{:search=>"all", :version=>2, :text=>'org.apache.struts2', :certainty=>25},
{:search=>"all", :version=>1, :text=>'org.apache.struts.', :certainty=>25},

{:regexp=>/Development mode, or devMode, enables extra\s+debugging behaviors and reports to assist developers.  To disable this mode, set:\s+<pre>\s+  struts.devMode=false/, :string=>"Development Mode"}

]

end

