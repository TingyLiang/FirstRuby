def raise_exception
  puts 'befor exception'
  begin
    raise 'opps! sth wrong'
  rescue
    puts 'trying to rescue'
  else
  ensure
    puts 'whatever happend ,always puts'
  end
end

raise_exception
# ruby 与其他语言异常处理对比
# begin end  = try  catch
# raise = throw
# rescue  = catch
# else 用于匹配 rescue 未捕获的异常, 只能在 rescue 后和before 前使用
# retry 用于回到begin处重新执行
# ensure = finally
#

=begin
catch定义了一个标有给定名称的块。 它用于跳出嵌套代码。 使用catch语句，块将被正常执行，直到遇到throw
ruby 使用catch 和throw 速度比raise 和rescue 块，建议使用
throw 用于
=end

def throw_exe(a)
  # puts 'pls input: '
  # puts a
  throw :block1 if ['y', 'Y'].include? a # a = y|Y 时跳出，后续代码不会执行
  puts('no throw a =' + a.to_s)
end

catch :block1 do
  throw_exe(3)
  throw_exe('y')
  puts 'interrupted in throw...'
end

# self-defined exception
class MyException < Exception
  # ruby 会为实例变量创建 两个 symbol，比如：@message 就有:message 和 :@message
  attr_reader(:message)
  #类常量
  CONSTANT1 = 1

  def initialize(message)
    @message = message

  end

  # 类方法
  def self.classMethod # 或者 MyException.classMethod
    #do sth
  end

  private def testPrivate

  end

  def testProtected

  end

  private :testPrivate
  protected :testProtected
end

exe = MyException.new("error -----------!")
puts MyException::CONSTANT1

exe.freeze # 冻结对象使得其实例对象不能被修改