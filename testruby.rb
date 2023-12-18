# Класс робота
class Robot
    # Акцессоры — чтобы можно было узнать координаты снаружи
    attr_accessor :x, :y

    # Конструктор, принимает хеш. Если не задан — будет пустой хеш.
    # В хеше мы ожидаем два параметра — начальные координаты робота,
    # если не заданы, будут по умолчанию равны нулю.
    def initialize(options={})
      @x = options[:x] || 0
      @y = options[:y] || 0
    end

    def right
      self.x += 1
    end

    def left
      self.x -= 1
    end

    def up
      self.y += 1
    end

    def down
      self.y -= 1
    end
  end

  # Класс «Командир», который будет командовать и двигать роботов
  class Commander
    # Дать команду на движение робота. Метод принимает объект
    # и посылает (send) ему случайную команду.
    def move(who)
      m = [:right, :left, :up, :down].sample
      who.send(m)
    end
  end

  # Создать объект командира,
  # командир в этом варианте программы будет один
  commander = Commander.new

  # Массив из 10 роботов
  arr = Array.new(50) { Robot.new }

  # В бесконечном цикле (для остановки программы нажмите ^C)
  loop do
    # Хитрый способ очистить экран
    puts "\e[H\e[2J"

    # Рисуем воображаемую сетку. Сетка начинается от -30 до 30 по X
    # и от 12 до -12 по Y
    (12).downto(-12) do |y|
      (-30).upto(30) do |x|
        # Проверяем, есть ли у нас в массиве робот с координатами x и y
        found = arr.any? { |robot| robot.x == x && robot.y == y }

        # Если найден[…]”

        if found
        print ['●', '○', '✦'].sample
      else
        print '.'
      end
    end

    # Просто переводим строку:
    puts
  end

  # Каждого робота двигаем в случайном направлении
  arr.each do |robot|
    commander.move(robot)
  end

  # Задержка в полсекунды
  sleep 0.5
end
