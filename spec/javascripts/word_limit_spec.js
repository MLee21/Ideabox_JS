var assert = chai.assert,
  expect = chai.expect,
  should = chai.should();

var text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

describe("Testing", function() {
  it("is going so smoothly", function() {
    expect(true).to.equal(true);
  });
});

describe(truncateText, function(){
  it("should limit body text to 100 characters maximum", function(){
    expect(".idea_body").to.exist;
    expect(truncateText(text).length();).to.equal(100);
  });
});