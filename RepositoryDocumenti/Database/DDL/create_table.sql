ALTER TABLE ente ADD COLUMN ente_riferimento VARCHAR(256) references ente(codice_aced);
alter table ente add column mensa_fk int references mensa(codice_mensa);

CREATE TABLE DIPENDENTE
(
	CODICE_DIPENDENTE SERIAL PRIMARY KEY,
	FOTO BYTEA,
	NOME VARCHAR(50) NOT NULL,
	COGNOME VARCHAR(50) NOT NULL,
	CODICE_FISCALE VARCHAR(16) NOT NULL,
	CMD VARCHAR(20) NOT NULL,
	MATRICOLA VARCHAR(20) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	TIPO_PERSONALE VARCHAR(2) NOT NULL,  -- (M, C, T)
	GRADO VARCHAR(50),
	ENTE_APPARTENENZA VARCHAR(6) REFERENCES ENTE(CODICE_ACED) NOT NULL,
	DATA_ASSUNZIONE_FORZA DATE NOT NULL,
	DATA_PERDITA_FORZA DATE NOT NULL,
	RUOLO_GIURIDICO VARCHAR(50),
	RUOLO_FUNZIONALE VARCHAR(50)
);

CREATE TABLE ORGANO_DIRETTIVO
(
	CODICE_ORGANO_DIRETTIVO SERIAL PRIMARY KEY,	
	DESCRIZIONE_ORGANO_DIRETTIVO VARCHAR(100) NOT NULL
);

CREATE TABLE RUOLO_MENSA
(
	CODICE_RUOLO_MENSA SERIAL PRIMARY KEY,
	DESCRIZIONE_RUOLO_MENSA VARCHAR(100)
);

CREATE TABLE ASS_DIPENDENTE_RUOLO
(
	ASS_DIPENDENTE_RUOLO_ID SERIAL PRIMARY KEY,
	DIPENDENTE_FK INT REFERENCES DIPENDENTE(CODICE_DIPENDENTE) NOT NULL,
	RUOLO_FK INT REFERENCES RUOLO_MENSA(CODICE_RUOLO_MENSA) NOT NULL,
	DATA_INIZIO_RUOLO DATE NOT NULL,
	DATA_FINE_RUOLO DATE NOT NULL,
	ORGANO_DIRETTIVO_FK INT REFERENCES ORGANO_DIRETTIVO(CODICE_ORGANO_DIRETTIVO),
	MENSA_FK INT REFERENCES MENSA(CODICE_MENSA),
	UNIQUE(DIPENDENTE_FK, RUOLO_FK)
);

CREATE TABLE TIPO_FORMA_VETTOVAGLIAMENTO
(
	CODICE_TIPO_FORMA_VETTOVAGLIAMENTO SERIAL PRIMARY KEY,
	DESCRIZIONE VARCHAR(200)
);

CREATE TABLE mensa (
	codice_mensa serial4 NOT NULL,
	descrizione_mensa varchar(100) NOT NULL,
	autorizzazione_sanitaria bytea NULL,
	numero_autorizzazione_sanitaria varchar(50) NULL,
	data_autorizzazione_sanitaria date NULL,
	aut_sanitaraia_rilasciata_da varchar(100) NULL,
	via varchar(50) NULL,
	numero_civico int4 NULL,
	cap varchar(5) NULL,
	citta varchar(50) NULL,
	telefono varchar(50) NULL,
	fax varchar(50) NULL,
	email varchar(50) NULL,
	provincia varchar(3) NULL,
	tipo_forma_vettovagliamento_fk int4 NULL,
	data_inizio_servizio date NULL,
	data_fine_servizio date NULL,
	ente_fk int4 NULL,
	servizio_festivo_sabato varchar(1) NULL,
	servizio_festivo_domenica varchar(1) NULL,
	CONSTRAINT mensa_pkey PRIMARY KEY (codice_mensa)
);

ALTER TABLE public.mensa ADD CONSTRAINT mensa_ente_fk_fkey FOREIGN KEY (ente_fk) REFERENCES ente(id_ente);
ALTER TABLE public.mensa ADD CONSTRAINT mensa_tipo_forma_vettovagliamento_fk_fkey FOREIGN KEY (tipo_forma_vettovagliamento_fk) REFERENCES tipo_forma_vettovagliamento(codice_tipo_forma_vettovagliamento);

CREATE TABLE TIPO_LOCALE(
	CODICE_TIPO_LOCALE SERIAL PRIMARY KEY,
	DESCRIZIONE_TIPO_LOCALE VARCHAR(200) NOT NULL
);

CREATE TABLE ASS_MENSA_TIPO_LOCALE
(
	ASS_MENSA_TIPO_LOCALE_ID SERIAL PRIMARY KEY,
	CODICE_MENSA_FK INT REFERENCES MENSA(CODICE_MENSA) NOT NULL,
	CODICE_TIPO_LOCALE_FK INT REFERENCES TIPO_LOCALE(CODICE_TIPO_LOCALE) NOT NULL,
	DATA_INIZIO DATE NOT NULL,
	DATA_FINE DATE NOT NULL,
	SUPERFICIE INT NOT NULL,
	NUMERO_LOCALI INT NOT NULL,
	NOTE VARCHAR(200)
);

CREATE TABLE TIPO_REPORT
(
	CODICE_TIPO_REPORT SERIAL PRIMARY KEY,
	DESCRIZIONE_TIPO_REPORT VARCHAR(100) NOT NULL
);

CREATE TABLE REPORT
(
	CODICE_REPORT VARCHAR(20) PRIMARY KEY,
	DESCRIZIONE_REPORT VARCHAR(200) NOT NULL,
	TIPO_REPORT_FK INT REFERENCES TIPO_REPORT(CODICE_TIPO_REPORT)
);

CREATE TABLE ASS_REPORT_RUOLO_MENSA
(
	ASS_REPORT_RUOLO_MENSA_ID SERIAL PRIMARY KEY,
	REPORT_FK VARCHAR(20) REFERENCES REPORT(CODICE_REPORT) NOT NULL,
	RUOLO_FK INT REFERENCES RUOLO_MENSA(CODICE_RUOLO_MENSA) NOT NULL,
	DATA_INIZIO DATE NOT NULL,
	DATA_FINE DATE NOT NULL,
	ORDINE_FIRMA INT NOT NULL 
);

CREATE TABLE TIPO_FREQUENZA_REPORT
(
	CODICE_TIPO_FREQUENZA_REPORT SERIAL PRIMARY KEY,
	DESCRIZIONE_TIPO_FREQUENZA_REPORT VARCHAR(100) NOT NULL -- (Annuale, Mensile, Settimanale, Giornaliero)
);

CREATE TABLE REPORT_INVIATO
(
	CODICE_REPORT_INVIATO SERIAL PRIMARY KEY,
	DATA_CREAZIONE DATE NOT NULL,
	DOCUMENTO_INVIATO BYTEA NOT NULL,
	DOCUMENTO_FIRMATO BYTEA,
	GIORNO_REPORT INT,
	MESE_REPORT INT, 
	SETTIMANA_REPORT INT,
	ANNO_REPORT INT,
	REPORT_FK VARCHAR(20) REFERENCES REPORT(CODICE_REPORT) NOT NULL,
	TIPO_FREQUENZA_REPORT_FK INT REFERENCES TIPO_FREQUENZA_REPORT(CODICE_TIPO_FREQUENZA_REPORT) NOT NULL
);

CREATE TABLE STATO_REPORT
(
	CODICE_STATO_REPORT SERIAL PRIMARY KEY,
	DESCRIZIONE_STATO_REPORT VARCHAR(100)  NOT NULL -- (Inviato in firma, firmato)
);

CREATE TABLE ASS_REP_INVIATI_DIP_STATO_REP
(
	ASS_REP_INVIATI_DIP_STATO_REP_ID SERIAL PRIMARY KEY,
	DIPENDENTE_FK INT REFERENCES DIPENDENTE(CODICE_DIPENDENTE) NOT NULL,
	REPORT_INVIATO_FK INT REFERENCES REPORT_INVIATO(CODICE_REPORT_INVIATO) NOT NULL,
	STATO_REPORT_FK INT REFERENCES STATO_REPORT(CODICE_STATO_REPORT) NOT NULL,
	DATA_FIRMA TIMESTAMP
);


CREATE TABLE TIPO_DERRATE
(
	CODICE SERIAL PRIMARY KEY,
	DESCRIZIONE VARCHAR(256) NOT NULL -- Fresco / Carne / Congelati / Scatolati /Bevande
);

CREATE TABLE DERRATA
(
	DERRATA_ID SERIAL,
	DESCRIZIONE_DERRATA VARCHAR(256) NOT NULL,
	UNITA_MISURA VARCHAR(5),
	PREZZO DECIMAL(10,2),
	GIACENZA INT,
	DATA_AGGIORNAMENTO_GIACENZA TIMESTAMP,
	QUANTITA_MIMINA INT,
	CODICE_MENSA INT,
	TIPO_DERRATA INT REFERENCES TIPO_DERRATE(CODICE),
	PRIMARY KEY(DERRATA_ID)

);

CREATE TABLE PRELEVAMENTO_MENSA
(
	NUMERO_BUONO SERIAL PRIMARY KEY,
	DATA_PRELEVAMENTO_MENSA TIMESTAMP
);

CREATE TABLE dettaglio_prelevamento (
	numero_buono int4 NOT NULL,
	data_dettaglio_prelevamento timestamp NULL,
	derrata int4 NULL,
	quantita int4 NULL,
	dettaglio_prelevamento_id serial4 NOT NULL,
	CONSTRAINT dettaglio_prelevamento_pkey PRIMARY KEY (dettaglio_prelevamento_id)
);

ALTER TABLE dettaglio_prelevamento ADD CONSTRAINT dettaglio_prelevamento_derrata_fkey FOREIGN KEY (derrata) REFERENCES derrata(derrata_id);
ALTER TABLE dettaglio_prelevamento ADD CONSTRAINT dettaglio_prelevamento_numero_buono_fkey FOREIGN KEY (numero_buono) REFERENCES prelevamento_mensa(numero_buono);

CREATE TABLE TIPO_MOVIMENTO
(
	CODICE SERIAL PRIMARY KEY,
	TIPO_DESCRIZIONE VARCHAR(256), -- PRELEVAMENTO/APPROVIGIONAMENTO/GIACENZA
	SEGNO VARCHAR(1)
);

CREATE TABLE ente (
	codice_aced varchar(256) NOT NULL,
	ente_riferimento int4 NULL,
	descrizione_ente varchar(256) NULL,
	id_ente serial4 NOT NULL,
	indirizzo varchar(50) NULL,
	localita varchar(50) NULL,
	CONSTRAINT ente_pkey PRIMARY KEY (id_ente),
	CONSTRAINT ente_fk FOREIGN KEY (ente_riferimento) REFERENCES ente(id_ente)
);

CREATE TABLE FORNITORE
(
	CODICE SERIAL PRIMARY KEY,
	DESCRIZIONE VARCHAR(256) NOT NULL
);

CREATE TABLE testata_movimento 
(
	numero_progressivo serial4 NOT NULL,
	data_testata_movimento timestamp NULL,
	tipo_movimento int4 NULL,
	codice_fornitore int4 NULL,
	codice_ente int4 NULL,
	num_ordine_lavoro int4 NULL,
	nota varchar(256) NULL,
	totale_importo numeric(10, 2) NULL,
	utente_operatore varchar(256) NULL,
	CONSTRAINT testata_movimento_pkey PRIMARY KEY (numero_progressivo)
);

ALTER TABLE public.testata_movimento ADD CONSTRAINT ente_fk FOREIGN KEY (codice_ente) REFERENCES ente(id_ente);
ALTER TABLE public.testata_movimento ADD CONSTRAINT testata_movimento_codice_fornitore_fkey FOREIGN KEY (codice_fornitore) REFERENCES fornitore(codice);
ALTER TABLE public.testata_movimento ADD CONSTRAINT testata_movimento_tipo_movimento_fkey FOREIGN KEY (tipo_movimento) REFERENCES tipo_movimento(codice);

CREATE TABLE DETTAGLIO_MOVIMENTO
(
	ID_DETTAGLIO_MOVIMENTO SERIAL PRIMARY KEY,
	NUM_PROGRESSIVO INT NOT NULL REFERENCES TESTATA_MOVIMENTO(NUMERO_PROGRESSIVO),
	DATA_DETTAGLIO_MOVIMENTO TIMESTAMP,
	DERRATA INT REFERENCES DERRATA(DERRATA_ID),
	QUANTITA_RICHIESTA DECIMAL(5,2),
	QUANTITA_EFFETTIVA DECIMAL(5,2),
	PREZZO_UNITARIO DECIMAL(5,2),
	TOTALE_VALORE DECIMAL (5,2)
);

CREATE TABLE tipo_pasto (
	codice_tipo_pasto serial4 NOT NULL,
	descrizione varchar(50) NULL,
	CONSTRAINT tipo_pasto_pkey PRIMARY KEY (codice_tipo_pasto)
);

CREATE TABLE ass_tipo_pasto_mensa (
	ass_tipo_pasto_mensa_id serial4 NOT NULL,
	codice_mensa_fk int4 NOT NULL,
	codice_tipo_pasto_fk int4 NOT NULL,
	orario_dal time NULL,
	CONSTRAINT ass_tipo_pasto_mensa_pkey PRIMARY KEY (ass_tipo_pasto_mensa_id)
);

ALTER TABLE public.ass_tipo_pasto_mensa ADD CONSTRAINT ass_tipo_pasto_mensa_codice_mensa_fk_fkey FOREIGN KEY (codice_mensa_fk) REFERENCES mensa(codice_mensa);
ALTER TABLE public.ass_tipo_pasto_mensa ADD CONSTRAINT ass_tipo_pasto_mensa_codice_tipo_pasto_fk_fkey FOREIGN KEY (codice_tipo_pasto_fk) REFERENCES tipo_pasto(codice_tipo_pasto);

CREATE TABLE servizio_evento (
	id_servizio_evento serial4 NOT NULL,
	data_servizio_evento date NULL,
	descrizione_servizio_evento varchar(50) NULL,
	mensa_fk int4 NULL,
	CONSTRAINT servizio_evento_pkey PRIMARY KEY (id_servizio_evento)
);

ALTER TABLE public.servizio_evento ADD CONSTRAINT servizio_evento_mensa_fk_fkey FOREIGN KEY (mensa_fk) REFERENCES mensa(codice_mensa);

-- prenotazioni

create table IDENTIFICATIVO_SISTEMA
(
	ID_SISTEMA varchar(20) primary key,
	DESCRIZIONE_SISTEMA VARCHAR(50)
);

create table TIPO_DIETA
(
ID_TIPO_DIETA SERIAL primary KEY,
DESCRIZIONEE_TIPO_DIETA VARCHAR(50)
);

CREATE TABLE tipo_razione (
	id_tipo_razione varchar(1) NOT NULL DEFAULT nextval('tipo_razione_id_tipo_razione_seq'::regclass),
	descrizione_tipo_razione varchar(50) NULL,
	CONSTRAINT tipo_razione_pkey PRIMARY KEY (id_tipo_razione)
);

create table ASS_MENSA_TIPO_DIETA
(
ID_ASS_MENSA_TIPO_DIETA SERIAL primary key,
MENSA_FK INT references MENSA(CODICE_MENSA),
TIPO_DIETA_FK INT references TIPO_DIETA(ID_TIPO_DIETA)
);

CREATE TABLE prenotazione (
	id_prenotazione serial4 NOT NULL,
	identificativo_sistema_fk varchar(20) NOT NULL,
	ente_fk int4 NOT NULL,
	data_prenotazione date NOT NULL,
	codice_fiscale varchar(16) NOT NULL,
	tipo_pasto_fk int4 NOT NULL,
	flag_cestino varchar(1) NOT NULL,
	tipo_dieta_fk int4 NOT NULL,
	tipo_razione_fk varchar(1) NOT NULL,
	CONSTRAINT prenotazione_pkey PRIMARY KEY (id_prenotazione)
);

ALTER TABLE public.prenotazione ADD CONSTRAINT prenotazione_ente_fk_fkey FOREIGN KEY (ente_fk) REFERENCES ente(id_ente);
ALTER TABLE public.prenotazione ADD CONSTRAINT prenotazione_identificativo_sistema_fk_fkey FOREIGN KEY (identificativo_sistema_fk) REFERENCES identificativo_sistema(id_sistema);
ALTER TABLE public.prenotazione ADD CONSTRAINT prenotazione_tipo_dieta_fk_fkey FOREIGN KEY (tipo_dieta_fk) REFERENCES tipo_dieta(id_tipo_dieta);
ALTER TABLE public.prenotazione ADD CONSTRAINT prenotazione_tipo_pasto_fk_fkey FOREIGN KEY (tipo_pasto_fk) REFERENCES tipo_pasto(codice_tipo_pasto);
ALTER TABLE public.prenotazione ADD CONSTRAINT prenotazione_tipo_razione_fk FOREIGN KEY (tipo_razione_fk) REFERENCES tipo_razione(id_tipo_razione);

