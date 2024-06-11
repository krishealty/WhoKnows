# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
	name "Plugin-Tutorial-4"
	authors [
		"Your preferred name <email@address>", # v0.1 # 2019-01-01 # Created plugin
	]
	version "0.1"
	description "GenericWAF is a commercial Web Application Firewall (WAF)."
	website "http://example.com/"

	# Matches #
	matches [

		# HTTP Server Header
		{ :search => "headers[server]", :regexp => /genericwaf\-nginx/ },

		# Cookie 
		{ :search => "headers[set-cookie]", :regexp => /__genericwafuid/, :name=>"__genericwafuid cookie" },

	] 

end
