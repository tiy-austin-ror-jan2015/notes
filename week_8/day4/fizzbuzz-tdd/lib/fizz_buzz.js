var FizzBuzz = {
    run: function (n) {
        if (this.isZero(n % 15)) { return 'fizzbuzz'; }
        if (this.isZero(n %  3)) { return 'fizz';     }
        if (this.isZero(n %  5)) { return 'buzz';     }

        return n;
    },

    isZero: function (pred) {
        return pred === 0;
    }
};

module.exports = FizzBuzz;
