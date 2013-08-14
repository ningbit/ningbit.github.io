---
layout: post
title: "Recipe Book UI: Building a Custom JQuery User Interface"
date: 2013-07-16 23:21
comments: true
categories:
---
By Ning Yap ([@ningbit](https://github.com/ningbit))

![RecipeUI](/images/2013/pantry_ingredients.png)
Play with the completed UI at [recipeui.herokuapp.com](http://recipeui.herokuapp.com/)!

##UI Driven Development

The battle between front-end and back-end continues to be waged. But who cares about that? Let's make a beautiful UI because it makes us happy!

##Relevant JQuery Code:

    $("[HTML element])
selects the element, by element id being quite common and efficient.

    .click()
captures a click event.

    .html()
will write HTML code into your page directly.

    .css("display","none")
hides an element by adding the CSS display property.

    .fadeIn()
fades in your element.

Also, let's use FlatUI, a Boostrap-wrapped theme. Download [here](http://designmodo.github.io/Flat-UI/)!

##Origin of The Pantry

So in class at the [Flatiron School](http://flatironschool.com/), we were asked to create a Rails app that  mimicked the relationship between recipes and ingredients. But, we were not to instantiate new ingredients per recipe. Recipes would share Ingredient objects, only creating new instances if they didn't already exist. Hence, the idea of a "pantry":

__Idea:__ *The pantry contains all ingredients available to the chef to create her recipe. If she doesn't have the ingredients handy, she must go shopping at the local marketplace.*

__UI Concept:__ How about clicking on visual representations of ingredients in the pantry and "popping" them into the recipe list? Sounds awesome right?

![CreateRecipeUI](/images/2013/create_recipe2.png)

##Death To The Dropdown!

>My golden rule for dropdown menus is don't use them. They suck. Especially if you have more than 10 elements. -Me

##How to Achieve The Desired UI and Experience Nirvana

First, suffer deeply through the difficulty of implementing a fun UI interface via a JavaScriptERB partial from scratch. Just kidding! It'll be much better for you since you can just borrow my template. :)

####Here's what the brute-force code looks like:

{% include_code RecipeUI lang:js recipeui.js.erb %}

There are two actions associated with a click. It must hide the pantry item and append to the recipe. If you don't hide the pantry item, recipes could have duplicate items. Use ERb each loops to loop through the entire ingredient list and create a JQuery click action for each. A reset action "resets" the recipe and refresh the pantry. A submit action writes the finished recipe to the hidden form field on the page.

{% include_code Hidden Form lang:html hidden_formfield.html.erb %}


Reference each ingredient element by assigning a dynamically generated id in your view HTML ERb

{% include_code ID Generator lang:js dynamically_generated_id.html.erb %}

Pass the render function the js.erb partial and a local variable encapsulating all your ingredients.

{% include_code Render Partial render_partial.html.erb %}


And it's just that simple!

##Recycle Your Code (still keepin' it DRY)

- Make the necessary adjustments to your Edit view, i.e. hide the elements that are already in the recipe.
- Add a minor twist and make a garbage disposal! :)
- Give it some flair by hiding the disposal until the user tries to dispose. Fade out if the user changes his mind and cancels.

Check out the [repo](https://github.com/ningbit/recipes-lab) for how-to.

##Switch Up. Make a Shopping Cart Text Field!

![ShoppingCart](/images/2013/ingredient_shopping.png)

Same principles here. Clicking add should pop the typed text into the cart. It takes just a few different lines of code. When you
"submit" the form (text field) by clicking the "add" button, it will try to redirect you to a new page. Kill that action by putting this code in the "action" attribute of the form.

    <form action="javascript:void(0);">

Add some simple animation. Make the field shake if the user tries to add badly-formatted items.

{% include_code Shake Animation lang:js shake.js.erb %}

##Polish that UI

How about a cool feature to highlight the new items you just bought? Use the .updated_at method and subtract from Time.now.

{% include_code Highlight Recently Added recently_added.html.erb %}

Make the colors of the buttons refer to their usage!

![RecipeButtons](/images/2013/recipe_buttons.png)

How about smartly listing the ingredients in the main recipe window? Show the first four ingredients and then append a "..." if there are more ingredients. With ERb, the world is your oyster recipe.

![RecipeBook](/images/2013/recipe-book.png)

Now go generate your own ERb.js UI!
