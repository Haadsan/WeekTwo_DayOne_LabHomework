class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end


  def cohort
    return @cohort
  end


  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = set_cohort
  end

  def student_can_talk
    return "I can talk!"
  end

  def favourite_language
    return "I love Ruby"
  end


end
