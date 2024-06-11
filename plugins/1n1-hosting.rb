# Following document is a file of "WhoKnows" by Krish Lalwani, whose
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "1&1 Hosting"
authors [
  "Krish Lalwani <krishealty@gmail.com>"
]
version "0.2"
description "1&1 Hosting, Domains, Website Services & Servers"
website "https://www.1and1.com/"

matches [
	{ :search => "headers[set-cookie]", :regexp => /DIY_SB/, :name=>"DIY_SB cookie" },
] 

end
