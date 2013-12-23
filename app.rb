require 'capybara'

original_app = Capybara.app

Capybara.app = PortMap.new(
  original_app,
  1234 => MyFakeApp1,
  5678 => MyFakeApp2,
)
