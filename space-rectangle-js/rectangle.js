class Rectangle {
  constructor(width, height = width) {
    this.width  = width
    this.height = height
  }
  area      = () => (this.width * this.height)
  perimeter = () => (this.width + this.height) * 2
}
