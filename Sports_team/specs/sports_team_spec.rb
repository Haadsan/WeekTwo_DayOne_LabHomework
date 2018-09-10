require('minitest/autorun')
require("minitest/rg")
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

  
  def setup
    @sports_team = SportsTeam.new("Chelsea", ["Eden Hazard", "Mateo", "Olivier Giroud"], "Maurizio Sarri")

  end


  # def test_team_name
  #   result = @sports_team.team_name
  #   assert_equal("Chelsea", result)
  # end
  #
  # def test_players
  #   result = @sports_team.players
  #   assert_equal(["Eden Hazard", "Mateo", "Olivier Giroud"], result)
  #
  # end
  #
  # def test_coach
  #   result = @sports_team.coach
  #   assert_equal("Maurizio Sarri", result)
  # end
  #
  # def test_set_name
  #   result = @sports_team.team_name
  #   assert_equal("Chelsea", result)
  #
  # end
  #
  #
  # def test_set_players
  #   result = @sports_team.players
  #   assert_equal(["Eden Hazard", "Mateo", "Olivier Giroud"], result)
  # end
  #
  # def set_coach
  #   result = @sports_team.coach
  #   assert_equal("Maurizio Sarri", result)
  # end
  #
  # def set_coach_name
  #   @sports_team.coach = "Antonio Conte"
  #   assert_equal("Antonio Conte", @sports_team.coach )
  # end


def test_add_player
assert_equal(["Eden Hazard", "Mateo", "Olivier Giroud", "William"], @sports_team.add_player("William"))

end

def test_player_name
assert_equal(true, @sports_team.player_name("Mateo"))
end

def test_team_point_wins
     assert_equal(4, @sports_team.points(true))
   end

def test_team_point_loss
      assert_equal(0, @sports_team.points(false))
    end

end
