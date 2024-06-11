##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Controlstar-SCADA"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-26
]
version "0.1"
description "Controlstar SCADA"
website "http://www.controlstar.com/product_scada.php"



# Matches #
matches [

# / # applet HTML
{ :text=>'<APPLET archive="scada.jar, toolbox.jar, batik.jar, crimson-parser.jar" code="Scada" style="position:absolute;left:0;top:0;width:expression(document.body.clientWidth);height:expression(document.body.clientHeight);" >' },

]

end

