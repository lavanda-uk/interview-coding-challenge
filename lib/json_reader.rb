class JsonReader
  def initialize(path, root_key)
    @path = path
    @root_key = root_key
    require 'json'
  end

  def read
    @read ||= JSON.parse(File.read(@path))[@root_key]
  end
end
