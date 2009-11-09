class Mo
  attr_reader :path, :href
  
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
  
  class << self
    def all
      files.sort{|a,b| File.ctime(a) <=> File.ctime(b)}.map{|f| new(f) }
    end
    
    private 
    
    def files
      Dir["#{DISK_PATH}/*"]
    end
  end
end