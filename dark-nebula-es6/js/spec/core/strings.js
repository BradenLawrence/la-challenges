describe('strings', () => {
  it('you should be able to reduce duplicate characters to a desired minimum', () => {
    expect(reduceString('aaaabbbb', 2)).toEqual('aabb');
    expect(reduceString('xaaabbbb', 2)).toEqual('xaabb');
    expect(reduceString('aaaabbbb', 1)).toEqual('ab');
    expect(reduceString('aaxxxaabbbb', 2)).toEqual('aaxxaabb');
  });

  it('you should be able to reverse a string', () => {
    let inputStrings = [
      'abc',
      'i am a string of characters',
      'A man, a plan, a canal: Panama'
    ];
    let outputStrings = [
      'cba',
      'sretcarahc fo gnirts a ma i',
      'amanaP :lanac a ,nalp a ,nam A'
    ];

    inputStrings.forEach((str, index) => {
      let result = reverseString(str);
      expect(result).toEqual(outputStrings[index]);
    });
  });
});
