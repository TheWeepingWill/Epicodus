# frozen_string_literal: true 
#HOUR METHODS


#Uses a given time to get a percantage of how far the hour hand is around the clock
def hour_percent(time) 
	return ((time/12)*100).round(2)
end
#Uses a given time to determine and then return the angle of a hour hand from 12
def hour_angle(time)
	return (hour_degrees = (hour_percent(time)/100)*360).round(2)
end


#MINUTE METHODS

#Gets the minutes from a string of time and returns an integer
def minute_integer(time)
	return time.to_s.split('.')[1].to_i
end 

def minute_percent(time)
	minutes = minute_integer(time)
	if minutes == 0 
		return degrees = ((60/60.0)*100).round(2)
	else
		return ((minutes/60.0)*100).round(2)
	end
end

def minute_angle(time)
	return (minute_percent(time)/100)*360
end



def clock_angle(time)
	angle = (hour_angle(time) - minute_angle(time)).round(2)
	if angle.abs > 180 
		return "#{360 - angle.abs}° between the Hour and Minute hands!"
	else 
		return "#{angle.abs}° between the Hour and Minute hands!"
	end
	
end


puts "Input a time!"

time = gets.strip.gsub(/[:;',\/.]/, ".").to_f
# p time.class
p clock_angle(time)


