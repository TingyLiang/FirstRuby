# ruby is case sensitive


class Test
  # global variable
  $global1 = "global var"

  # constant variable begins with a upper class letter
  CONS = 1 # or Cons = 1 is also valid
  Cons = " constant variable"

  # Instance variable
  @name = "lty"
  # Class variable
  @@count_instances = 0

  # local variable
  local_var = "local variable"

  puts("hello world")
  puts(2 + 3)

  # how to define a method

  def init
    @@count_instances += 1
  end


end

g