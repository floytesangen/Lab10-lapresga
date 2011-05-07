Then /^I should see a fortune$/ do
fortune = page.find(".fortune")
fortune.text.should match /^\n.*\n\s+$/
end

When /^I enter a fortune id$/ do
'/fortune/get/ID'

end

Then /^I should see the fortune$/ do
fortune = page.find(".fortune")
fortune.text.should match /^\n.*\n\s+$/
end

