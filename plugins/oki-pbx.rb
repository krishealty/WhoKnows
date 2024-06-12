##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "OkiPBX"
authors [
  "Andrew Horton",
  # v0.2 # remove :certainty and :name, change regexp to text
]
version "0.2"
description "OKI PBX (phone exchange) http://www.oki.com/en/iptel/products/mxsx/maintenance.html"

#
# OKI PBX
# <APPLET CODE="DavisBar.class" ARCHIVE="ipstage.jar"
#   <PARAM NAME="servertype" value="ONLINE">
#    <PARAM NAME="systype"    value="OKI">


matches [
{:text=>'<title>IPstageMaintenanceConsole(PBX)</title>' },
{:text=>'<APPLET CODE="DavisBar.class" ARCHIVE="ipstage.jar"' },
{:text=>'<PARAM NAME="systype"    value="OKI">' }
]

end



