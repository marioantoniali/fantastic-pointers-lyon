# [Growth Hacking](https://fantastic-pointers.herokuapp.com/)

### Présentation 

Voici notre site qui présente 3 Landing Pages.<br/>  
Sur ces pages nous présentons la formation "The Hacking Project" pour différentes cibles : 
- [le grand public](https://fantastic-pointers.herokuapp.com/), 
- [les femmes](https://fantastic-pointers.herokuapp.com/?role=girl) 
- [et les Lyonnais](https://fantastic-pointers.herokuapp.com/?role=lyon).<br/> 
Le but étant de donner envie de s'inscrire à la newsletter.

### Description du projet 

On utilise la gem 'twitter', elle permet de retrouver les tweets qui contiennent les mots clés (formation, dev). Suite à l'envoie de tweet on envoie un commentaire via la fonction 'update'.
On utilise la fonction 'favorite' pour liker le tweet contenant les mots clés recherchés.<br/>

Avec la gem 'gibbon' pour faire tourner 'MailChimp', on récupère les mails des persones inscrites afin de les stockers dans la base de données et s'en servir pour envoyer des newsletters.
On scrape [cette page](http://www.cci.fr/web/organisation-du-reseau/sites-internet-et-courriels-des-c-r-ci)

On utilise la gem 'capybara' et la gem 'minitest', pour les tests.

------------------------------
### On utilise 

* ruby '2.5.1'
* gem 'rails', '5.2.1'
* gem 'twitter',
* gem 'capybara', '2.15'
* gem 'minitest', '5.11.3'
* gem 'gibbon',
* une base sqlite 3


------------------------------
### Instructions 

Pour tester cette application, importez le dossier sur votre pc, en suivant les instructions suivantes :


```sh
$ git clone [https://github.com/willyGitHub18/fantastic-pointers-lyon](https://github.com/willyGitHub18/fantastic-pointers-lyon)

$ cd fantastic-pointers-lyon

$ bundle install --without production

$ rails db:migrate

$ rails server
```
### La structure de l'appli 

```
├── app
│   ├── assets
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   ├── javascripts
│   │   └── stylesheets
│   │       ├── application_girl.scss
│   │       ├── application_lyon.scss
│   │       └── application.scss
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


### @uteurs, l'équipe de Lyon
