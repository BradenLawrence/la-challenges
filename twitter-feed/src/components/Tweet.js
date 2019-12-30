import React from 'react'

const Tweet = props => {
  let mediaList
  let displayText = props.data.text
  if(props.data.entities.media !== undefined) {
    mediaList = props.data.entities.media.map(media => {
      displayText = displayText.replace(media.display_url, "")
      return <img key={media.media_url} src={media.media_url}/>
    })
  }
  const replyHandler = event => alert("reply")
  const retweetHandler = event => alert("retweet")
  const likeHandler = event => alert("like")
  const moreHandler = event => alert("more")
  return(
    <div className="callout media-object stack-for-small">
      <div className="media-object-section">
        <div className="thumbnail">
          <img src={props.data.user.profile_image_url}/>
        </div>
      </div>
      <div className="media-object-section">
        <ul className="menu simple">
          <li className="menu-text">{props.data.user.name}</li>
          <li><span>{props.data.user.screen_name}</span></li>
        </ul>
        <p>{displayText}</p>
        <ul>
          {mediaList}
        </ul>
        <ul className="menu simple">
          <li onClick={replyHandler}><i className="fas fa-reply"></i></li>
          <li
            onClick={retweetHandler}
            className={props.data.retweeted ? "retweeted" : ""}>
            <i className="fas fa-retweet"></i>
          </li>
          <li
            onClick={likeHandler}
            className={props.data.liked ? "liked" : ""}>
            <i className="fas fa-heart"></i>
          </li>
          <li onClick={moreHandler}><i className="fas fa-ellipsis-h"></i></li>
        </ul>
      </div>
    </div>
  )
}
export default Tweet;
