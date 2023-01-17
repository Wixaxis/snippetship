10.times do
  name = Faker::App.name
  Tool.create(name:, cli_name: name.downcase[0..4], commands: (0..10).each.map do
    Command.create(body: Faker::Color.color_name, title: Faker::Beer.brand, description: Faker::Quote.yoda)
  end)
end

5.times do
  tools = Tool.limit(5).order('RANDOM()')
  name = "Project#{Faker::App.name}"
  Project.create(name:, folder_name: name.downcase.sub(' ', '_'), tools:)
end
