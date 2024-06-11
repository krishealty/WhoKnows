class LoggingErrors < Logging
  # don't need semaphore.synchronize, as it's locked by the error handling routine
  def out(error)
    @f.puts error
  end
end

