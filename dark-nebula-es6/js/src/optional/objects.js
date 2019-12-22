alterContext = (fn, obj) => {
  return fn.call(obj)
};

alterObjects = (constructor, greeting) => {
  constructor.prototype.greeting = greeting
};

iterate = (obj) => {
  // debugger
  // for(let prop in obj.constructor()) {
  //   console.log(prop)
  // }
  // console.log('bye')
};
