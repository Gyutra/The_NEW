class NewClass
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def output
    puts "a = #{@a}"
    puts "b = #{@b}"
    puts "c = #{@c}"
  end
end

newclass = NewClass.new(10,20,30)

newclass.output
