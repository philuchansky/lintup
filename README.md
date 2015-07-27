# Lintup



A tool for sharing and discovering useful code snippets.

Users can sign up for a free account and immediately begin contributing code snippets they find useful, and can also bookmark other user's snippets by 'linting' them, which is a fancy L.A. tech startup word for 'liking', or them.

# First Iteration ERD

![First Iteration ERD](https://cloud.githubusercontent.com/assets/5580178/8899927/3a182092-33ef-11e5-8412-0e47fc9ef0d2.png)

# Wireframes

Generalized idea for home page, includes a hero banner, and a feed of recent 'snippets':

![](https://cloud.githubusercontent.com/assets/5580178/8900521/b0f7c5ea-33f5-11e5-8690-d78c2c8152e0.png)


Generalized idea for the user profile page template, which displays their "Gravatar", profile info, and recent snippets for that user:

![](https://cloud.githubusercontent.com/assets/5580178/8900490/620761e8-33f5-11e5-8871-13959025b37c.png)

The "New Snippet" page template provides an inline browser-based text editor like sublime which allows for auto-indentation, code-completion, and syntax highlighting, using the [CodeMirror](http://codemirror.net) framework:

![](https://cloud.githubusercontent.com/assets/5580178/8900595/3f80823e-33f6-11e5-93a5-65c0be19a7e2.png)

# Technologies:

Application framework: [Ruby on Rails ](http://rubyonrails.org/)

Markdown Comment Creation: [simplemde.js](https://github.com/NextStepWebs/simplemde-markdown-editor)

Markdown Comment Viewing: [showdown.js](https://github.com/showdownjs/showdown)

Adding Snippets: [CodeMirror](https://codemirror.net/)

Frontend UI Framework: [Bootstrap](http://getbootstrap.com/)


# User Stories

As a user, I want to save my favorite code snippets by 'linting' them so that I can easily refer to them later.

As a user, I want to add code snippets using a browser-based 'text-editor' style input, so that I can maintain language syntax with indentation.

As a user, I want to quickly be able to 'unlint' a post, or, 'unlike' it, if I decide to, by clicking the same 'lint' button like a toggle switch.

As a user, I want to comment on other snippets with an editor that allows me to use markdown so that I can easily quote references.

As a user, I want to be able to see how many 'lints' my snippets have, and see a breakdown of how many snippets and total number of 'lints' I've got from my user profile page.

As a user, I want to be able to edit my profile information quickly and easily, including my name, email, password, username, and github link, in the event my contact info needs to be updated.