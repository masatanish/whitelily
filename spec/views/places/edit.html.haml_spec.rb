require 'spec_helper'

describe "places/edit" do
  before(:each) do
    @place = assign(:place, stub_model(Place,
      :name => "MyString",
      :address => "MyString",
      :description => "MyText",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => places_path(@place), :method => "post" do
      assert_select "input#place_name", :name => "place[name]"
      assert_select "input#place_address", :name => "place[address]"
      assert_select "textarea#place_description", :name => "place[description]"
      assert_select "input#place_latitude", :name => "place[latitude]"
      assert_select "input#place_longitude", :name => "place[longitude]"
    end
  end
end
