# a and c reference the same object, so they have the same object ID. b has the same value but
# points to a different object

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

