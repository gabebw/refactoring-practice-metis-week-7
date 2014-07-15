class Scorer
  def initialize(rounds)
    @rounds = rounds
  end

  def formatted_score
    "[Won #{total_score}/#{total_rounds} = #{percentage}%]"
  end

  private

  def percentage
    if total_rounds == 0
      0
    else
      ((total_score.to_f / total_rounds.to_f) * 100.0).round
    end
  end

  def total_score
    @rounds.map(&:score).inject(0, :+)
  end

  def total_rounds
    @rounds.size
  end
end
