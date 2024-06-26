# Helper methods for output and conversion
#
module Helper

  # converts Hash, Array, or String to UTF-8
  def self.utf8_elements!(obj)
    if obj.class == Hash
      obj.each_value do |x|
        utf8_elements!(x)
      end
    elsif obj.class == Array
      obj.each do |x|
        utf8_elements!(x)
      end
    elsif obj.class == String
      convert_to_utf8(obj)
    end
  end

  # Converts a string to UTF-8
  def self.convert_to_utf8(str)
    begin
      if (str.frozen?)
        str.dup.force_encoding("UTF-8").scrub
      else
        str.force_encoding("UTF-8").scrub
      end
    rescue => e
      raise "Can't convert to UTF-8 #{e}"
    end
  end

  #
  # Takes an integer of certainty (between 1 - 100)
  #
  # returns String a word representing the certainty
  #
  def self.certainty_to_words(certainty)
    case certainty
    when 0..49
      'maybe'
    when 50..99
      'probably'
    when 100
      'certain'
    end
  end

  #
  # Word wraps a string. Used by plugin_info and OutputVerbose.
  #
  # returns Array an array of lines.
  #
  def self.word_wrap(str, width = 10)
    ret = []
    line = ''

    str.to_s.split.each do |word|
      if line.size + word.size + 1 <= width
        line += "#{word} "
        next
      end

      ret << line

      if word.size <= width
        line = "#{word} "
        next
      end

      line = ''
      w = word.clone

      while w.size > width
        ret << w[0..(width - 1)]
        w = w[width.to_i..-1]
      end

      ret << w unless w.empty?
    end

    ret << line unless line.empty?
    ret
  end
end
