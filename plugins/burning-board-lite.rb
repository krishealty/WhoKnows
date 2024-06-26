##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Burning-Board-Lite"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-26
  # v0.2 # Updated matches and version detection. 
]
version "0.2"
description "Burning Board 3 is the modern, secure and user friendly solution for your discussion board!"
website "http://www.woltlab.com/products/burning_board/index_en.php"

# 309 results for "Powered by Burning Board" -exploit -dork -johnny @ 2010-06-26

# Dorks #
dorks [
'"Powered by Burning Board" -exploit -dork -johnny'
]



matches [

# Powered by text
{ :regexp=>/Powered by <a href="http:\/\/www.woltlab.de[^>]*>Burning Board[\s]*<\/a>/ },

# Version Detection # 1.x # Powered by text
{ :version=>/Powered by <b><a href="http:\/\/www.woltlab.de" target="_blank">Burning Board ([^<]+)<\/a><\/b>/ },

# Version Detection # 2.x # Powered by text
{ :version=>/Powered by <b>Burning Board ([\d\.]+)<\/b>/ },

# Version Detection # 3.x # Copyright text
{ :version=>/<p class="copyright"><a href="http:\/\/www.woltlab.com">Forum Software: <strong>Burning Board&reg; ([\d\.]*)<\/strong>, developed by <strong>WoltLab&reg; GmbH<\/strong><\/a><\/p>/ },

]

end

