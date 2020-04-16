# TODO: Write documentation for `Copy`
module Copy
  VERSION = "0.1.0"

  class Copier
    def initialize
    end

    def copy(input_name : String, final_name : String)
      File.open(input_name) do |file|
        File.open(final_name) do |file|
        end
      end
    end
  end

  copier = Copier.new

  case ARGV.size
  when 0
    p "An interactive shell has not been implemented yet. Please follow the following the format 'copy <filename> <new filename>' "
  when 1
    # TODO: Check if input name is a directory?
    copier.copy(ARGV.first, ARGV.first + " - copy")
  when 2
    # TODO: Check if input name is a directory, and if output name is valid
    copier.copy(ARGV.first, ARGV.last)
  end
end
