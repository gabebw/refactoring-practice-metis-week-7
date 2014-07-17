class AiChooser
  POSSIBLE_AIS = {
    winning: WinningAi,
    losing: LosingAi,
    random: RandomAi,
  }

  def ask_user_to_choose
    print "Which AI would you like to use? (#{POSSIBLE_AIS.keys.join(", ")}) > "
    POSSIBLE_AIS.fetch(gets.chomp.to_sym) do |key|
      puts "'#{key}' is not a valid AI type!"
      exit 1
    end
  end
end
