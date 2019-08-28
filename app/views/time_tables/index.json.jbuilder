json.time_tables @time_tables do |time_table|
  json.partial! 'time_tables/time_table', time_table: time_table 
end
