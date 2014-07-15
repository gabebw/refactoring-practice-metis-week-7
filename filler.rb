# Generate filler text
class Filler
  def render
    # Join the words with a newline
    @words.join(" ")
  end

  # Generate the content
  def run
    # wc means word count
    wc = 0
    while wc <= @target
        @words << Sentence.new
  wc += @words.last.word_count
    end
  end

  # Initialize the object
  def initialize(target)
    @words = []
    @target = target
  end
end

class Sentence
  def initialize
  @number_of_words = (3..8).to_a.sample
    @content = @number_of_words.times.map { Letters.new.to_s }
  end

def to_s
  @content.map {|content|content.join}.join(" ")
end

  def word_count
    @number_of_words
  end
end

class Letters
  def to_s
    (1..12).to_a.sample.times.map { ("a".."z").to_a.sample }
  end
end

filler = Filler.new(10)
filler.run
puts filler.render
