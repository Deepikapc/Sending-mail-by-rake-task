task :pending_order => :environment do
	time_now= Time.now.utc.strftime('%H').to_i
	#abort time_now.inspect
	Order.all.each do |pending|
		if pending.status == "pending" 
			time = pending.created_at.strftime('%H').to_i
			#abort time.inspect
			hour=(time_now - time)
			
			case hour
				when 1
					puts "#{hour}-#{pending.name}"
				 Notification.order_confirmation(pending).deliver!
				when 2
						puts "#{hour}-#{pending.name}"
				 Notification.order_confirmation(pending).deliver!
				when 3
						puts "#{hour}-#{pending.name}"
					Notification.order_confirmation(pending).deliver!
				else
				 puts "Do nothing!"	
			end
		end
	end
end