class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Truck < Car
  def run(distance)
    super
    puts "大きな荷物を乗せて走ります。"
  end
end

truck = Truck.new
truck.run(5)

=begin
class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Truck < Car
  def run(distance)
  puts "バスで#{distance}キロ走ります。"
    super
    puts "大きな荷物を乗せて走ります。"
  end
end

truck = Truck.new
truck.run(5)

===
上記のように記述すると、

ec2-user:~/environment/ruby (main) $ ruby lesson11.rb
トラックで5キロ走ります。
車で5キロ走ります。
大きな荷物を乗せて走ります。

という結果になってしまう
=end