##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mercurial"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-16
]
version "0.1"
description "Mercurial is a free, distributed source control management tool."
website "http://mercurial.selenic.com/"

# Google results as at 2011-08-16 #
# 462 for Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz
# 239 for Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz inurl:shortlog

# Dorks #
dorks [
'Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz'
]



# Matches #
matches [

{ :text=>'<a href="http://mercurial.selenic.com/" title="Mercurial" style="float: right;">Mercurial</a>' },

# Powered by link
{ :regexp=>/<div id="powered-by">[\s]+<p><a href="http:\/\/mercurial\.selenic\.com\/" title="Mercurial">/ },

]

end

