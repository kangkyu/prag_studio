puts("who's my receiver?")

# call a method on obj
# obj receive a method call
# self = current object

puts self
puts self.class

self.send(:puts, "who's my receiver?")

self.puts("who's my receiver?")
# => in `<main>': private method `puts' called for main:Object (NoMethodError)
