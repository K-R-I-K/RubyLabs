#var9
class Student
  attr_reader :lastname, :group, :geom, :alg, :inf

  def initialize(lastname, group, geom, alg, inf)
    @lastname = lastname
    @group = group
    @geom = geom
    @alg = alg
    @inf = inf
  end

  def to_s
    "lastname: #{@lastname}, group: #{@group}, geometry: #{@geom}, algebra: #{@alg}, IT: #{@inf}"
  end
end

class WinterSession
  def initialize(students)
    @students = students
  end

  def add_new_student(student)
    @students.push(student)
  end

  def print_students_with_debts
    puts @students.select { |x| x.geom == 1 || x.alg == 1 || x.inf == 1 }
  end

  def number_of_grades(n)
    count = 0
    @students.each do |x|
      count += 1 if x.geom == n
      count += 1 if x.alg == n
      count += 1 if x.inf == n
    end
    count
  end

  def print_academic_quality
    percent_academic_performance = 0.0
    @students.each do |x|
      percent_academic_performance += 1 if x.geom > 2
      percent_academic_performance += 1 if x.alg > 2
      percent_academic_performance += 1 if x.inf > 2
    end
    percent_academic_performance *= 100
    percent_academic_performance /= 3 * @students.length
    percent_of_knowledge_quality = 0.0
    @students.each do |x|
      percent_of_knowledge_quality += 1 if x.geom > 3
      percent_of_knowledge_quality += 1 if x.alg > 3
      percent_of_knowledge_quality += 1 if x.inf > 3
    end
    percent_of_knowledge_quality *= 100
    percent_of_knowledge_quality /= 3 * @students.length
    degree_of_students_education = number_of_grades(5) * 100 +
      number_of_grades(4) * 64 +
      number_of_grades(3) * 36 +
      number_of_grades(2) * 16 +
      number_of_grades(1) * 7
    degree_of_students_education /= 3.0 * @students.length
    puts "percent academic performance: #{percent_academic_performance}\n"<<
           "percent of knowledge quality #{percent_of_knowledge_quality}\n"<<
           "degree of students education #{degree_of_students_education}"
  end

  def best_subject
    res = [0, 0, 0]
    @students.each do |x|
      res[0] += x.geom
      res[1] += x.alg
      res[2] += x.inf
    end
    puts "geometry" if res.max == res[0]
    puts "algebra" if res.max == res[1]
    puts "IT" if res.max == res[2]
  end

  def groups_rating
    groups = Hash.new(0)
    @students.each do |x|
      groups[x.group] += x.geom + x.alg + x.inf
    end
    groups.sort_by(&:last)
    puts groups.keys
  end
end

#1 - non-certification
first_course = WinterSession.new([Student.new("Shchupak", "K-19", 1, 3, 5),
                                  Student.new("Barlowe", "K-18", 4, 1, 3),
                                  Student.new("Caddel", "K-19", 2, 5, 4),
                                  Student.new("Hart", "K-18", 5, 3, 1)])
first_course.print_students_with_debts
first_course.print_academic_quality
first_course.best_subject
first_course.groups_rating
