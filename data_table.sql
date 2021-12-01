create table users(
    id serial, 
    username varchar(40), 
    passwords varchar(255)
); 

create table occasions( 
    id serial,
    events varchar(255),
    recipies varchar(255),
    user_id integer not null references users(id)
);

create table foods (
    id serial,
    ingredient_each varchar(255) not null unique
);

create table recipes (
    id serial, 
    steps varchar(255), 
    user_id integer not null references users(id),
    private boolean,
    ingredients varchar(255) not null references foods(ingredient_each) 
);

create table grocery_list (
    id serial,
    recipe varchar(255), 
    item varchar(255) not null references recipies(ingredients)
);
