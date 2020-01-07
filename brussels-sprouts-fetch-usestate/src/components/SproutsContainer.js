import React, { useState } from 'react';
import RandomSprout from './RandomSprout';
import SproutsIndex from './SproutsIndex';

const SproutsContainer = (props) => {
  const [recipe, setRecipe] = useState("")
  const [recipes, setRecipes] = useState([])

  const getRandomRecipe = () => {
    fetch('/api/v1/random-recipe')
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
    .then(response => response.json())
    .then(body => {
      setRecipe(body)
    })
  }

  const getAllRecipes = () => {
    fetch('/api/v1/recipes')
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
    .then(response => response.json())
    .then(body => {
      setRecipes(body)
    })
  }

  const handleRandomClick = () => {
    getRandomRecipe();
  }

  const handleIndexClick = () => {
    getAllRecipes();
  }

  return(
    <div className="container">
      <h1>Sprout Fetcher</h1>
      <RandomSprout
        recipe={recipe}
      />
      <SproutsIndex
        recipes={recipes}
      />

      <div className="buttons">
        <button onClick={handleRandomClick} className="btn">Get Random Recipe</button>

        <button onClick={handleIndexClick} className="btn">See All Recipes</button>
      </div>
    </div>
  )
}

export default SproutsContainer;
