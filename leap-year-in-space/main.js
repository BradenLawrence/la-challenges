class Year {
  constructor(current) {
    this.current = current
  }
  isLeapYear = (checkYear = this.current) => {
    if(checkYear % 4 !== 0) {
      return false
    } else if(checkYear % 100 !== 0) {
      return true
    } else if(checkYear % 400 !== 0) {
      return false
    }
    return true
  }
  recentLeapYears = (startYear = this.current) => {
    let leapYears = []
    for(let i=startYear-100; i<startYear; i++) {
      if(this.isLeapYear(i)) {
        leapYears.push(i)
      }
    }
    return leapYears
  }
}
