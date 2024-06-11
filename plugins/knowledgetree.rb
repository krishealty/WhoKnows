##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "KnowledgeTree"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-18
]
version "0.1"
description "Document Management Software"
website "http://www.knowledgetree.com/"

# 13 results for "powered by KnowledgeTree" "KnowledgeTree Version" @ 2010-09-18
# 71 results for inurl:kt_path_info="ktcore.actions.document.assist" @ 2010-09-18
# 77 results for "powered by KnowledgeTree" @ 2010-09-18

# DOrks #
dorks [
'"powered by KnowledgeTree"'
]



matches [

# Default title
{ :text=>'    <title>Dashboard | KnowledgeTree</title>' },

# Login page # Default title
{ :text=>'    <title>Login | KnowledgeTree</title>' },

# Powered by image
{ :text=>'/resources/powered-by-kt.png" border="0" alt="Powered by KnowledgeTree" title="Powered by KnowledgeTree"/></a>' },

# Favicon
{ :md5=>"bace14cd488b34068a9c2e54bff2b5b1", :url=>"/resources/favicon.ico" },

]

# Version detection
passive do
        m=[]

	# Login page
        if @body =~ /                    <a href="http:\/\/www.knowledgetree.com\/">Document Management Software<\/a><br>/
		if @body =~ /		    	    KnowledgeTree Version ([\d\.]+) \(Community Edition\)<br\/>/
	                version=@body.scan(/		    	    KnowledgeTree Version ([\d\.]+) \(Community Edition\)<br\/>/)[0][0]
        	        m << {:version=>version}
		end
        end

        m

end


end

