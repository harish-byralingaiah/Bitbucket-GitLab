create table loans
(
	id bigint unsigned auto_increment primary key,
	userid bigint unsigned not null,
	amount double not null,
	tenure bigint not null,
	status int(1) not null,
	updated_at timestamp default current_timestamp,
	created_at timestamp default current_timestamp,
	CONSTRAINT fk_loanusers FOREIGN KEY (userid) REFERENCES users(id)
);


create table loanrepayment
(
	id bigint unsigned auto_increment primary key,
	loanid bigint unsigned,
	principalamount double not null,
	interestamount double not null,
	totalpayable double not null,
	balance double not null,
	status int(1) not null default 0,
	updated_at timestamp default current_timestamp,
	created_at timestamp default current_timestamp,
	CONSTRAINT fk_loans FOREIGN KEY (loanid) REFERENCES loans(id)
	
)
