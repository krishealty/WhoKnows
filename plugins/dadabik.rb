##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DaDaBIK"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-25
]
version "0.1"
description "DaDaBIK is an Open Source PHP application which allows you to easily create a highly customizable database front-end/application without coding. You can use it to create in a few minutes a very basic CRUD (create, read, update, delete) database front-end or to develop a more sophisticated database application. DaDaBIK uses the ADOdb and the PDO database abstraction libraries in order to support as many DBMSs as possible, at the moment it has been tested on MySQL, PostgreSQL, SQLite, Oracle and MS SQL Server."
website "http://www.dadabik.org/"

# Google results as at 2011-08-25 #
# 22 for "Powered by: DaDaBIK database front-end" intitle:"DaDaBIK database front-end"

# Dorks #
dorks [
'"Powered by: DaDaBIK database front-end" intitle:"DaDaBIK database front-end"'
]



# Matches #
matches [

# Version Detection # Meta Generator
{ :version=>/<meta name="Generator" content="DaDaBIK ([^"^>]{1,10}) - http:\/\/www\.dadabik\.org\/">/ },

# Powered by footer
{ :text=>'<div class="powered_by_dadabik" align="right">Powered by: <a href="http://www.dadabik.org/">DaDaBIK</a> database front-end</div>' },

]

end

