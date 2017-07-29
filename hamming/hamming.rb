module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute input_a, input_b
    if input_a.length != input_b.length
      raise ArgumentError.new "Strands must be the same homie!"
    else
      a = [input_a]
      b = [input_b]

      a.zip(b).count { |a, b| a != b }
    end
  end
end

