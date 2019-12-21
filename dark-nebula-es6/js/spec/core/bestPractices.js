describe('best practices', () => {
  it('you should avoid global variables', () => {
    globals();
    expect(window.myObject).toBe(undefined);
  });

  it('you should understand strict comparison', () => {
    expect(identity(1, '1')).toEqual(false);
    expect(identity(1, 1)).toEqual(true);
    expect(identity(0, false)).toEqual(false);
  });
});
