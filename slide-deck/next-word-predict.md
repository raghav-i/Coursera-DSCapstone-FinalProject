Next Word Predict
========================================================
author: Raghavendra Dabral
date: 10 December 2022
autosize: true
transition: rotate
class: smaller
css: style.css

Coursera Data Science Specialization<br />
Capstone Project<br />
Johns Hopkins University<br />

========================================================
# **Objective**

<small>
This presentation provides information about the text prediction algorithm as well as the Next Word Predict app, which is featured.

The Next Word Predict app is running at:

<a target="_blank" href="https://raghav-211.shinyapps.io/shiny-app-new-words/">https://raghav-211.shinyapps.io/shiny-app-new-words/</a>

</small>

========================================================
# **The Shiny Application**

<small>
The Shiny app called Next Word Predict employs a text prediction algorithm to foretell 
the following word or words from the user's input of text.

An n-gram algorithm will be used by the programme to suggest the following word in 
a sentence. An n-gram is a continuous string of *n* words taken from a particular textual sequence.

A sizable corpus of blog, news, and twitter data was used to generate the text that 
was used to create the predictive text model. The predictive text model was created 
using n-grams that were retrieved from the corpus.

The use of text mining and natural language processing techniques were researched upon 
to improve speed and accuracy.
</small>

========================================================
# **The Predictive Text Model**

<small>
A sample of 800,000 lines taken from the enormous corpus of blogs, news, and twitter data 
was used to create the predictive text model.

The *tm* package and many regular expressions were then used to tokenize and sanitize 
the sample data using the *gsub* function. In the course of cleaning the data, any 
non-ASCII characters, URLs, email addresses, Twitter handles, hash tags, ordinal numbers, 
foul language, punctuation, and whitespace were eliminated. The data was then transformed 
to lowercase. Tokens were then created from the data (n-grams).

The method iterates from longest n-gram (4 gram) to shortest (2 gram) in order 
to find matches as text is provided by the user. The longest, most frequent matching 
n-gram is used to anticipate the following word. The method employs a straightforward 
back-off technique.
</small>

========================================================
# **Application and User Interface**

<small>
When the program recognizes that you have finished entering one or more words, it will 
display the predicted next word. Please let the output a few seconds to show after 
inputting text. Choose up to three following word guesses using the slider tool. Following 
the top prediction, the second and third most likely next words will be displayed.
</small>

<img src="images/next-word-predict-ui.png">
