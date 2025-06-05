create database astro_bomb;
use astro_bomb;

create table usuario(
	id int primary key auto_increment,
    nome varchar(20) not null
);

create table jogo(
	id int primary key auto_increment,
    vencedor varchar(20) not null,
    pontuacaoFinal int not null
);

create table rodada(
	id int primary key auto_increment,
    fkUsuario int not null,
    fkJogo int not null,
    pontuacao int not null,
    
    foreign key (fkUsuario) references usuario(id),
    foreign key (fkJogo) references jogo(id)
);