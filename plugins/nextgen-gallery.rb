##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NextGEN-Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-04
]
version "0.1"
description "NextGEN Gallery is a full integrated Image Gallery plugin for WordPress with dozens of options and features."
website "http://nextgen-gallery.com"



# Matches #
matches [

# Default Stylesheets
{ :regexp=>/<link rel='stylesheet' id='NextGEN-css'  href='[^']*\/wp-content\/themes\/default_ngg\/nggallery.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },
{ :regexp=>/<link rel='stylesheet' id='shutter-css'  href='[^']*\/wp-content\/plugins\/nextgen-gallery\/shutter\/shutter-reloaded.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },
{ :regexp=>/<link rel='stylesheet' id='galleryview-css'  href='[^']*\/wp-content\/plugins\/nggGalleryview\/galleryview.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },

# Version Detection # Meta Generator
{ :version=>/<meta name='NextGEN' content='([\d\.]+)' \/>/, :string=>"Wordpress" },

]

end


