class Potluck
  attr_reader :date,
              :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end
  def add_dish(dish)
    @dishes << dish
  end
  def get_all_from_category(category)
    @dishes.find_all { |dish| dish.category == category }
  end
  def menu
    menu_hash = {
      appetizers: [],
      entres: [],
      desserts: []
    }
    @dishes.each do |dish|
      if dish.category == :appetizer 
        menu_hash[:appetizers] << dish.name 
        menu_hash[:appetizers].sort!
      elsif dish.category == :entre 
        menu_hash[:entres] << dish.name
        menu_hash[:entres].sort!
      elsif dish.category == :dessert
        menu_hash[:desserts] << dish.name
        menu_hash[:desserts].sort!
      end
    end
    menu_hash
  end
  def ratio(category)
    (get_all_from_category(category).count / @dishes.count.to_f) * 100
  end
end