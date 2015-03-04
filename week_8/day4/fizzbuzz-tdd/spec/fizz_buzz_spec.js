var FizzBuzz = require('../lib/fizz_buzz.js');
var expect   = require('chai').expect;

describe('FizzBuzz', function () {
    describe('run', function () {
        it('returns 1 for 1', function () {
            expect(FizzBuzz.run(1)).to.equal(1);
        });
        it('returns 2 for 2', function () {
            expect(FizzBuzz.run(2)).to.equal(2);
        });
        it('returns fizz for 3', function () {
            expect(FizzBuzz.run(3)).to.equal("fizz");
        });

        it('returns 4 for 4', function () {
            expect(FizzBuzz.run(4)).to.equal(4);
        });

        it('returns buzz for 5', function () {
            expect(FizzBuzz.run(5)).to.equal("buzz");
        });
        it('returns fizz for 9', function () {
            expect(FizzBuzz.run(9)).to.equal("fizz");
        });
        it('returns buzz for 10', function () {
            expect(FizzBuzz.run(10)).to.equal("buzz");
        });
        it('returns fizzbuzz for 15', function () {
            expect(FizzBuzz.run(15)).to.equal("fizzbuzz");
        });
        it('returns fizzbuzz for 30', function () {
            expect(FizzBuzz.run(30)).to.equal("fizzbuzz");
        });
    });
});
