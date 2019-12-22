describe('regular expressions', () => {
  it('you should be able to detect a number in a string', () => {
    expect(containsNumber('abc123')).toEqual(true);
    expect(containsNumber('abc')).toEqual(false);
  });

  it('you should be able to detect a repeating letter in a string', () => {
    expect(containsRepeatingLetter('bookkeeping')).toEqual(true);
    expect(containsRepeatingLetter('rattler')).toEqual(true);
    expect(containsRepeatingLetter('ZEPPELIN')).toEqual(true);
    expect(containsRepeatingLetter('cats')).toEqual(false);
    expect(containsRepeatingLetter('l33t')).toEqual(false);
  });

  it('you should be able to determine whether a string ends with a vowel (aeiou)', () => {
    expect(endsWithVowel('cats')).toEqual(false);
    expect(endsWithVowel('gorilla')).toEqual(true);
    expect(endsWithVowel('I KNOW KUNG FU')).toEqual(true);
  });

  it('you should be able to capture the first series of three numbers', () => {
    expect(captureThreeNumbers('abc123')).toEqual('123');
    expect(captureThreeNumbers('9876543')).toEqual('987');
    expect(captureThreeNumbers('abcdef')).toEqual(false);
    expect(captureThreeNumbers('12ab12ab')).toEqual(false);
  });

  it('you should be able to determine whether a string matches a pattern', () => {
    // the pattern is XXX-XXX-XXXX where all X's are digits
    expect(matchesPattern('800-555-1212')).toEqual(true);
    expect(matchesPattern('451-933-7899')).toEqual(true);
    expect(matchesPattern('33-444-5555')).toEqual(false);
    expect(matchesPattern('abc-def-hijk')).toEqual(false);
    expect(matchesPattern('1800-555-1212')).toEqual(false);
    expect(matchesPattern('800-555-12121')).toEqual(false);
    expect(matchesPattern('800-5555-1212')).toEqual(false);
    expect(matchesPattern('800-55-1212')).toEqual(false);
  });

  it('you should be able to detect correctly-formatted monetary amounts in USD', () => {
    expect(isUSD('$132.03')).toEqual(true);
    expect(isUSD('$32.03')).toEqual(true);
    expect(isUSD('$2.03')).toEqual(true);
    expect(isUSD('$1,023,032.03')).toEqual(true);
    expect(isUSD('$20,933,209.93')).toEqual(true);
    expect(isUSD('$20,933,209')).toEqual(true);
    expect(isUSD('$459,049,393.21')).toEqual(true);
    expect(isUSD('34,344.34')).toEqual(false);
    expect(isUSD('$,344.34')).toEqual(false);
    expect(isUSD('$34,344.3')).toEqual(false);
    expect(isUSD('$34,344.344')).toEqual(false);
    expect(isUSD('$34,344_34')).toEqual(false);
    expect(isUSD('$3,432,12.12')).toEqual(false);
    expect(isUSD('$3,432,1,034.12')).toEqual(false);
    expect(isUSD('4$3,432,034.12')).toEqual(false);
  });
});
