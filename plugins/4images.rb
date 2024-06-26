# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "4images"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-18
]
version "0.1"
description "4images is a powerful web-based image gallery management system. Features include comment system, user registration and management, password protected administration area with browser-based upload and HTML templates for page layout and design."
website "http://www.4homepages.de/"

# 356 results for "powered by 4images" +4homepages.de @ 2010-09-18


matches [

# Copyright text
{ :regexp=>/Copyright &copy; 2002-[0-9]{4} <a href="http:\/\/www.4homepages.de[\>]*>4homepages.de<\/a>/ },

# Version detection # Powered by text
{ :version=>/Powered by <b>4images<\/b> ([\d\.]+)/ },

]

end

