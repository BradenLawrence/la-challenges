describe('arrays', () => {
  let a;

  beforeEach(() => {
    a = [ 1, 2, 3, 4 ];
  });

  describe('removeWithoutCopy', () => {
    it('should be able to remove all instances of a value from an array, returning the original array', () => {
      a.splice( 1, 0, 2 );
      a.push( 2 );
      a.push( 2 );

      let result = removeWithoutCopy(a, 2);

      expect(result.length).toBe(3);
      expect(result.join(' ')).toBe('1 3 4');
      expect(result).toEqual(a);
    });
  })

  it('you should be able to add an item to the end of an array', () => {
    let result = append(a, 10);

    expect(result[result.length - 1]).toBe(10);
  });

  it('you should be able to remove the last item of an array', () => {
    let result = truncate(a);

    expect(result.length).toBe(3);
    expect(result.join(' ')).toEqual('1 2 3');
  });

  it('you should be able to add an item to the beginning of an array', function () {
    let result = prepend(a, 10);

    expect(result.length).toBe(5);
    expect(result[0]).toEqual(10);
  });

  it('you should be able to remove the first item of an array', function () {
    let result = curtail(a);

    expect(result.length).toBe(3);
    expect(result.join(' ')).toEqual('2 3 4');
  });

  it('you should be able to join together two arrays', () => {
    let c = [ 'a', 'b', 'c', 1 ];
    let result = concat(a, c);

    expect(result.length).toBe(8);
    expect(result.join(' ')).toEqual('1 2 3 4 a b c 1');
  });

  it('you should be able to add an item anywhere in an array', () => {
    let result = insert(a, 'z', 2);

    expect(result.length).toBe(5);
    expect(result.join(' ')).toEqual('1 2 z 3 4');
  });

  it('you should be able to count the occurences of an item in an array', () => {
    let result = count([ 1, 2, 4, 4, 3, 4, 3 ], 4);

    expect(result).toEqual(3);
  });

  it('you should be able to find duplicates in an array', () => {
    let result = duplicates([ 1, 2, 4, 4, 3, 3, 1, 5, 3 ]);

    expect(result.sort()).toEqual([1, 3, 4]);
  });

  it('you should be able to square each number in an array', () => {
    let result = square(a);

    expect(result.length).toBe(4);
    expect(result.join(' ')).toEqual('1 4 9 16');
  });

  it('you should be able to find all occurrences of an item in an array', () => {
    let result = findAllOccurrences('abcdefabc'.split(''), 'a');

    expect(result.sort().join(' ')).toEqual('0 6');
  });

});
