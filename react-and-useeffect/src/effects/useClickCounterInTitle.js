import { useState, useEffect } from 'react'

const useClickCounterInTitle = () => {
  const [clicks, setClicks] = useState(-1)
  useEffect(() => {
    console.log("howdy!")
    document.title = `${clicks + 1} clicks`
  }, [clicks])
  return [clicks, setClicks]
}

export default useClickCounterInTitle
