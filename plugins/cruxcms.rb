##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CruxCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-10
]
version "0.1"
description "CruxCMS - Online Content Manager"
website "http://www.cruxsoftware.co.uk/"

# 10 results for "powered by Crux CMS" -vulnerability @ 2010-07-10

# Dorks #
dorks [
'"powered by Crux CMS" -vulnerability'
]



# Matches #
matches [

{:text=>'<font color="#666666"><center>Powered by <a href="http://www.cruxcms.co.uk">Crux CMS</a></center> </font>' },

{:text=>'<font color="#666666"><center>Powered by <a href="http://www.cruxsoftware.co.uk">Crux CMS</a></center> </font>' },

{:text=>'<meta name="Generator" content="Created by CruxCMS http://www.cruxsoftware.co.uk">' },

{:text=>'<meta name="Generator" content="Created by Crux CMS http://www.cruxcms.co.uk">' },

]

end

