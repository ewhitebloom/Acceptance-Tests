require 'spec_helper'

feature "User visits the contact inquiry page" do
# As a site visitor
# I want to contact the site's staff
# So that I can tell them how awesome they are

it "sees a title" do
  visit '/contacts/new'
  expect(page).to have_content "New contact"
end

it "creates a contact" do
 visit '/contacts/new'
 fill_in "Email", with: "launch@academy.com"
 fill_in "Subject", with: "Hi"
 fill_in "Description", with: "Just saying hi."
 fill_in "First", with: "Launch"
 fill_in "Last", with: "Academy"
 click_on "Create Contact"
 expect(Contact.count).to eq(1)
end

end
