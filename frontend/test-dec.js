var assert = require('assert');
var dec = require('./dec').dec;

describe('frontend - dec', function() {

  it('should decrement its argument by 1', function() {
    assert.equal(0, dec(1));
    assert.equal(1, dec(2));
    assert.equal(2, dec(3));
  });

  it('should decrement 1 to 0', function() {
    assert.equal(0, dec(1));
  });

});
