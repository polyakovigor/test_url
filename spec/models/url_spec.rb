require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:url) { FactoryBot.create(:url) }
  it 'Has a valid factory' do
    expect(url).to be_valid
  end
  describe 'Model validations' do
    it { expect(url).to validate_presence_of(:original_url) }
    it { expect(url.original_url).to match(/\A(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@,!:%_\+.~#?&\/\/=]*)?\z/) }
  end
end
