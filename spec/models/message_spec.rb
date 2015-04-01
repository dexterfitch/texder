require 'rails_helper'

describe Message, :vcr => true do
  it "doesn't save the message if Twilio gives an error" do
    message = Message.new(:body => 'hey', :to => '777', :from => '4439633339')
    expect(message.save).to be_falsey
  end

  it "adds an error if the number is invalid" do
    message = Message.new(:body => 'hey', :to => '777', :from => '4439633339')
    message.save
    expect(message.errors[:base]).to eq ["The 'To' number 777 is not a valid phone number."]
  end
end
