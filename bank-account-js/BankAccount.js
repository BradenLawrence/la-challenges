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
  }
}
