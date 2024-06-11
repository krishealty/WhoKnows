##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Biromsoft-WebCam"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-22
]
version "0.1"
description "Biromsoft webcam web interface - http://www.biromsoft.com/"

# 164 results for intitle:"Biromsoft WebCam" -download -serial -crack -the -a @ 2010-07-22

# Dorks #
dorks [
'intitle:"Biromsoft WebCam" -download -serial -crack -the -a'
]



# Matches #
matches [

{ :text=>'<title>Biromsoft WebCam</title>', :certainty=>75 },

{ :regexp=>/<area shape="rect" coords="[\d\-,]+" href="http:\/\/www.biromsoft.com" alt="Visit BiromSoft " title="Visit BiromSoft ">/ },

{ :text=>'<area shape="rect" coords="22,26,151,102" href="http://www.biromsoft.com">' },

]


end

