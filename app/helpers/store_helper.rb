module StoreHelper
	def reset_index_visits
		session[:counter]=0
	end
	
	def count_index_visits
		if session[:counter].nil?
			reset_index_visits
		else
			session[:counter] +=1
		end
		if session[:counter] > 5 then
			session[:counter]
		end
	end
	
	def report_index_visits
		if session[:counter] ==1 then
			response = "Welcome!"
		else
			response = "Black for your"+session[:counter].to_s+"th visit?"
		end
		return response
	end
end
