##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NukeViet-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-05
]
version "0.1"
description "NukeViet CMS [Vietnamese]"
website "http://nukeviet.vn/en/"

# Google results as at 2011-08-05 #
# 401 for "Powered by NukeViet"

# Dorks #
dorks [
'"Powered by NukeViet"'
]



# Matches #
matches [

# Version Detection # Meta Generator
{ :version=>/<meta name="generator" content="Nuke[vV]iet v([^\s^"]+)" \/>/ },

# div id="run_cronjobs"
{ :text=>'<div id="run_cronjobs" style="visibility: hidden; display: none;">' },

# Admin Page
{ :regexp=>/<form class="loginform" method="post" action="[^"^>]*\/admin\/index\.php" onsubmit="return nv_checkadminlogin_submit\(\);">/ },

]

end

