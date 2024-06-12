[![License](https://img.shields.io/badge/license-GPLv2-brightgreen.svg)](https://raw.githubusercontent.com/krishealty/whoknows/master/LICENSE) ![Stable Release](https://img.shields.io/badge/stable_release-0.1.1-blue.svg) ![WhoKnows Plugins](https://img.shields.io/badge/plugins-1000-brightgreen.svg)

<p align=center">
<img src="wklogo.png">
</p>

# WhoKnows - All in One New generation web scanner
Maintained by [krishealty](https://github.com/krishealty/)<br>
For full information, check out this [WhoKnows Wiki](https://github.com/krishealty/WhoKnows/wiki/)

This product is subject to the terms detailed in the license agreement.

If you have any questions, comments or concerns regarding WhoKnows, please consult the documentation prior to contacting one of the developers. Your feedback is always welcome. 

##  Contents

* About WhoKnows
* Example Usage
* Usage 
* Logging & Output
* Plugins
* Aggression
* Performance & Stability
* Optional Dependencies
* Writing Plugins
* Updates & Additional Information
* Release History
* Credits

## About WhoKnows

WhoKnows is a Penetration test tool and webscanner that can penetrate websites, domains, sub domainss, DNS, metadata, web crawling, web scraping, IPs, web technologies including content management systems (CMS), blogging platforms, statistic/analytics packages, JavaScript libraries, web servers, and embedded devices. WhoKnows has over 1800 plugins by diffrent authors around the globe, each to recognise something different. WhoKnows also identifies version numbers, email addresses, account IDs, web framework modules, SQL errors, and more.

WhoKnows is flexible can be stealthy and fast, or thorough but slow. WhoKnows supports an aggression level to control the trade off between speed and reliability. When you visit a website in your browser, the transaction includes many hints of what web technologies are powering that website. Sometimes a single webpage visit contains enough information to identify a website but when it does not, WhoKnows can interrogate the website further. The default level of aggression, called 'stealthy', is the fastest and requires only one HTTP request of a website. This is suitable for scanning public websites. More aggressive modes were developed for use in penetration tests.

Most WhoKnows plugins are thorough and recognise a range of cues from subtle to obvious. For example, most WordPress websites can be identified by the meta HTML tag, e.g. '<meta name="generator" content="WordPress 2.6.5">', but a minority of WordPress websites remove this identifying tag but this does not thwart WhoKnows. The WordPress WhoKnows plugin has over 15 tests, which include checking the favicon, default installation files, login pages, and checking for "/wp-content/" within relative links.


### Features
* Over 1800 plugins
* Control the trade off between speed/stealth and reliability
* Performance tuning. Control how many websites to scan concurrently.
* Multiple log formats: Brief (greppable), Verbose (human readable), XML, JSON, MagicTree, RubyObject, MongoDB, ElasticSearch, SQL.
* Proxy support including TOR
* Custom HTTP headers
* Basic HTTP authentication
* Control over webpage redirection
* IP address ranges
* Fuzzy matching
* Result certainty awareness
* Custom plugins defined on the command line
* IDN (International Domain Name) support

## Installation 

Download [Source Code](https://github.com/krishealty/WhoKnows/releases)

Please refer to this [Installation](https://github.com/krishealty/WhoKnows/wiki/Installation) page for full tutorial on installation.

## Example Usage

Using WhoKnows to scan reddit.com.

```
$ ./whoknows reddit.com
http://reddit.com [301 Moved Permanently] Country[UNITED STATES][US], HTTPServer[snooserv], IP[151.101.65.140], RedirectLocation[https://www.reddit.com/], UncommonHeaders[retry-after,x-served-by,x-cache-hits,x-timer], Via-Proxy[1.1 varnish]
https://www.reddit.com/ [200 OK] Cookies[edgebucket,eu_cookie_v2,loid,rabt,rseor3,session_tracker,token], Country[UNITED STATES][US], Email[banner@2x.png,snoo-home@2x.png], Frame, HTML5, HTTPServer[snooserv], HttpOnly[token], IP[151.101.37.140], Open-Graph-Protocol[website], Script[text/javascript], Strict-Transport-Security[max-age=15552000; includeSubDomains; preload], Title[reddit: the front page of the internet], UncommonHeaders[fastly-restarts,x-served-by,x-cache-hits,x-timer], Via-Proxy[1.1 varnish], X-Frame-Options[SAMEORIGIN]
```

## Usage
```

 __        ___             _  __                        
 \ \      / / |__   ___   | |/ /_ __   _____      _____ 
  \ \ /\ / /| '_ \ / _ \  | ' /| '_ \ / _ \ \ /\ / / __|
   \ V  V / | | | | (_) | | . \| | | | (_) \ V  V /\__ \
    \_/\_/  |_| |_|\___/  |_|\_\_| |_|\___/ \_/\_/ |___/
                                                         

by krishealty

Usage: whoknows [options] <URLs>

TARGET SELECTION:
  <TARGETs>             Enter URLs, hostnames, IP addresses, filenames or
                        IP ranges in CIDR, x.x.x-x, or x.x.x.x-x.x.x.x
                        format.
  --input-file=FILE, -i Read targets from a file. You can pipe
                        hostnames or URLs directly with -i /dev/stdin.

TARGET MODIFICATION:
  --url-prefix          Add a prefix to target URLs.
  --url-suffix          Add a suffix to target URLs.
  --url-pattern         Insert the targets into a URL. Requires --input-file,
                        eg. www.example.com/%insert%/robots.txt 

AGGRESSION:
  The aggression level controls the trade-off between speed/stealth and
  reliability.
  --aggression, -a=LEVEL Set the aggression level. Default: 1.
  Aggression levels are:
  1. Stealthy   Makes one HTTP request per target. Also follows redirects.
  3. Aggressive If a level 1 plugin is matched, additional requests will be
      made.
  4. Heavy      Makes a lot of HTTP requests per target. Aggressive tests from
      all plugins are used for all URLs.

HTTP OPTIONS:
  --user-agent, -U=AGENT Identify as AGENT instead of WhoKnows/0.5.5.
  --header, -H          Add an HTTP header. eg "Foo:Bar". Specifying a default
                        header will replace it. Specifying an empty value, eg.
                        "User-Agent:" will remove the header.
  --follow-redirect=WHEN Control when to follow redirects. WHEN may be `never',
                        `http-only', `meta-only', `same-site', or `always'.
                        Default: always.
  --max-redirects=NUM   Maximum number of contiguous redirects. Default: 10.

AUTHENTICATION:
  --user, -u=<user:password> HTTP basic authentication.
  --cookie, -c=COOKIES  Provide cookies, e.g. 'name=value; name2=value2'.
  --cookiejar=FILE      Read cookies from a file.

PROXY:
  --proxy           <hostname[:port]> Set proxy hostname and port.
                    Default: 8080.
  --proxy-user      <username:password> Set proxy user and password.

PLUGINS:
  --list-plugins, -l            List all plugins.
  --info-plugins, -I=[SEARCH]   List all plugins with detailed information.
                                Optionally search with keywords in a comma
                                delimited list.
  --search-plugins=STRING       Search plugins for a keyword.
  --plugins, -p=LIST  Select plugins. LIST is a comma delimited set of 
                      selected plugins. Default is all.
                      Each element can be a directory, file or plugin name and
                      can optionally have a modifier, eg. + or -
                      Examples: +/tmp/moo.rb,+/tmp/foo.rb
                      title,md5,+./plugins-disabled/
                      ./plugins-disabled,-md5
                      -p + is a shortcut for -p +plugins-disabled.

  --grep, -g=STRING|REGEXP      Search for STRING or a Regular Expression. Shows 
                                only the results that match.
                                Examples: --grep "hello"
                                --grep "/he[l]*o/"
  --custom-plugin=DEFINITION\tDefine a custom plugin named Custom-Plugin,
  --custom-plugin=DEFINITION  Define a custom plugin named Custom-Plugin,
                        Examples: ":text=>'powered by abc'"
                        ":version=>/powered[ ]?by ab[0-9]/"
                        ":ghdb=>'intitle:abc \"powered by abc\"'"
                        ":md5=>'8666257030b94d3bdb46e05945f60b42'"
  --dorks=PLUGIN        List Google dorks for the selected plugin.

OUTPUT:
  --verbose, -v         Verbose output includes plugin descriptions. Use twice
                        for debugging.
  --colour,--color=WHEN control whether colour is used. WHEN may be `never',
                        `always', or `auto'.
  --quiet, -q           Do not display brief logging to STDOUT.
  --no-errors           Suppress error messages.

LOGGING:
  --log-brief=FILE        Log brief, one-line output.
  --log-verbose=FILE      Log verbose output.
  --log-errors=FILE       Log errors.
  --log-xml=FILE          Log XML format.
  --log-json=FILE         Log JSON format.
  --log-sql=FILE          Log SQL INSERT statements.
  --log-sql-create=FILE   Create SQL database tables.
  --log-json-verbose=FILE Log JSON Verbose format.
  --log-magictree=FILE    Log MagicTree XML format.
  --log-object=FILE       Log Ruby object inspection format.
  --log-mongo-database    Name of the MongoDB database.
  --log-mongo-collection  Name of the MongoDB collection. Default: whoknows.
  --log-mongo-host        MongoDB hostname or IP address. Default: 0.0.0.0.
  --log-mongo-username    MongoDB username. Default: nil.
  --log-mongo-password    MongoDB password. Default: nil.  
  --log-elastic-index     Name of the index to store results. Default: whoknows 
  --log-elastic-host      Host:port of the elastic http interface. Default: 127.0.0.1:9200
  
PERFORMANCE & STABILITY:
  --max-threads, -t       Number of simultaneous threads. Default: 25.
  --open-timeout          Time in seconds. Default: 15.
  --read-timeout          Time in seconds. Default: 30.
  --wait=SECONDS          Wait SECONDS between connections.
                          This is useful when using a single thread.

HELP & MISCELLANEOUS:
  --short-help            Short usage help.
  --help, -h              Complete usage help.
  --debug                 Raise errors in plugins.
  --version               Display version information. (WhoKnows 0.5.5).

EXAMPLE USAGE:
* Scan example.com.
  ./whoknows example.com
* Scan reddit.com slashdot.org with verbose plugin descriptions.
  ./whoknows -v reddit.com slashdot.org
* An aggressive scan of wired.com detects the exact version of WordPress.
  ./whoknows -a 3 www.wired.com
* Scan the local network quickly and suppress errors.
  whoknows --no-errors 192.168.0.0/24
* Scan the local network for https websites.
  whoknows --no-errors --url-prefix https:// 192.168.0.0/24
* Scan for crossdomain policies in the Alexa Top 1000.
  ./whoknows -i plugin-development/alexa-top-100.txt \
  --url-suffix /crossdomain.xml -p crossdomain_xml

```

## Logging & Output

The following types of logging are supported:
* --log-brief=FILE    Brief, one-line, greppable format
* --log-verbose=FILE  Verbose
* --log-xml=FILE    XML format. XSL stylesheet is provided
* --log-json=FILE   JSON format
* --log-json-verbose=FILE JSON verbose format
* --log-magictree=FILE  MagicTree XML format
* --log-object=FILE Ruby object inspection format
* --log-mongo-database  Name of the MongoDB database
* --log-mongo-collection  Name of the MongoDB collection. Default: whoknows
* --log-mongo-host  MongoDB hostname or IP address. Default: 0.0.0.0
* --log-mongo-username  MongoDB username. Default: nil
* --log-mongo-password  MongoDB password. Default: nil
* --log-elastic-index   Name of the index to store results. Default: whoknows 
* --log-elastic-host    Host:port of the elastic http interface. Default: 127.0.0.1:9200
* --log-errors=FILE Log errors. This is usually printed to the screen in red.

You can output to multiple logs simultaneously by specifying multiple command line logging options. Advanced users who want SQL output should read the source code to see unsupported features.

## Plugins

Matches are made with:
* Text strings (case sensitive)
* Regular expressions
* Google Hack Database queries (limited set of keywords)
* MD5 hashes
* URL recognition
* HTML tag patterns
* Custom ruby code for passive and aggressive operations

To list the plugins supported:

    $ ./whoknows -l

### WhoKnows Plugin List

    Plugin Name - Description
    --------------------------------------------------------------------------------
    1024-CMS - 1024 is one of a few CMS's leading the way with the implementation...
    360-Web-Manager - 360-Web-Manager
    3COM-NBX - 3COM NBX phone system. The NBX NetSet utility is a web interface i...
    3dcart - 3dcart - The 3dcart Shopping Cart Software is a complete ecommerce s...
    4D - 4D web application deployment server
    4images - 4images is a powerful web-based image gallery management system. Fe...
    ... (truncated)

### Search Plugins
To view more detail about a plugin or search plugins for a keyword:

    $ ./whoknows -I phpBB

    WhoKnows Detailed Plugin List
    Searching for phpBB
    ================================================================================
    Plugin:         phpBB
    --------------------------------------------------------------------------------
    Description:    phpBB is a free forum 
    Website:        http://phpbb.org/
    
    Author:         Andrew Horton
    Version:        0.3
    
    Features:       [Yes]  Pattern Matching (7)
                    [Yes]  Version detection from pattern matching
                    [Yes]  Function for passive matches
                    [Yes]  Function for aggressive matches
                    [Yes]  Google Dorks (1)
    
    Google Dorks:
    [1] "Powered by phpBB"
    ================================================================================

### Plugin Selection
All plugins are loaded by default.

Plugins can be selected by directories, files or plugin names as a comma delimited list with the -p or --plugin command line option.

Each list item may have a modifier: + adds to the full set, - removes from the full set and no modifier overrides the defaults.

### Examples

* --plugins +plugins-disabled,-foobar
* --plugins +/tmp/moo.rb
* --plugins foobar (only select foobar)
* -p title,md5,+./plugins-disabled/
* -p ./plugins-disabled,-md5

The --dorks <plugin name> command line option returns google dorks for the selected plugin. For example, --dorks wordpress returns "is proudly powered by WordPress"

The --grep, -g command line option searches the target page for the selected string and returns a match in a plugin called Grep if it is found.


## Aggression

WhoKnows features several levels of aggression. By default the aggression level is set to 1 (stealthy) which sends a single HTTP GET request and also follows redirects.

    --aggression, -a
    
      1. Stealthy Makes one HTTP request per target. Also follows redirects.
        2. Unused
        3. Aggressive Can make a handful of HTTP requests per target. This triggers
            aggressive plugins for targets only when those plugins are
            identified with a level 1 request first.
      4. Heavy  Makes a lot of HTTP requests per target. Aggressive tests from
            all plugins are used for all URLs.

Level 3 aggressive plugins will guess more URLs and perform actions that are potentially unsuitable without permission. WhoKnows currently does not support any intrusion/exploit level tests in plugins.

### An example of the different results between level 1 and level 3:

A level 1, stealthy scan identifies that smartor.is-root.com/forum/ uses phpBB version 2:

    $ ./whoknows smartor.is-root.com/forum/
    http://smartor.is-root.com/forum/ [200] PasswordField[password], HTTPServer[Apache/2.2.15], PoweredBy[phpBB], Apache[2.2.15], IP[88.198.177.36], phpBB[2], PHP[5.2.13], X-Powered-By[PHP/5.2.13], Cookies[phpbb2mysql_data,phpbb2mysql_sid], Title[Smartors Mods Forums - Reloaded], Country[GERMANY][DE]

A level 3, aggressive scan triggers additional tests in the phpBB plugin which identifies that the website uses phpBB version 2.0.20 or higher:

    $ ./whoknows -p plugins/phpbb.rb -a 3 smartor.is-root.com/forum/
    http://smartor.is-root.com/forum/ [200] phpBB[2,>2.0.20]

Note the use of the -p argument to select only the phpBB plugin. It is advisable, but not mandatory, to select a specific plugin when attempting to fingerprint software versions in aggressive mode. This approach is far more stealthy as it will limit the number of requests.

WhoKnows has no caching so if you use aggressive plugins on redirecting URLs you may fetch the same files multiple times.

## Plugins

Please refer to the [Plugins Wiki](https://github.com/krishealty/WhoKnows/wiki/How-to-develop-WhatWeb-plugins) for full tutorial on plugin development.

WhoKnows lets you identify content management systems (CMS), blogging platforms, stats/analytics packages, javascript libraries, servers and more. When you visit a website in your browser the transaction includes many unseen hints about how the webserver is set up and what software is delivering the webpage. Some of these hints are obvious, eg. "Powered by XYZ" and others are more subtle. WhoKnows recognises these hints and reports what it finds.

WhoKnows has many plugins and needs community support to develop more. Plugins can identify systems with obvious identifying hints removed by also looking for subtle clues. For example, a WordPress site might remove the tag but the WordPress plugin also looks for "wp-content" which is less easy to disguise. Plugins are flexible and can return any datatype, for example plugins can return version numbers, email addresses, account ID's and more.

## Performance & Stability

WhoKnows features several options to increase performance and stability.

*  --max-threads, -t     Number of simultaneous threads. Default: 25.
*  --open-timeout        Time in seconds. Default: 15
*  --read-timeout        Time in seconds. Default: 30
*  --wait=SECONDS        Wait SECONDS between connections
                        This is useful when using a single thread.

The --wait and --max-threads commands can be used to assist in IDS evasion.

Changing the user-agent using the -U or --user-agent command line option will avoid the Snort IDS rule for WhoKnows.

If you are scanning ranges of IP addresses, it is much more efficient to use a port scanner like massscan to discover which have port 80 open before scanning with WhoKnows.

Character set detection, with the Charset plugin dramatically decreases performance by requiring more CPU. This is required by JSON and MongoDB logging.


## Optional Dependencies

To enable MongoDB logging install the mongo gem.
    gem install mongo

To enable character set detection and MongoDB logging install the rchardet gem.
  gem install rchardet
  cp plugins-disabled/charset.rb my-plugins/

## Writing Plugins

Plugins are easy to write. Start by going through the plugin tutorials in the *my-plugins/* folder.

* [Plugin Tutorials](https://github.com/krishealty/WhoKnows/tree/master/my-plugins).

An overview of the plugin tutorials is here. [plugin-tutorials.txt](https://github.com/krishealty/WhoKnows/tree/master/plugin-development/plugin-tutorials.txt)

After progressing through the tutorials read through the Development section of the [wiki](https://github.com/krishealty/WhoKnows/wiki/). 

* [Sources for Plugin Writing](https://github.com/krishealty/WhoKnows/wiki/Sources-for-Plugin-Writing)
* [How to Develop WhoKnows Plugins (not up to date)](https://github.com/krishealty/WhoKnows/wiki/How-to-develop-WhoKnows-plugins)

## Updates & Additional Information

The WhoKnows development build features regular updates.

* Check the development branches for unreleased updates.

Browse the wiki for more documentation and advanced usage techniques.

* [Wiki:](https://github.com/krishealty/WhoKnows/wiki/)

## Sponsor

WhoKnows is open source and Free forever, if you like my work and want to support it, you consider it by donating or supporting the project here in the [Sponsor page.](https://github.com/sponsors/krishealty)

Your contribution will shown in this repository README and it will support this project, your efforts are highly appreciated. Thank You for using my program.

