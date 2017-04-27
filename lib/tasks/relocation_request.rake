namespace :db do
  desc "Boolean true"
  task :relocation_request => :environment do

      Employee.all.limit(10).each do |employee|
        employee.willingtorelocate = true
        employee.save
      end
    end
  end
    
