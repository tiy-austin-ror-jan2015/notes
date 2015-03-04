require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :name => "MyString",
      :location => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "input#room_location[name=?]", "room[location]"

      assert_select "textarea#room_description[name=?]", "room[description]"
    end
  end
end
