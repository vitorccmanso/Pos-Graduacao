-- REGIAO
INSERT INTO projeto.reg_regiao VALUES(101, 'Cidade 1', 'Bairro 1_c1');
INSERT INTO projeto.reg_regiao VALUES(102, 'Cidade 1', 'Bairro 2_c1');
INSERT INTO projeto.reg_regiao VALUES(103, 'Cidade 1', 'Bairro 3_c1');
INSERT INTO projeto.reg_regiao VALUES(201, 'Cidade 2', 'Bairro 1_c2');
INSERT INTO projeto.reg_regiao VALUES(202, 'Cidade 2', 'Bairro 2_c2');
INSERT INTO projeto.reg_regiao VALUES(203, 'Cidade 2', 'Bairro 3_c2');

-- FILIAL
INSERT INTO projeto.fil_filial VALUES(1, 'Filial 1', 101);
INSERT INTO projeto.fil_filial VALUES(2, 'Filial 2', 102);
INSERT INTO projeto.fil_filial VALUES(3, 'Filial 3', 103);
INSERT INTO projeto.fil_filial VALUES(4, 'Filial 4', 201);
INSERT INTO projeto.fil_filial VALUES(5, 'Filial 5', 202);
INSERT INTO projeto.fil_filial VALUES(6, 'Filial 6', 203);

-- FORNECEDOR
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 1', 1, 'Produto 1', 'Tipo a');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 2', 2, 'Produto 2', 'Tipo b');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 3', 1, 'Produto 1', 'Tipo a');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 4', 5, 'Produto 5', 'Tipo e');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 5', 6, 'Produto 6', 'Tipo f');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 6', 3, 'Produto 3', 'Tipo c');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 7', 5, 'Produto 5', 'Tipo e');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 8', 4, 'Produto 4', 'Tipo d');
INSERT INTO projeto.for_fornecedor VALUES('Fornecedor 9', 1, 'Produto 1', 'Tipo a');

-- CLIENTE
INSERT INTO projeto.clt_cliente VALUES(01, 'Cliente 1', 1);
INSERT INTO projeto.clt_cliente VALUES(02, 'Cliente 2', 3);
INSERT INTO projeto.clt_cliente VALUES(03, 'Cliente 3', 6);
INSERT INTO projeto.clt_cliente VALUES(04, 'Cliente 4', 4);
INSERT INTO projeto.clt_cliente VALUES(05, 'Cliente 5', 1);
INSERT INTO projeto.clt_cliente VALUES(06, 'Cliente 6', 5);
INSERT INTO projeto.clt_cliente VALUES(07, 'Cliente 7', 5);
INSERT INTO projeto.clt_cliente VALUES(08, 'Cliente 8', 2);
INSERT INTO projeto.clt_cliente VALUES(09, 'Cliente 9', 1);

-- TELEFONE CLIENTE
INSERT INTO projeto.tel_telefone VALUES('31988725028', 01);
INSERT INTO projeto.tel_telefone VALUES('3133578010', 01);
INSERT INTO projeto.tel_telefone VALUES('11994570812', 02);
INSERT INTO projeto.tel_telefone VALUES('1120568193', 03);
INSERT INTO projeto.tel_telefone VALUES('21989631278', 04);
INSERT INTO projeto.tel_telefone VALUES('3170635894', 05);
INSERT INTO projeto.tel_telefone VALUES('21988508762', 06);
INSERT INTO projeto.tel_telefone VALUES('1120587364', 07);
INSERT INTO projeto.tel_telefone VALUES('1125890167', 08);
INSERT INTO projeto.tel_telefone VALUES('31987690020', 09);

-- EMPREGADO
INSERT INTO projeto.emp_empregado VALUES(001, 33124455928, 'João', 'Alencar', 7000, 'M', 1);
INSERT INTO projeto.emp_empregado VALUES(002, 59003081195, 'Matilde', 'Oliveira', 9000, 'F', 1);
INSERT INTO projeto.emp_empregado VALUES(003, 82059675069, 'Leonor', 'Pereira', 12000, 'M', 1);
INSERT INTO projeto.emp_empregado VALUES(004, 28915755473, 'Lucas', 'Cavalcanti', 5000, 'M', 2);
INSERT INTO projeto.emp_empregado VALUES(005, 87335240787, 'Marisa', 'Barros', 8000, 'F', 3);
INSERT INTO projeto.emp_empregado VALUES(006, 16203881796, 'Davi', 'Ferreira', 6000, 'M', 4);
INSERT INTO projeto.emp_empregado VALUES(007, 24306192060, 'Arthur', 'Ribeiro', 7000, 'M', 5);
INSERT INTO projeto.emp_empregado VALUES(008, 06955969251, 'Tânia', 'Barros', 4000, 'F', 6);
INSERT INTO projeto.emp_empregado VALUES(009, 12541343998, 'Erick', 'Melo', 4000, 'M', 2);
INSERT INTO projeto.emp_empregado VALUES(010, 17505361688, 'Nicole', 'Dias', 8000, 'F', 5);

-- PEDIDO
INSERT INTO projeto.ped_pedido VALUES(003, 01, 80000);
INSERT INTO projeto.ped_pedido VALUES(001, 05, 50000);
INSERT INTO projeto.ped_pedido VALUES(002, 09, 70000);
INSERT INTO projeto.ped_pedido VALUES(004, 08, 20000);
INSERT INTO projeto.ped_pedido VALUES(005, 02, 30000);
INSERT INTO projeto.ped_pedido VALUES(006, 04, 25000);
INSERT INTO projeto.ped_pedido VALUES(007, 06, 40000);
INSERT INTO projeto.ped_pedido VALUES(008, 03, 10000);
INSERT INTO projeto.ped_pedido VALUES(009, 08, 15000);
INSERT INTO projeto.ped_pedido VALUES(010, 07, 60000);