user = User.create({
  email: 'dan@danfinlay.com',
  password: 'password',
  auth_token: 'auth_token'
})

type = LogType.create({
  title: 'Mood',
  description: 'A log of my current feelings',
  has_duration: false
})

3.times do |i|
  Log.create({
    log_type_id: type.id,
    start_time: Time.now + i.days * 2,
    end_time: Time.now + (i.days * 2) + 1,
    data: 'Happy'
  })
end
