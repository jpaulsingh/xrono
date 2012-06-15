Given /^user is assigned to the project$/ do
  User.last.has_role!(:developer, Project.last)
end

Given /^a client "([^"]*)" exists with name: "([^"]*)"$/ do |client, client_name|
  clien = Client.create(:name => client_name)
end


