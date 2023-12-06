-- Insert

insert into usuario (id, nome, foto, telefone, email, senha) values
(1, "Maria Luiza Gomes", "../img/", "(11) 91270-8554", "maluuu@gmail.com", "KiraCindyBentoo"),
(2, "Estela Alves", "../img/", "(11) 91234-5678", "estRelinha@gmail.com", "13121606"),
(3, "Giovanna Belo", "../img/", "(11) 98765-4321", "gibeloo@gmail.com", "Senha@123"),
(4, "Tamires Fernandes", "../img/", "(11) 93265-8401", "snmuitolinda@gmail.com", "lindovski"),
(5, "Mylena Torquato", "../img/", "(11) 91015-1016", "mymytorquato@gmail.com", "32871560");

insert into endereco (id, id_usuario, rua, bairro, numero, complemento, cep) values
(1, 1, "Rua Satoru Gojo", "Bairro Logoali", 9, "", "123456789"),
(2, 2, "Rua Choso Kamo", "Bairro Pertinho", 20, "Perto do cemitério", "000123654"),
(3, 3, "Rua Yume", "Bairro Shury", 5, "Bloco 5, apto 14", "000056987"),
(4, 4, "Rua Suguru Geto", "Bairro Liberdade", 32, "", "9876654321"),
(5, 5, "Rua Nathalia Kawakami", "Bairro Logoali", 16, "Do lado do veterinário", "09917000");

insert into produtos (id, nome, foto, preco, descricao, avaliacao, disponibilidade) values
(1, "Pizza de peperoni com queijo", "../img/", 19.00, "Lorem ipsum dolor sit.", 4, true),
(2, "Pizza de calabresa com queijo.", "../img/", 16.00, "Lorem ipsum dolor sit.", 3, true),
(3, "Pizza de frango com catupiry.", "../img/", 17.00, "Lorem ipsum dolor sit.", 4, true),
(4, "Pizza de abobrinha com brie", "../img/", 30.00, "Queijo Brie, Abrobrinha grelhada no azeite, alho in natura e parmesão para gratinar.", 5, true),
(5, "oriental", "../img/", 24.00, "muzzarela, alho poró, shimeji e shitake refogado no shoyo, cream cheese, cubos de cebola.", 5, true),
(6, "Pizza chocolate com morango", "../img/", 12.00, "Lorem ipsum dolor sit.", 4, true),
(7, "coca-cola 2L", "../img/", 14.99, "Lorem ipsum dolor sit.", 4, true),
(8, "cerveja heineken", "../img/", 17.99, "Lorem ipsum dolor sit.", 3, false),
(9, "chessecake", "../img/", 28.99, "Lorem ipsum dolor sit.", 5, true);

insert into comentarios (id, usuario_id, produtos_id, titulo, avaliacao, comentario, data_comentario) values
(1, 1, 5, "sensacional!", 5, "muito gostosa!! recomendo pacas.", '2023-05-13'),
(2, 4, 3, "meio seca", 3, "é boa, mas muito seca.", '2023-03-10'),
(3, 5, 4, "gostosa!", 4, "uma boa opção de pizza vegetariana", '2023-2-27');

-- comentarios, categorias, possui, pedidos, pedido-produto --