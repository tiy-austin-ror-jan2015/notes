require 'rails_helper'

RSpec.describe Session, type: :model do
  describe 'build' do
    it 'returns a new session instance with title and slug set' do
      expect(Session.build.class).to eq(Session)
    end
    it 'does not save to db' do
      expect { Session.build }.to_not change { Session.all.count }
    end
  end
  describe 'build' do
    it 'saves to the db' do
      expect { Session.build! }.to change { Session.all.count }
    end
  end
end
