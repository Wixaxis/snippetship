# 10.times do
#   name = Faker::App.name
#   Tool.create(name:, cli_name: name.downcase[0..4], commands: (0..10).each.map do
#     Command.create(body: Faker::Color.color_name, title: Faker::Beer.brand, description: Faker::Quote.yoda)
#   end)
# end

# 5.times do
#   tools = Tool.limit(5).order('RANDOM()')
#   name = "Project#{Faker::App.name}"
#   Project.create(name:, folder_name: name.downcase.sub(' ', '_'), tools:)
# end
Project.create(name: 'Snippetship', folder_name: 'snippetship', tools: [
                 Tool.create(name: 'Ruby on Rails', cli_name: 'rails', commands: [
                               Command.create(body: 'db:drop', title: 'DROP DATABASE',
                                              description: 'Drops the database'),
                               Command.create(body: 'db:create', title: 'CREATE DATABASE',
                                              description: 'Creates new database'),
                               Command.create(body: 'db:migrate', title: 'MIGATE DATABASE',
                                              description: 'Executes newest migrations, updating schema.rb file'),
                               Command.create(body: 'db:seed', title: 'SEED DATABASE',
                                              description: 'Fills database with basic data for application to function')

                             ])
               ])
