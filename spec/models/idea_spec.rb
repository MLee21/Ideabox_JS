require "rails_helper"

RSpec.describe Idea, type: :model do 
  let!(:idea){Idea.create(title: "This is my blog", body: "This is the body of my blog")}

  it "has valid attributes" do 
    expect(idea).to be_valid
  end

  it "cannot have blank title" do 
    idea.title = ""
    expect(idea).to_not be_valid
  end

  it "cannot have a blank body" do 
    idea.body = ""
    expect(idea).to_not be_valid
  end

  it "by default has a quality of swill" do 
    expect(idea).to be_valid
  end

  it "has a default quality of swill" do 
    expect(idea.quality).to eq("Swill")
  end

  it "can be assigned a different quality" do 
    idea.quality = "Plausible"
    expect(idea.quality).to eq("Plausible")
  end

end