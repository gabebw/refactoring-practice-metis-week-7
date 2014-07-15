class Filler
  def initialize(target)
    @words = []
    @target = target
  end

  def run
    wc = 0
    while wc <= @target
      @words << Sentence.new
      wc += @words.last.word_count
    end
  end

  def render
    @words.join(" ")
  end
end

class Sentence
  def initialize
    @number_of_words = (3..8).to_a.sample
    @content = @number_of_words.times.map { Word.new.to_s }
  end

  def to_s
    @content.map { |content| content.join }.join(" ")
  end

  def word_count
    @number_of_words
  end
end

class Word
  def to_s
    (1..12).to_a.sample.times.map { ("a".."z").to_a.sample }
  end
end

filler = Filler.new(10)
filler.run
puts filler.render
