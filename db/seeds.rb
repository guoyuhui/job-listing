# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.first
User.create(email:"111@jb.com", password:"123456")
u.is_admin = true
u.save

job_info = [
  '初级综合课汉语教师',
  '初级听说课汉语教师',
  '初级读写课汉语教师',
  '中级综合课汉语教师',
  '中级听说课汉语教师',
  '中级读写课汉语教师',
  '高级综合课汉语教师',
  '高级听说课汉语教师',
  '高级读写课汉语教师',
]
create_jobs = for i in 1..10 do
                Job.create!([title: job_info[rand(job_info.length)], description: "走遍世界的梦想，怎能少了你！", wage_upper_bound: rand(60..79) * 20, wage_lower_bound: rand(40..59) * 20, is_hidden: 'false'])
              end
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: "期待你的加入，走遍世界的梦想，有你一个！", wage_upper_bound: rand(60..79) * 20, wage_lower_bound: rand(40..59) * 20, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
