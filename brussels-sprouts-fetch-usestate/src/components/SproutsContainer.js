import React, { useState } from 'react';
import RandomSprout from './RandomSprout';
import SproutsIndex from './SproutsIndex';
import LongestSprout from './LongestSprout'

const SproutsContainer = (props) => {
  const [recipe, setRecipe] = useState("")
  const [longest, setLongest] = useState("")
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

  const getLongestRecipe = () => {
    fetch('/api/v1/longest-recipe')
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
      setLongest(body)
    })
  }

  const handleRandomClick = () => {
    getRandomRecipe();
  }

  const handleIndexClick = () => {
    getAllRecipes();
  }

  const handleLongestClick = () => {
    getLongestRecipe()
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
      <LongestSprout
        recipe={longest}
      />

      <div className="buttons">
        <button onClick={handleRandomClick} className="btn">Get Random Recipe</button>

        <button onClick={handleIndexClick} className="btn">See All Recipes</button>

        <button onClick={handleLongestClick} className="btn">See Longest Recipe</button>
      </div>
    </div>
  )
}

export default SproutsContainer;
