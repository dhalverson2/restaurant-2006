class Restaurant

  attr_reader :opening_time,
              :name,
              :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

#trying to get this to work using strftime, going to have to play around with it later
  def announce_closing_time(hours)
    result = closing_time(hours)
    strftime("%I:%M%P")
    if closing_time(hours).to_i < 12
      "#{name} will be closing at #{result}AM"
    else
      "#{name} will be closing at #{result}PM"
    end
  end

end
