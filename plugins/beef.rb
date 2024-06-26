##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BeEF"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-04
  # v0.2 # 2011-03-02 # Added favicon and beefmagic.js.php matches. 
  # v0.3 # 2011-03-26 # Added version detection. 
  # v0.4 # 2012-04-12 # Updated matches for new versions of BeEF. 
]
version "0.4"
description "BeEF - Browser Exploitation Framework"
website "http://beefproject.com/"



# Matches #
matches [

# PHP BeEF # Default Logo HTML
{ :text=>'<img src="../images/beef.gif" onclick="new Effect.Shake(\'sidebar\');"></div> BeEF</h1>' },

# PHP BeEF # Title
{ :certainty=>75, :text=>'<title>Browser Exploitation Framework</title>' },

# PHP BeEF # Injected script
{ :regexp=>/<script[^>]+src=['"]?[^>^="'^"]+\/hook\/beefmagic\.js\.php['"]?/, :certainty=>75, :string=>"Hook" },

# Injected script
{ :regexp=>/<script[^>]+src=['"]?https?:\/\/[^\/]+\/hook\.js['"]?/, :certainty=>75, :string=>"Hook" },

# Logo HTML
{ :url=>"/ui/authentication", :text=>'<div id="centered"><img id="beef-logo" src="/ui/media/images/beef.png" alt="BeEF - The Browser Exploitation Framework" /></div>' },

# /ui/media/images/beef.png
{ :url=>"/ui/media/images/beef.png", :md5=>"5f8cdcd65c5c05f875710f2c10503192" },

# HTTP # Server # Version Detection
{ :search=>"headers[server]", :version=>/^BeEF ([^\s]+)$/ },

]

end

