module Counter
	extend ActiveSupport::Concern

	private

		def increment_counter
			if session[:counter].nil?
				session[:counter] = 1
			else
				session[:counter] += 1
			end
		end
end