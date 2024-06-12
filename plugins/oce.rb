##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Oce"
authors [
  "Andrew Horton",
  # v0.2 # remove :certainty and :name, changed :regexp to :text
]
version "0.2"
description "Oce Print Exec Workgroup is easy-to-use, web-based print management software for job submission of sets of technical drawings to a single large format printer"
website "global.oce.com/products/print-exec-workgroup/default.aspx"


# http server 'PEWG/1.2'

# <title>Print Exec Workgroup</title>
# /servlet/owslhtml/owslicons/header_pewg.jpg

matches [
{:regexp=>/<title>Print Exec Workgroup<\/title>/i },
{:text=>'/servlet/owslhtml/owslicons/header_pewg.jpg' }

]


end

