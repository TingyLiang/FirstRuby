class Dog
  @@count = 0
  @breed
  @name
  @age = 0

  #如果需要声明带参数的new 方法，则需要额外声明一个initialize方法
  def initialize(breed, name)
    @breed = breed
    @name = name
    @@count += 1
  end

  # 类方法
  def Dog.count
    puts @@count
    # pri
  end

  private def pri
    puts 'private method called.'
  end

  # 变长参数方法
  def barkTo(*people)
    for i in 0 ..people.length-1 do
      puts "wongwong ! #{people[i]}"
    end
  end



end


