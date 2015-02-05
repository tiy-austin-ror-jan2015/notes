class Company < ActiveRecord::Base
  has_many :employees
  has_many :locations

  has_many :courses, through: :locations

  scope :by_employees, -> { order(name: :asc) }

  attr_accessor :age

  before_save :before
  after_save :after
  after_create :after_c
  after_commit :after_co

  def employee_count
  	employees.count
  end

  def timestamp
  	created_at.strftime('%Y')
  end

  def before
  	puts 'before'
  end
  def after
  	puts 'after'
  end
  def after_c
  	puts 'after_c'
  end
  def after_co
  	puts 'after_co'
  end

end
