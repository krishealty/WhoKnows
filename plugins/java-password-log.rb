##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Java-Password-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-15
]
version "0.1"
description "This plugin detects Java password.log files and retrieves the usernname, password and URL."

# 68 results for password END_FILE ext:log @ 2010-10-15

# Dorks #
dorks [
'password END_FILE ext:log'
]



# Extract username, password and URL
passive do
	m=[]

	if @body =~ /END_FILE/

		if @body =~ /^name: = "([^\"]+)";[\r]?\npassword: = "([^\"]+)";[\r]?\nURL: = "([^\"]+)";/
			modules=@body.scan(/^name: = "([^\"]+)";[\r]?\npassword: = "([^\"]+)";[\r]?\nURL: = "([^\"]+)";/)
			m << {:module=>modules}
		end

	end

	m

end

end

