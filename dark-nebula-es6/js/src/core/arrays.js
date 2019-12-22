removeWithoutCopy = (arr, item) => {
  for(let i = arr.length; i >= 0; i--) {
    if(arr[i] === item) {
      arr.splice(i,1)
    }
  }
  return arr
};

append = (arr, item) => {
  arr.push(item)
  return arr
};

truncate = (arr) => {
  arr.pop()
  return arr
};

prepend = (arr, item) => {
  arr.unshift(item)
  return arr
};

curtail = (arr) => {
  arr.shift()
  return arr
};

concat = (arr1, arr2) => {
  return arr1.concat(arr2)
};

insert = (arr, item, index) => {
  arr.splice(index, 0, item)
  return arr
}

count = (arr, item) => {
  return arr.filter(element => element === item).length
};

duplicates = (arr) => {
  let tracker = {}
  let duplicates = {}
  arr.forEach(element => {
    if(tracker[element]) {
      duplicates[element] = element
    } else {
      tracker[element] = true
    }
  })
  return Object.values(duplicates)
};

square = (arr) => {
  return arr.map(element => element * element)
};

findAllOccurrences = (arr, item) => {
  instances = []
  arr.forEach( (element, index) => {
    if(element === item) {
      instances.push(index)
    }
  })
  return instances
};
