module JavaScriptPageLoadHelpers
	def wait_for_jquery(options = {})
	    wait_for("return jQuery.active;", "0", options)
	end
	
	def wait_for_page_load_to_complete(options = {})
	    wait_for("var documentState = document.readyState; return documentState;", "complete", options)
	end
	
	def wait_for_angular(options = {})
	    wait_for("return angular.element(document.body).injector().get(\'$http\').pendingRequests.length;", "0", options)
	end
	
	def wait_for_prototype_ajax(options = {})
	    wait_for("return Ajax.activeRequestCount;", "0", options)
	end
	
	# As of 2014, W3Techs reports that YUI is used on 0.7% of all websites and is out of support. 
	# This method has not been tested (can't find a test site).
	def wait_for_yahoo_ui(options = {})
	    wait_for("var inProgress=0; for(var i=0; i < YAHOO.util.Connect._transaction_id; i++) {if(YAHOO.util.Connect.isCallInProgress(i)) inProgress++;}" + "return inProgress;", "0", options)
	end
	
	def wait_for(javascript_string, target_string, options = {})
	    options[:timeout] ||= 30
		wait = Selenium::WebDriver::Wait.new(options)
		expect(wait.until {
		  begin
		    outcome = page.execute_script(javascript_string)
			# puts "outcome=" + outcome.to_s
			outcome.to_s == target_string
		  rescue Exception => e
			puts e.message
		    puts "Rescued " + javascript_string
		    true # If specified framework is not present then don't wait for it
		  end
		}).to eq true
	end
end
World(JavaScriptPageLoadHelpers) 
