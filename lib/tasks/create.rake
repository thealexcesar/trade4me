namespace :create do
  desc "Seed users"
  task users: :environment do
    PASSWORD = "123123"
    12.times do |i|
      user = User.create(
      name: Faker::Name.unique.name,
      email: Faker::Internet.email,
      password: PASSWORD,
      password_confirmation: PASSWORD,
      status: 0,
      level: 0
      )
      puts user.save ? "Usuário #{user.name} criado." : "Erro ao criar usuário \"comun\" #{user.errors.full_messages}."
    end
  end
end