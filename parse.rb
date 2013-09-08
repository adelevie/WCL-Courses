require "bundler/setup"
require "json"
require "csv"
require "pry"

def format_type(type)
  if type == "@"
    return true
  else
    return false
  end
end

def format_syl(syl)
  if syl == "x"
    return true
  else
    return false
  end
end

def format_time(time)
  time.split(//).last(7).join("").to_s
end

def format_from(from)
  format_time(from)
end

def format_to(to)
  format_time(to)
end

def create_url(course)
  id = course.split("LAW")[1]
  "http://www.wcl.american.edu/registrar/coursesapp/inf_course.cfm?number=LAW#{id}&time=fall_2013"
end

filename = "2013-fall"

output = []
CSV.foreach("#{filename}.csv", headers: :first_row) do |row|
  course = row[0]
  output << {
    course: course,
    waitlisted: format_type(row[1]), # appears as type on WCL page
    title: row[2],
    syllabus: format_syl(row[3]),
    credits: row[4].to_i,
    instructor: row[5],
    currently_enrolled: row[6].to_i,
    enrollment_limit: row[7].to_i,
    days: row[8],
    room: row[9],
    from: format_from(row[10]),
    to: format_to(row[11]),
    url: create_url(course)
  }
end

string = JSON.generate(output)

File.open("#{filename}.json", "w") {|f| f.write(string)}