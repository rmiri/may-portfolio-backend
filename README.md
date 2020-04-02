# READ ME

This is the backend for my final project for the Software Engineering BootCamp at FlatIron London, you can find the frontend [here](https://github.com/rmiri/may-portfolio-frontend).
The project is a portfolio website for image-based professionals (designers, photographers…), you can see a live demo [here](https://vimeo.com/402325147).

The Interface Design was done by [May Miriuk](https://www.maymiriuk.com/).

I used Ruby on Rails for the backend and React.Js and redux for the frontend.

## Ruby Version

ruby 2.6.1p33

## Instalation 

```bash
bundle install
```
```bash
rails db:create
```
```bash
rails db:seed
```
```bash
rails db:migrate
```

## Usage

Start the server to be able to make a fetch from the frontend.

```bash
rails s
```
or if it doesn't work use this insteade:

```bash
puma
```

The frontend has the URL set to localhost:3000, so if you don’t want to change it’s a good idea to start the server from the backend first.
Alternatively, you can edit the URL on the [API.js file](https://github.com/rmiri/may-portfolio-frontend/blob/dev-2/src/API.js).\
./src/API.js




----

Any errors or questions feel free to contact me.
