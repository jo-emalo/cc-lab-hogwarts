require ( 'sinatra')
require ( 'sinatra/contrib/all')
require_relative ('./models/Student')
require_relative ('./models/House')

get '/students' do
  @students = Student.find_all()
  erb(:students)
end

get '/student/create' do
  @houses = House.find_all()
  erb(:create)
end

post '/student/create' do
  new_student = Student.new(params)
  new_student.save()
  redirect to('/students')
end