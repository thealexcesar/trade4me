PASS = "123123"
admin = User.new(
  name: "Murilo Mistura",
  email: 'murilo@nucleusapp.com.br',
  password: PASS,
  password_confirmation: PASS,
  level: 1,
  phone: "(47)9999-9709"
)
puts admin.save ? "Admin criado." : "Erro ao criar \"admin\" #{admin.errors.full_messages}."