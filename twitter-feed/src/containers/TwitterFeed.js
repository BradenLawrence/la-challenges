import React from 'react';
import Tweet from '../components/Tweet'

const TwitterFeed = props => {
  let tweetList = props.data.map(tweetData => {
    return <Tweet key={tweetData.id_str} data={tweetData}/>
  })
  return(
      <ul>
        {tweetList}
      </ul>
  )
  // return {tweetList}
};

export default TwitterFeed;
