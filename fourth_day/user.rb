class User

  def initialize(name)
    @name = name
  end

  def name
    @name.capitalize
  end

end


class Admin < User

  def unlock_doors
    puts 'allowed: doors are open'
  end

end

me    = User.new('justin')
sarah = Admin.new('sarah')
sarah.name
me.name

sarah.unlock_doors
me.unlock_doors
