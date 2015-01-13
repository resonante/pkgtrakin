module ApplicationHelper
	def company_name
		Setting.first.company_name
	end	
end
