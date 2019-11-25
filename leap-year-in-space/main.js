class Year {
  constructor(current) {
    this.current = current
  }
  isLeapYear = () => this.current % 4 === 0
}
