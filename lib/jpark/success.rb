require 'clamp'

class SuccessCommand < Clamp::Command
	option "--loud", :flag, "play it loud"
	option ["-n", "--times"], "N", "Play it N times", :default => 1 do |s|
    puts 'playing'
	end
end
