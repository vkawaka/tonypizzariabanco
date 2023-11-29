-- Insert

insert into usuario (nome, foto, telefone, email, senha) values
("Maria Luiza Gomes", "../img/", "(11) 91270-8554", "maluuu@gmail.com", "KiraCindyBentoo"),
("Estela Alves", "../img/", "(11) 91234-5678", "estRelinha@gmail.com", "13121606"),
("Giovanna Belo", "../img/", "(11) 98765-4321", "gibeloo@gmail.com", "Senha@123"),
("Tamires Fernandes", "../img/", "(11) 93265-8401", "snmuitolinda@gmail.com", "lindovski"),
("Mylena Torquato", "../img/", "(11) 91015-1016", "mymytorquato@gmail.com", "32871560");

insert into endereco (id_usuario, rua, bairro, numero, complemento, cep) values
(1, "Rua Satoru Gojo", "Bairro Logoali", 9, "", "123456789"),
(2, "Rua Choso Kamo", "Bairro Pertinho", 20, "Perto do cemitério", "000123654"),
(3, "Rua Yume", "Bairro Shury", 5, "Bloco 5, apto 14", "000056987"),
(4, "Rua Suguru Geto", "Bairro Liberdade", 32, "", "9876654321"),
(5, "Rua Nathalia Kawakami", "Bairro Logoali", 16, "Do lado do veterinário", "09917000");

insert into produtos (nome, foto, preco, descricao, avaliacao, disponibilidade) values
("Pizza de peperoni com queijo", "../img/", 19.00, "Lorem ipsum dolor sit.", 4, true),
("Pizza de calabresa com queijo.", "../img/", 16.00, "Lorem ipsum dolor sit.", 3, true),
("Pizza de frango com catupiry.", "../img/", 17.00, "Lorem ipsum dolor sit.", 4, true),
("Pizza de abobrinha com brie", "../img/", 30.00, "Queijo Brie, Abrobrinha grelhada no azeite, alho in natura e parmesão para gratinar.", 5, true),
("oriental", "../img/", 24.00, "muzzarela, alho poró, shimeji e sjitake refogado no shoyo, cream cheese, cubos de cebola.", 5, true),
("Pizza chocolate com morango", "../img/", 12.00, "Lorem ipsum dolor sit.", 4, true),
("coca-cola 2L", "../img/", 14.99, "Lorem ipsum dolor sit.", 4, true),
("cerveja heineken", "../img/", 17.99, "Lorem ipsum dolor sit.", 3, false),
("chessecake", "../img/", 28.99, "Lorem ipsum dolor sit.", 5, true);

