##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "OneFileCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-22
]
version "0.1"
description "OneFileCMS is a flat, light, one file CMS (Content Management System) entirely contained in an easy-to-implement, highly customizable, database-less PHP script."
website "http://onefilecms.com/"

# Google results as at 2011-08-22 #
# 32 for "This site powered by OneFileCMS"

# Dorks #
dorks [
'"This site powered by OneFileCMS"'
]



# Matches #
matches [

# Powered by text
{ :text=>'<p>This site powered by <a href="http://onefilecms.com/">OneFileCMS</a>. [<a href="onefilecms.php?f=index.php">Admin</a>]</p>' },

]

end

