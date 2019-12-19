const randomButton = document.getElementById('random_article')
const articleList = document.getElementById('articleList')

const appendArticle = (articleObject) => {
  articleList.innerHTML += `
  <li>
    <h4><a href="articles/${ articleObject.id }">${ articleObject.title }</a></h4>
    <p><a href="${ articleObject.url }" target=_blank id="${ articleObject.id }">Read full article</a></p>
    <p>${ articleObject.description }</p>
  </li>
  `
}

const getRandomArticle = (event) => {
  fetch("/random_article.json")
  .then(response => response.json())
  .then(json => appendArticle(json.article))
}

randomButton.addEventListener("click", getRandomArticle)
