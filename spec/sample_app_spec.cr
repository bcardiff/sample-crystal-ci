require "./spec_helper"

describe SampleApp do
  it "gets the database name" do
    SampleApp.get_database_name.should eq("sample_app")
  end
end
