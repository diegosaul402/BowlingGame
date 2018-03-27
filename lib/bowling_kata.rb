class BowlingKata
@rolls
@roll_index

  def initialize
    @rolls = Array.new
  end

  def roll(current_roll)
    @rolls << current_roll
  end

  def score()
    current_frame = 0
    score = 0
    @roll_index = 0
    while current_frame < 10 do
      if is_strike
        score += 10 + @rolls[@roll_index + 1] + @rolls[@roll_index + 2]
        @roll_index += 1
        current_frame += 1
      elsif is_spare
        score += 10 + @rolls[@roll_index + 2]
        @roll_index += 2
        current_frame += 1
      elsif is_open
        score += @rolls[@roll_index] + @rolls[@roll_index + 1]
        @roll_index += 2
        current_frame += 1
      end
      puts score
    end
    score
  end

  def is_strike
    @rolls[@roll_index] == 10
  end

  def is_spare
    @rolls[@roll_index] + @rolls[@roll_index + 1] == 10
  end

  def is_open
    @rolls[@roll_index] + @rolls[@roll_index + 1] != 10
  end
end
