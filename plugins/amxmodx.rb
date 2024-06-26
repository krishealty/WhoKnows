##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AMX-Mod-X"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-04
  "Andrew Horton", # v0.2 # 2016-04-17 # Added website parameter. 
]
version "0.2"
description "AMX Mod X is a versatile Half-Life metamod plugin which is targetted toward server administration."
website "http://www.amxmodx.org/"
# Dorks #
dorks [
'ext:cfg "Linux users may encounter problems if they specify"'
]

# 4 results for ext:cfg "Linux users may encounter problems if they specify" @ 2010-09-04


# Matches #
matches [

{ :text=>'// *NOTE* amx_sql_type specifies the DEFAULT database type which admin.sma will use.' },

]

# Grab mySQL username, server and database details
passive do
	m=[]

	if @body =~ /amx_sql_host[\s]+"([^\"]*)"/ and @body =~ /amx_sql_user[\s]+"([^\"]+)"/ and @body =~ /amx_sql_pass[\s]+"([^\"]*)"/
                version=@body.scan(/amx_sql_user[\s]+"([^\"]+)"/)[0][0] + ":" + @body.scan(/amx_sql_pass[\s]+"([^\"]*)"/)[0][0] + "@" + @body.scan(/amx_sql_host[\s]+"([^\"]+)"/)[0][0]
                m << {:version=>version}
        end

        m

end


end

