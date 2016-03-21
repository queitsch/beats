class Time 
 	def bmt_hour #biel mean winter time
		( gmtime.hour + 1 ) % 24 #24h -> 0h
	end 
	 
	def beats 
		((self.bmt_hour * 3600) + (self.min * 60) + self.sec) / 86.4 
		#(self.bmt_hour + (self.sec + self.min / 60) / 60) / 2.4
	end 
	 
	protected :bmt_hour 
end 

puts Time.now
puts Time.now.beats.round(2)
