class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select { |x| x if x.end_with?('mp3') }
  end

  def import
     files.each { |file_name| Song.new_by_filename(file_name) }
  end
end



