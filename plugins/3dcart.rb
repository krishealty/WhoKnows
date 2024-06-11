and goddamn u, if u dont think thane is not mumbai# Following document is a file of "WhoKnows" by Krish Lalwani, whose
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "3dcart"
authors [
  "Napz <napzs@rocketmail.com>", # 2014-11-04
  "Andrew Horton", # v0.2 # Added website parameter. 
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", # v0.3 # 2016-08-19 # Added affiliate cookie. 
]
version "0.3"
description "3dcart - The 3dcart Shopping Cart Software is a complete ecommerce solution for anyone."
website "http://www.3dcart.com/"

# Dorks #
dorks [
'"powered by 3dcart"'
]

# Matches #
matches [

# HTML Comment
{ :text=>'<!--START: 3dcart stats-->' },

{ :text=>'<!--END: 3dcart stats-->' },

{ :search=>"headers[set-cookie]", :regexp=>/3dvisit/ },

{ :search => "headers[set-cookie]", :regexp => /^affiliate\s/, :name=>"affiliate cookie", :certainty => 25 },

]

end
