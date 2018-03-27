class BowlingKata
@rolls

  def initialize
    @rolls = Array.new
  end

  def roll(current_roll)
    @rolls << current_roll
  end

  def score
    current_frame = 0
    score = 0
    roll_index = 0
    while current_frame < 10 do
      if is_strike(roll_index)
        score += 10 + @rolls[roll_index + 1] + @rolls[roll_index + 2]
        roll_index += 1
        current_frame += 1
      elsif is_spare(roll_index)
        score += 10 + @rolls[roll_index + 2]
        roll_index += 2
        current_frame += 1
      elsif is_open(roll_index)
        score += @rolls[roll_index] + @rolls[roll_index + 1]
        roll_index += 2
        current_frame += 1
      end
    end
    score
  end

  def is_strike(roll_index)
    @rolls[roll_index] == 10
  end

  def is_spare(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  def is_open(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] != 10
  end
end
