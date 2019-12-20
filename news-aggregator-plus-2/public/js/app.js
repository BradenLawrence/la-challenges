const randBtn = document.getElementById("random_button")
const list = document.getElementById("article_list")

const appendArticle = (articleObject) => {
  console.log(articleObject)
  list.innerHTML += `
  <li class="fetchedArticle">
    <a href="articles/${articleObject.id}"><strong>${articleObject.title}</strong></a>
    <p>${articleObject.description}</p>
    <p>
      <a class="sourceURL" href="${articleObject.url}" target="_blank"> Read full article </a>
    </p>
  </li>
  `
}

const getRandomArticle = (event) => {
  fetch("/api/v1/random_article.json")
    .then(response => response.json())
    .then(json => appendArticle(json.article))
}

randBtn.addEventListener("click", getRandomArticle)
