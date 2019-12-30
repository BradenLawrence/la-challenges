listFiles = (data, dirName = null) => {
  // Process
  let foundFiles = []
  console.log('starting...')
  console.log('Current found files:')
  console.log(foundFiles)
  let foundNestedDirs = []
  if(data.dir === dirName || dirName === null) {
    data.files.forEach(file => {
      console.log('Looking at:')
      console.log(file)
      if(typeof file === "string") {
        console.log(`Pushing ${file} to foundFiles`)
        foundFiles.push(file)
      } else if(typeof file === "object") {
        console.log(`Found a new directory`)
        foundNestedDirs.push(file)
      }
    })
  }
  // End?
  if(foundNestedDirs.length === 0) {
    console.log('No more directories found, returning list')
    return foundFiles
  } else {
    // Continue
    console.log('Discovered these sub directories:')
    console.log(foundNestedDirs)
    console.log('Current found files:')
    console.log(foundFiles)
    console.log('Running again...')
    console.log('--------------')
    foundNestedDirs.forEach(dir => {
      foundFiles.concat(listFiles(dir, dirName))
    })
    return foundFiles
  }


};

permute = (arr) => {
  // Optional Challenge
};

fibonacci = (n) => {
  // Optional Challenge
};

validParentheses = (n) => {
  // Optional Challenge
};
