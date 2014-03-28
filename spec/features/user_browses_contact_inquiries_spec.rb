require 'spec_helper'

feature "User visits the contact inquiry browser page" do
# As an admin
# I want to review contact inquiries
# So that I can respond or take action

it "sees a title" do
  visit '/contacts'
  expect(page).to have_content "Listing contacts"
end

describe "Creating Contacts" do
  it "displays the contact text after creation" do
    visit "/contacts"
    click_link "New Contact"
    email = "launch@academy.com"
    fill_in "Email", with: email
    fill_in "Subject", with: "Hi"
    fill_in "Description", with: "Just saying hi."
    fill_in "First", with: "Launch"
    fill_in "Last", with: "Academy"
    click_button "Create Contact"
    expect(page).to have_content email
    expect(Contact.count).to eq(1)
    expect(Contact.last.email).to eq(email)
  end
end

end
