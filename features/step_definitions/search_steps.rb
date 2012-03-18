Given /^the following movies exist:$/ do |table|
table.hashes.each do |movie|
  Movie.create!(movie)
end
  # table is a Cucumber::Ast::Table
#  pending # express the regexp above with the code you wish you had
   end

   Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
      assert(Regexp.new("Director:.*#{arg2}", page.body))
#pending # express the regexp above with the code you wish you had
end
