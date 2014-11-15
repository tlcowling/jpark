require 'thor'
require 'audite'

module JPark
  class Client < Thor
    def initialize(*args)
  		super(*args)
  		@dino = JPark::Dinosaur.new
      @player = Audite.new
  		@player.events.on(:complete) do
        puts "COMPLETE"
  		end
  
  		@player.events.on(:level) do |level|
        puts "LEVEL: #{level}"
  		end
  
  		@player.events.on(:position_change) do |pos|
  			puts @dino.move
  			#system "clear" or system "cls"
  		end
    end
  
    desc 'version', 'Displays version number of JPark'
  	long_desc <<-LONGDESC
  	  `jpark version` will print out a message containing the version number.
  
  		> $ jpark version\n
      > 0.0.1
    LONGDESC
    def version
      puts JPark::VERSION
    end
  
    desc 'success', 'Play success music'
  	long_desc <<-LONGDESC
  	  `jpark success` will play the jurassic park music
  		`jpark success --repeatedly` will never stop playing the success music`
  		`jpark success -n 10` will play the music 10 times
  
  		> $ jpark success\n
  		> playing...
  	LONGDESC
    def success
      success_filename = File.dirname(__FILE__) + '/../../samples/jpark_theme.mp3'
      puts success_filename 
  		@player.load(success_filename)
  		@player.start_stream
  		sleep(100)
    end	
  
  end
end
