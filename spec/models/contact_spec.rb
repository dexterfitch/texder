require 'rails_helper'

describe Contact do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  # it { should validate_length_of(:number).is_equal_to(10) }
  it { should belong_to :user }
end
