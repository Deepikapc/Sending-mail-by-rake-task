task :pending_order => :environment do
	time_now= Time.now.utc.strftime('%H').to_i
	Order.all.each do |pending|
		if pending.status == "pending" 
			time = pending.created_at.strftime('%H').to_i
			hour=(time_now - time)
			case hour
				when 24
					puts "#{hour}-#{pending.name}"
				 Notification.order_confirmation(pending).deliver!
				when 48
						puts "#{hour}-#{pending.name}"
				 Notification.order_confirmation(pending).deliver!
				when 168
						puts "#{hour}-#{pending.name}"
					Notification.order_confirmation(pending).deliver!
				else
				 puts "Do nothing!"	
			end
		end
	end
end