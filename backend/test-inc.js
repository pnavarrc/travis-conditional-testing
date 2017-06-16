var assert = require('assert');
var inc = require('./inc').inc;

describe('backend - inc', function() {

  it('should increment the argument by 1', function() {
    assert.equal(2, inc(1));
  });

  it('should increment 0 to 1', function() {
    assert.equal(1, inc(0));
  });

  it('should increment 4 to 5', function() {
    assert.equal(5, inc(4));
  });

});
