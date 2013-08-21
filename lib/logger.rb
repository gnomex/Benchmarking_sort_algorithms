class Logger
  def initialize(storage)
    @storage = storage
    @logs = []
  end

  def <<(message)
    @storage << message + "\r\n"
  end
end

# storage = File.open("./sample.txt", "a+")
# logger = Logger.new(storage)
# logger << "Hello"
# logger << "World"
# storage.close