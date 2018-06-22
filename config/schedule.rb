every 24.hours do 
  runner "Order.after_24h_48h_7_days"
  rake "my:rake:pending_order"
end

every 48.hours do 
  runner "Order.after_24h_48h_7_days"
  rake "my:rake:pending_order"
end

every 168.hours do 
  runner "Order.after_24h_48h_7_days"
  rake "my:rake:pending_order"
end