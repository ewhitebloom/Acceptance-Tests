require 'spec_helper'

feature "Admin visits the contact inquiry browser page" do
# As an admin
# I want to delete an inquiry
# So that I can remove spam or other undesirable inquiries

describe "Deleting Contacts" do
  it "displays the contact text after creation" do
    visit '/contacts/new'
    fill_in "Email", with: "launch@academy.com"
    fill_in "Subject", with: "Hi"
    fill_in "Description", with: "Just saying hi."
    fill_in "First", with: "Launch"
    fill_in "Last", with: "Academy"
    click_on "Create Contact"

    visit "/contacts"
    count = Contact.count
    click_button "Destroy"
    expect(Contact.count).to eq(count - 1)
  end
end

end
