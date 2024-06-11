##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Antiboard"
authors [
  "Andrew Horton", 
  # v0.2 # 2016-04-17 # Updated description. 
  # Andrew Horton # v0.3 # 2019-07-10 # Added website field.
]
version "0.3"
description "Antiboard is a PHP forum."
website "http://www.resynthesize.com/code/antiboard.php"

# Dorks #
dorks [
'inurl: antiboard.php'
]

# inurl: antiboard.php
#  <form method="post" action="/antiboard/antiboard.php">
# <a href="http://www.resynthesize.com/code/antiboard.php">Powered by antiboard 0.7.2</a>

# Matches #
matches [
{:name=>"inurl", :ghdb=>"inurl:antiboard.php" },
{:name=>"powered by", :text=>"<a href=\"http://www.resynthesize.com/code/antiboard.php\">Powered by antiboard" }
]

end

