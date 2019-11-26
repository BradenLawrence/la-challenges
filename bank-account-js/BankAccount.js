class BankAccount {
  constructor(initialBalance = 0) {
    this.balance = initialBalance
    this.transactions = [initialBalance]
  }
  updateBalance() {
    return this.balance = this.transactions.reduce((total, current) => {
      return total + current
    })
  }
  addTransaction = (value) => {
    if(!isNaN(parseFloat(value))) {
      this.transactions.push(value)
      return this.updateBalance()
    } else {
      return "Sorry, your transaction must be a number."
    }
  }
}
