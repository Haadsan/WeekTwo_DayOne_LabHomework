require('minitest/autorun')
require("minitest/rg")
require_relative('../student')

class TestStudent < Minitest::Test


  def setup
    @student = Student.new("Hadsan", "G8", )

  end

  def test_name
    result = @student.name()
    assert_equal("Hadsan", result)
  end


  def test_cohort
    result = @student.cohort()
    assert_equal("G8", result)
  end

  def test_set_name
    @student.name = "Anna"
    result = @student.name
    assert_equal("Anna", result)

  end

  def test_set_cohort
    @student.cohort = "G8"
    result = @student.cohort
    assert_equal("G8", result)
  end

  def test_student_can_talk
    result = @student.student_can_talk
    assert_equal("I can talk!", result)
  end

  def test_favourite_language
    result = @student.favourite_language
    assert_equal("I love Ruby", result)
  end



end
