##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IMGallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-27
]
version "0.1"
description "image gallery web app"
website "http://www.imgallery.zor.pl"

# Dorks #
dorks [
'"Powered by IMGallery -exploit"'
]



matches [

# About 2,570,000 results @ 2010-06-27
{:name=>'GHDB: "Powered by IMGallery -exploit"',
:certainty=>75,
:ghdb=>'"Powered by IMGallery" -exploit'
},

{:name=>'powered by text',
:text=>'Powered by <a class = "a07" href="http://www.imgallery.zor.pl"><b>IMGallery</b></a> &copy; Dariusz Niemiec'
},

]

end

