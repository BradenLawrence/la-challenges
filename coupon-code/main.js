let couponBtn = document.querySelector('#click-here')
let couponDisplay = document.querySelector('#coupon-code')
let secretCode = "50OFF-YOWZA!"

const revealCode = (display) => {
  display.innerHTML = secretCode
}

couponBtn.addEventListener('click', event => {
  revealCode(couponDisplay)
})
