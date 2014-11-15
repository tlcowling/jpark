require 'thor'
require 'audite'

class JPark::Client < Thor
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

  end	

end
