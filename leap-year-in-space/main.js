class Year {
  constructor(current) {
    this.current = current
  }
  isLeapYear = () => {
    if(this.current % 4 !== 0) {
      return false
    } else if(this.current % 100 !== 0) {
      return true
    } else if(this.current % 400 !== 0) {
      return false
    }
    return true
  }
}
