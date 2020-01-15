How would you use ActiveRecord to return...
1. all the recipes
  Recipe.all

2. all the comments
  Comment.all

3. the most recent recipe posted
  Recipe.last

4. all the comments of the most recent recipe
  Recipe.last.comments.all

5. the most recent comment of all your comments
  Comment.last

6. the recipe associated with the most recent comment
  Comment.last.recipe

7. all comments that include the string brussels
  Comment.where('body like ?', '%brussels sprouts%')
