##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FileVista"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-07
]
version "0.1"
description "FileVista is a web file manager for storing, managing and sharing files online through your web browser."
website "http://www.gleamtech.com/products/filevista/web-file-manager"

# Google results as at 2011-05-07 #
# 23 for "Welcome to FileVista" "Please enter your credentials:" "User name"

# Dorks #
dorks [
'"Welcome to FileVista" "Please enter your credentials:" "User name"'
]



# Matches #
matches [

# Version Detection # HTML comment
{ :version=>/<!--\r?\n\tFileVista v([\d\.]+)\r?\n\tCopyright / },

# Welcome to FileVista text
{ :text=>"<td>Welcome to FileVista<br />Please enter your credentials:</td>" },

]

end


