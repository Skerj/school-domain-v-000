class School
  attr_accessor :name, :grade
  attr_reader :roster

  def initialize
    @roster = {}
  end

  def roster
    puts @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.include?(@grade)
      @roster[@grade] << @name
    else
      @roster[@grade] = []
      @roster[@grade] << @name
    end
  end

  def grade(grade)
    @grade = grade
    @roster.collect do |k, v|
      if k == @grade
        puts v
      end
    end
  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end
  end
end
