alterContext = (fn, obj) => {
  return fn.call(obj)
};

alterObjects = (constructor, greeting) => {
  constructor.prototype.greeting = greeting
};

iterate = (obj) => {
  let result = []
  Object.keys(obj).forEach(key => {
    result.push(`${key}: ${obj[key]}`)
  })
  return result
};
