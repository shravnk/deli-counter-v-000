katz_deli = []

def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
    names = ""
    deli.each_with_index{|customer, number| names << " #{number+1}. #{customer}" }
    puts "The line is currently: "
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.size > 0
    puts "Currently serving #{deli[0]}."
    deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
take_a_number(katz_deli, "Joe")
take_a_number(katz_deli, "Sarah")

line(katz_deli)
now_serving(katz_deli)
