require 'spec_helper'

describe Contact do
  describe "validations" do
    let(:valid_attributes) do
      {
        email: "launch@academy.com",
        subject: "launch academy",
        description: "launchhhh",
        first: "launch",
        last: "academy"
      }
    end

    let(:contact) { Contact.new(valid_attributes) }

    it "is valid when it has all required and valid attributes" do
      expect(contact).to be_valid
    end

    it "provides a count of all contact" do
      Contact.create!(email: "launch@academy.com", subject: "launch academy", description: "launchhhh", first: "launch", last: "academy")
      Contact.create!(email: "launch@academy.com", subject: "launch academy", description: "launchhhh", first: "launch", last: "academy")
      Contact.create!(email: "launch@academy.com", subject: "launch academy", description: "launchhhh", first: "launch", last: "academy")

      expect(Contact.count).to eql(3)
    end

    it "requires an email" do
      contact.email = ""
      expect(contact).not_to be_valid
    end

     it "requires an subject" do
      contact.subject = ""
      expect(contact).not_to be_valid
    end
     it "requires an description" do
      contact.description = ""
      expect(contact).not_to be_valid
    end
     it "requires an first" do
      contact.first = ""
      expect(contact).not_to be_valid
    end
     it "requires an last" do
      contact.last = ""
      expect(contact).not_to be_valid
    end

  end
end
