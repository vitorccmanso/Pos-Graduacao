CREATE SCHEMA projeto;

CREATE  TABLE projeto.reg_regiao ( 
	reg_id int NOT NULL,
	reg_cidade varchar(20) NOT NULL,
	reg_bairro varchar(20) NOT NULL,
	CONSTRAINT pk_reg_regiao PRIMARY KEY (reg_id),
	CONSTRAINT unq_reg_regiao UNIQUE (reg_cidade, reg_bairro)
);

CREATE  TABLE projeto.fil_filial ( 
	fil_id int NOT NULL,
	fil_nome varchar(40)  NOT NULL,
	fil_reg_id int NOT NULL,
	CONSTRAINT pk_fil_filial PRIMARY KEY (fil_id)
); 
 
CREATE  TABLE projeto.for_fornecedor ( 
	for_nome varchar(40) NOT NULL,
	for_fil_id int NOT NULL,
	for_produto varchar(20) NOT NULL,
	for_tipo varchar(20) NOT NULL,
	CONSTRAINT pk_for_fornecedor PRIMARY KEY (for_nome, for_fil_id),
	CONSTRAINT unq_for_fornecedor UNIQUE (for_nome)
);

CREATE  TABLE projeto.clt_cliente ( 
	clt_id int NOT NULL,
	clt_nome varchar(40) NOT NULL,
	clt_fil_id int NOT NULL,
	CONSTRAINT pk_clt_cliente PRIMARY KEY (clt_id)
);

CREATE  TABLE projeto.emp_empregado ( 
	emp_id int NOT NULL,
	emp_cpf char(11) NOT NULL,
	emp_p_nome varchar(20) NOT NULL,
	emp_sobrenome varchar(40) NOT NULL,
	emp_salario numeric(8,2) NOT NULL,
	emp_sexo char(1) NOT NULL,
	emp_fil_id int NOT NULL,
	CONSTRAINT unq_emp_empregado UNIQUE (emp_cpf) ,
	CONSTRAINT pk_emp_empregado PRIMARY KEY (emp_id),
    CONSTRAINT chk_emp_salario CHECK (emp_salario > 0),
    CONSTRAINT chk_emp_sexo CHECK (emp_sexo IN ('F', 'M', 'O'))
);

CREATE  TABLE projeto.ped_pedido ( 
	ped_emp_id int NOT NULL,
	ped_clt_id int NOT NULL,
	ped_vendas int NOT NULL,
	CONSTRAINT pk PRIMARY KEY (ped_emp_id, ped_clt_id)
);

CREATE  TABLE projeto.tel_telefone ( 
	tel_clt_telefone varchar(11) NOT NULL,
	tel_clt_id int NOT NULL,
	CONSTRAINT pk_tel_telefone PRIMARY KEY (tel_clt_telefone, tel_clt_id),
	CONSTRAINT unq_tel_telefone UNIQUE (tel_clt_telefone)
);

ALTER TABLE projeto.clt_cliente 
ADD CONSTRAINT fk_clt_cliente_fil_filial FOREIGN KEY (clt_fil_id) REFERENCES projeto.fil_filial(fil_id);

ALTER TABLE projeto.emp_empregado 
ADD CONSTRAINT fk_emp_empregado_fil_filial FOREIGN KEY (emp_fil_id) REFERENCES projeto.fil_filial(fil_id);

ALTER TABLE projeto.fil_filial 
ADD CONSTRAINT fk_fil_filial_reg_regiao FOREIGN KEY (fil_reg_id) REFERENCES projeto.reg_regiao(reg_id);

ALTER TABLE projeto.for_fornecedor 
ADD CONSTRAINT fk_for_fornecedor_fil_filial FOREIGN KEY (for_fil_id) REFERENCES projeto.fil_filial(fil_id);

ALTER TABLE projeto.ped_pedido 
ADD CONSTRAINT fk_ped_pedido_emp_empregado FOREIGN KEY (ped_emp_id) REFERENCES projeto.emp_empregado(emp_id);

ALTER TABLE projeto.ped_pedido 
ADD CONSTRAINT fk_ped_pedido_clt_cliente FOREIGN KEY (ped_clt_id) REFERENCES projeto.clt_cliente(clt_id);

ALTER TABLE projeto.tel_telefone 
ADD CONSTRAINT fk_tel_telefone_clt_cliente FOREIGN KEY (tel_clt_id) REFERENCES projeto.clt_cliente(clt_id);

