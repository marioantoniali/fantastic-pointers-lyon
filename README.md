# [Growth Hacking](https://fantastic-pointers.herokuapp.com/)

Voici notre site qui présente 3 Landing Pages.<br/>  
Sur ces pages nous présentons la formation "The Hacking Project" pour différentes cibles : 
[le grand public](https://fantastic-pointers.herokuapp.com/), [les femmes](https://fantastic-pointers.herokuapp.com/?role=girl) et [les Lyonnais](https://fantastic-pointers.herokuapp.com/?role=lyon).<br/> 
Le but étant de donner envie de s'inscrire à la newsletter.

------------------------------
# On utilise #

* ruby '2.5.1'
* gem 'rails', '~> 5.2.1'
* une base sqlite 3


------------------------------
# Instructions #

Pour tester cette application, importez le dossier sur votre pc, en suivant les instructions suivantes :


```sh
$ git clone https://github.com/willyGitHub18/fantastic-pointers-lyon

$ cd fantastic-pointers-lyon

$ bundle install --without production

$ rails db:migrate

$ rails server
```
# La structure de l'appli #

```
├── app
│   ├── assets
|	│      └── stylesheets
│   │               ├── application_girl.scss
│   │               ├── application_lyon.scss
│   │               └── application.scss	
│   ├── channels
│   ├── controllers
│   ├── helpers
│   ├── jobs
│   ├── mailers
│   ├── models
│   ├── services
│   └── views
│
├── bin
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── credentials.yml.enc
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   ├── initializers.rb
│   ├── locales
│   ├── puma.rb
│   ├── routes.rb
│   ├── spring.rb
│   └── storage.yml
├── config.ru
├── db
├── Gemfile
├── Gemfile.lock
├── log
├── Rakefile
└─── README.md
```



Pour accéder à la page Heroku, [UI_Sprint_Lyon](https://fantastic-pointers.herokuapp.com/)


