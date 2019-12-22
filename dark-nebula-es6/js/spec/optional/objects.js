describe('objects', () => {
  let a;
  let b;

  beforeEach(() => {
    a = {
      name : 'Jenn',
      greeting : 'Hello',
      sayIt() {
        return  this.greeting + ', ' +
                this.name + '!';
      }
    };

    b = {
      name : 'Rebecca',
      greeting : 'Yo'
    };
  });

  it('you should be able to alter the context in which a method runs', function() {
      // define a function for fn so that the following will pass
    expect(alterContext(a.sayIt, b)).toEqual('Yo, Rebecca!');
  });

  it('you should be able to alter multiple objects at once', function() {
    // define a function for fn so that the following will pass
    class C {
      constructor(name) {
        this.name = name;
      };
    };

    let obj1 = new C('Rebecca');
    let obj2 = new C('Melissa');
    let greeting = 'What\'s up';

    alterObjects(C, greeting);

    expect(obj1.greeting).toEqual(greeting);
    expect(obj2.greeting).toEqual(greeting);
    expect(new C('Ellie').greeting).toEqual(greeting);
  });

  it('you should be able to iterate over an object\'s "own" properties', function() {
    // define a function for fn so that the following will pass
    let C = function() {
      this.foo = 'bar';
      this.baz = 'bim';
    };

    C.prototype.bop = 'bip';

    let obj = new C();

    expect(iterate(obj)).toEqual([ 'foo: bar', 'baz: bim' ]);
  });
});
