##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "EMC-NetWorker"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-09-01
]
version "0.1"
description "EMC NetWorker (formerly Legato NetWorker) centralizes, automates, and accelerates data backup and recovery."
website "http://www.emc.com/domains/legato/index.htm"

# More Info #
# http://en.wikipedia.org/wiki/EMC_NetWorker



# Matches #
matches [

# Title
{ :text=>'<title>Welcome to NetWorker Management Console</title>' },

]

end

