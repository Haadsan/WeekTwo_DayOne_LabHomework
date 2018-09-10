require('minitest/autorun')
require("minitest/rg")
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

  # Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).

  def setup
    @sports_team = SportsTeam.new("Chelsea", ["Eden Hazard", "Mateo", "Olivier Giroud"], "Maurizio Sarri")

  end


  # For each property in the class make a getter method than can return them.

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


# Create a method that adds a new player to the players array.
#
def test_add_player
assert_equal(["Eden Hazard", "Mateo", "Olivier Giroud", "William"], @sports_team.add_player("William"))
#
end

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
def test_player_name
assert_equal(true, @sports_team.player_name("Mateo"))
end
# Add a points property into your class that starts at 0.

# @points = 0

# Create a method that takes in whether the team has won or lost and updates the points property for a win.

def test_team_point_wins
     assert_equal(4, @sports_team.points(true))
   end

def test_team_point_loss
      assert_equal(0, @sports_team.points(false))
    end

end
