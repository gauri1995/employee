namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [City,Employee].each()
    
    City.populate 20 do |category|
      category.name = Populator.words(1..3).titleize
      Employee.populate 10..100 do |employee|
        employee.city_id = category.id
        employee.name = Populator.words(1..5).titleize
        employee.manager_id = category.id
        
      end
    end
  end
end
    
