require 'ftools'

class Mo
  attr_reader :path, :href, :created_at, :modified_at
  
  DISK_PATH = "#{APP_ROOT}/public/mos"
  
  def initialize(path)
    @path = path
  end
  
  def href
    "/mos/#{File.basename(self.path)}"
  end
  
  def created_at
    File.ctime(self.path)
  end
  
  def updated_at
    File.mtime(self.path)
  end
  
  def <=>(comparable)
    [comparable.created_at] <=> [self.created_at]
  end
  
  class << self
    def all
      files.map {|f| new(f) }.sort
    end
    
    private 
    
    def files
      Dir["#{DISK_PATH}/*.jpg"]
    end
  end
end