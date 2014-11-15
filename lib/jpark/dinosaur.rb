module JPark
  class Dinosaur
		def initialize
    dino1 = [
  "              / _)",
  "     _.----._/ /",
  "    /         /",
  " __/ (  | (  |",
  "/__.-'|_|--|_|",
  ].join("\n")
  
    dino2 = [
  "              / _)",
  "     _.----._/ /",
  "    /         /",
  " __/ (  | (  |",
  "/__.-'\\_\\--\\_\\ ",
  ].join("\n")
  
    dino3 = [
  "              / _)",
  "     _.----._/ /",
  "    /         /",
  " __/ (  | (  |",
  "/__.-/_/--/_/ ",
  ].join("\n")
    @dinomation = [dino1, dino2, dino3].cycle
		end
    def move
      puts @dinomation.next
    end
  end
end
