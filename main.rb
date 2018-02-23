require_relative 'lib/toy'
require_relative 'lib/board'
require_relative 'lib/movement'
require_relative 'lib/rotation'
require_relative 'lib/case'

#Read Sample files from Arguments
sample_files = ARGV
sample_files << "samples/sample_01.txt" unless sample_files.any?

# Loop on sample files
sample_files.each do |sample_file|
  # Create a new sample case
  sample_case = Case.new

  # Read sample lines
  File.open(sample_file).each do |line|
    sample_case.read_line(line)
  end
end
