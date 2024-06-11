##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Fidion-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-12 
]
version "0.1"
description "CMS"
website "http://www.fidion.de/"

# 14 results for "powered by FCMS Copyright" @ 2010-09-12

# Dorks #
dorks [
'"powered by FCMS Copyright"'
]



# Matches #
matches [

# HTML Comment
{ :text=>'<!-- ================== This site is powered by: ==================== -->' },
{ :text=>'<!-- | fCMS by fidion GmbH, Wüg.         http://www.fidion.de  | -->' },
{ :text=>'<!-- fCMS-Template head.tpl begins -->' },

]


end

