# Debugging
# require 'profile' # debugging

# Standard Ruby
require 'getoptlong'
require 'net/http'
require 'open-uri'
require 'cgi'
require 'thread'
require 'rbconfig' # detect environment, e.g. windows or linux
require 'resolv'
require 'resolv-replace' # asynchronous DNS
require 'open-uri'
require 'digest/md5'
require 'openssl' # required for Ruby version ~> 2.4
require 'pp'


# WhoKnows libs
require_relative 'whoknows/version.rb'
require_relative 'whoknows/banner.rb'
require_relative 'whoknows/scan.rb'
require_relative 'whoknows/parser.rb'
require_relative 'whoknows/redirect.rb'
require_relative 'gems.rb'
require_relative 'helper.rb'
require_relative 'target.rb'
require_relative 'plugins.rb'
require_relative 'plugin_support.rb'
require_relative 'logging.rb'
require_relative 'colour.rb'
require_relative 'version_class.rb'
require_relative 'http-status.rb'
require_relative 'extend-http.rb'

# load the lib/logging/ folder
Dir["#{File.expand_path(File.dirname(__FILE__))}/logging/*.rb"].each {|file| require file }

# Output options
$WWDEBUG = false # raise exceptions in plugins, etc
$verbose = 0 # $VERBOSE is reserved in ruby
$use_colour = 'auto'
$QUIET = false
$NO_ERRORS = false
$LOG_ERRORS = nil
$PLUGIN_TIMES = Hash.new(0)

# HTTP connection options
$USER_AGENT = "WhoKnows/#{WhoKnows::VERSION}"
$AGGRESSION = 1
$FOLLOW_REDIRECT = 'always'
$USE_PROXY = false
$PROXY_HOST = nil
$PROXY_PORT = 8080
$PROXY_USER = nil
$PROXY_PASS = nil
$HTTP_OPEN_TIMEOUT = 15
$HTTP_READ_TIMEOUT = 30
$WAIT = nil
$CUSTOM_HEADERS = {}
$BASIC_AUTH_USER = nil
$BASIC_AUTH_PASS = nil

# Ruby Version Compatability
if Gem::Version.new(RUBY_VERSION) < Gem::Version.new(2.0)
  raise('Unsupported version of Ruby. WhoKnows requires Ruby 2.0 or later.')
end

# Initialize HTTP Status class
HTTP_Status.initialize


PLUGIN_DIRS = []

# Load plugins from only one location
# Check for plugins in folders relative to the whoknows file first
# __dir__ follows symlinks
# this will work when whoknows is a symlink in /usr/bin/
$load_path_plugins = [
	File.expand_path('../', __dir__),
	"/usr/share/whoknows" # location Makefile installs into, also used in Kali
]

$load_path_plugins.each do |dir|
	if Dir.exist?(File.expand_path("plugins", dir)) and Dir.exist?(File.expand_path("my-plugins", dir))
		PLUGIN_DIRS << File.expand_path("plugins", dir)
		PLUGIN_DIRS << File.expand_path("my-plugins", dir)
		break
	end
end
