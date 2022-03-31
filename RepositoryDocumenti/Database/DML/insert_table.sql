
INSERT INTO organo_direttivo (descrizione_organo_direttivo) VALUES('Organo direttivo 1');
INSERT INTO organo_direttivo (descrizione_organo_direttivo) VALUES('Organo direttivo 2');
INSERT INTO organo_direttivo (descrizione_organo_direttivo) VALUES('Organo direttivo 3');

INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo servizio commissariato');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Commissariato');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Ufficiale Addetto ai servizi di Commissariato');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Sottufficiale addetto al vettovagliamento');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Gestore');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo segreteria');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Rappresentante della ditta appaltatrice');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo Ufficio Maggiorità e Personale');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Comandante di Corpo');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo Gestione Patrimoniale');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo Servizio amministrativo');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Capo Sezione Coordinamento Amministrativo');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Presidente della commissione amministrativa');
INSERT INTO ruolo_mensa (descrizione_ruolo_mensa) VALUES('Aiutante gestore');

INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Spogliatoio');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Refettorio');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Punto cottura');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Lavaggio stoviglie');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Servizio igienico');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Cella frigorifera');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Punto distribuzione');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Magazzino');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Altra pertinenza');
INSERT INTO tipo_locale (descrizione_tipo_locale) VALUES('Superficie vetrata');

INSERT INTO stato_report (descrizione_stato_report) VALUES('Inviato in firma');
INSERT INTO stato_report (descrizione_stato_report) VALUES('Firmato');

INSERT INTO tipo_frequenza_report (descrizione_tipo_frequenza_report) VALUES('Annuale');
INSERT INTO tipo_frequenza_report (descrizione_tipo_frequenza_report) VALUES('Mensile');
INSERT INTO tipo_frequenza_report (descrizione_tipo_frequenza_report) VALUES('Settimanale');
INSERT INTO tipo_frequenza_report (descrizione_tipo_frequenza_report) VALUES('Giornaliero');

INSERT INTO tipo_report (descrizione_tipo_record) VALUES('Mensa');
INSERT INTO tipo_report (descrizione_tipo_record) VALUES('Magazzino viveri');

INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC1', 'Report consumati e prenotati', 1);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC2', 'Report ingressi mensa meridiano', 1);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC3', 'Prospetto calcolo coefficiente di determinazione  percentuale  riduzione presenze pasto serale', 1);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC4', 'Report consumati ee prenotati mensile', 1);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC5', 'Registro Giornale di Magazzino', 2);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC6', 'Richiesta di movimento CM/123', 2);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC7', 'Registro di carico e scarico delle derrate', 2);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC8', 'Buono di prelevamento definitivo della mensa', 2);
INSERT INTO report (codice_report, descrizione_report, tipo_report_fk) VALUES('DC9', 'Prospetto riepilogativo della gestione mensa: documento di controllo andamento gestionale del servizio', 1);

--select codice_tipo_report from tipo_report where descrizione_tipo_report = 'Mensa'
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(NULL, 'Giuseppe', 'Garibaldi', 'GRBGSP09R15H501Y', '0000000000ASDFGHJKLZ', '0123456789', 'g.garibaldi@storia.it', 'M', 'Generale', '1', '2018-01-01', '9999-12-31', NULL, NULL);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(NULL, 'Giacomo', 'Leopardi', 'LPDGCM09R15H501Y', '1111111111ASDFGHJKLZ', '1111111111', 'g.leopardi@storia.it', 'C', 'Soldato semplice', '2', '2019-01-01', '9999-12-31', NULL, NULL);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(NULL, 'Alessandro', 'Manzoni', 'MNZLSS09R15H501Y', '2222222222ASDFGHJKLZ', '2222222222', 'a.manzoni@storia.it', 'T', 'Caporal maggiore', '3', '2020-01-01', '9999-12-31', NULL, NULL);

INSERT INTO tipo_forma_vettovagliamento (descrizione) VALUES('Gestione diretta');
INSERT INTO tipo_forma_vettovagliamento (descrizione) VALUES('Gestione mista');
INSERT INTO tipo_forma_vettovagliamento (descrizione) VALUES('Gestione indiretta');


INSERT INTO TIPO_DERRATE (DESCRIZIONE) VALUES ('Fresco');
INSERT INTO TIPO_DERRATE (DESCRIZIONE) VALUES ('Carne');
INSERT INTO TIPO_DERRATE (DESCRIZIONE) VALUES ('Congelati');
INSERT INTO TIPO_DERRATE (DESCRIZIONE) VALUES ('Scatolati');
INSERT INTO TIPO_DERRATE (DESCRIZIONE) VALUES ('Bevande');

INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Bieta', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Spinaci', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Pomodori', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Carote', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Melanzane', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Peperoni', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Zucchine', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Insalata', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Latte', 'Lt', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Cipolle', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 1);

INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Fettine vitello', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 2);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Spezzatino manzo', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 2);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Braciole Maiale', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 2);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Macinato vitello', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 2);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Salsicce maiale', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 2);

INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Piselli', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 3);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Nasello', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 3);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Merluzzo', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 3);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Fave', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 3);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Minestrone', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 3);

INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ( 'Fagioli', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 4);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Lenticchie', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 4);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Mais', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 4);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Tonno', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 4);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Ceci', 'Kg', 1.5, 5, CURRENT_TIMESTAMP, 1, 1, 4);

INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Acqua naturale', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Acqua frizzante', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Coca Cola', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Aranciata', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Sprite', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Te'' al limone', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Te'' alla pesca', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Chinotto', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Limonata', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);
INSERT INTO DERRATA (DESCRIZIONE_DERRATA, UNITA_MISURA, PREZZO, GIACENZA, DATA_AGGIORNAMENTO_GIACENZA, QUANTITA_MIMINA, CODICE_MENSA, TIPO_DERRATA) values ('Succo di frutta alla pera', 'Lt', 1.5, 20, CURRENT_TIMESTAMP, 1, 1, 5);

INSERT INTO PREVEVAMENTO_MENSA(DATA_PRELEVAMENTO_MENSA) VALUES (CURRENT_TIMESTAMP); -- ESEGUIRE TRE VOLTE

INSERT INTO DETTAGLIO_PRELEVAMENTO(NUMERO_BUONO, DATA_DETTAGLIO_PRELEVAMENTO, DERRATA, QUANTITA) VALUES (1, CURRENT_TIMESTAMP, 11, 1);
INSERT INTO DETTAGLIO_PRELEVAMENTO(NUMERO_BUONO, DATA_DETTAGLIO_PRELEVAMENTO, DERRATA, QUANTITA) VALUES (2, CURRENT_TIMESTAMP, 21, 2);
INSERT INTO DETTAGLIO_PRELEVAMENTO(NUMERO_BUONO, DATA_DETTAGLIO_PRELEVAMENTO, DERRATA, QUANTITA) VALUES (3, CURRENT_TIMESTAMP, 26, 3);

INSERT INTO TIPO_MOVIMENTO(TIPO_DESCRIZIONE, SEGNO) VALUES ('Prelevamento', '-');
INSERT INTO TIPO_MOVIMENTO(TIPO_DESCRIZIONE, SEGNO) VALUES ('Approvigionamento', '+');
INSERT INTO TIPO_MOVIMENTO(TIPO_DESCRIZIONE, SEGNO) VALUES ('Giacenza', '+');

INSERT INTO ENTE VALUES('1');
INSERT INTO ENTE VALUES('2');
INSERT INTO ENTE VALUES('3');

INSERT INTO FORNITORE(DESCRIZIONE) VALUES('Fornitore 1');
INSERT INTO FORNITORE(DESCRIZIONE) VALUES('Fornitore 2');
INSERT INTO FORNITORE(DESCRIZIONE) VALUES('Fornitore 3');

ALTER TABLE DETTAGLIO_MOVIMENTO
  RENAME COLUMN DATA TO DATA_DETTAGLIO_MOVIMENTO;

INSERT INTO TESTATA_MOVIMENTO(DATA, TIPO_MOVIMENTO, CODICE_FORNITORE, CODICE_ENTE, NUM_ORDINE_LAVORO, NOTA, TOTALE_IMPORTO, UTENTE_OPERATORE)
VALUES (CURRENT_TIMESTAMP, 1, 1, 1, 1, 'Nota', 1.5, 'Utente');

INSERT INTO DETTAGLIO_MOVIMENTO(NUM_PROGRESSIVO,DATA_DETTAGLIO_MOVIMENTO, DERRATA, QUANTITA_RICHIESTA, QUANTITA_EFFETTIVA, PREZZO_UNITARIO, TOTALE_VALORE)
VALUES (1, CURRENT_TIMESTAMP, 28, 1, 1, 1.5, 1.5);

INSERT INTO ass_tipo_pasto_mensa (codice_mensa_fk, codice_tipo_pasto_fk) VALUES(55, 1);
INSERT INTO ass_tipo_pasto_mensa (codice_mensa_fk, codice_tipo_pasto_fk) VALUES(55, 2);
INSERT INTO ass_tipo_pasto_mensa (codice_mensa_fk, codice_tipo_pasto_fk) VALUES(55, 3);
INSERT INTO ass_tipo_pasto_mensa (codice_mensa_fk, codice_tipo_pasto_fk) VALUES(56, 2);

INSERT INTO tipo_pasto (descrizione) VALUES('Colazione');
INSERT INTO tipo_pasto (descrizione) VALUES('Pranzo');
INSERT INTO tipo_pasto (descrizione) VALUES('Cena');
INSERT INTO tipo_pasto (descrizione) VALUES('Cestino');

INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Margeaux', 'Joiner', 'NWKMVEXDPAXBOSGQ', 'VHFGOUCFKE', 'MGS6IHRBFS', 'mjoiner0@redcross.org', 'M', 'Tenente', 2, '2019-11-18', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Claresta', 'Sprake', 'R5ITNCVATH3JAXMM', 'F9J1F0LUK0', 'TBSTIUUHUA', 'csprake1@wikipedia.org', 'C', 'null', 3, '2019-02-14', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Ingaborg', 'Livermore', 'FFECFWZBGEWQF31C', 'WM76CL6J1S', 'BG0MKM8RMO', 'ilivermore2@1688.com', 'C', 'null', 1, '2020-08-24', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Chiquita', 'Dunstan', '1QOOQQXOK9KKEZIL', 'DMVRR7HXYW', 'BOALTLP9E8', 'cdunstan3@prlog.org', 'C', 'null', 2, '2020-06-18', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Dulcy', 'Botterell', 'MY5IFAVBTJD39CXJ', 'APNDHZWHIY', 'T15O3R3NKY', 'dbotterell4@istockphoto.com', 'M', 'Sottotenente', 1, '2019-02-11', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Burnaby', 'Flieger', 'FEYFRWX55UR2F4MH', 'N60L1XXCUU', 'BEJZNSUSPC', 'bflieger5@360.cn', 'C', 'null', 3, '2021-10-19', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Nataline', 'Birkbeck', 'GOXXYIWR3LN9XSZ1', 'XUKAW77SZM', 'QWZDJJNVEX', 'nbirkbeck6@theatlantic.com', 'M', 'Tenente', 2, '2019-11-18', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Valina', 'Tirone', 'MLZLNKRKDK3MRSGO', 'TM9KZE2PA4', 'NTGSDWXUWH', 'vtirone7@businesswire.com', 'C', 'null', 1, '2021-03-28', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Aloise', 'Kivlehan', 'MDWM8VBLAWZCVN8W', 'JO3RNZEJKJ', 'SPG2EMWL8N', 'akivlehan8@printfriendly.com', 'C', 'null', 3, '2019-10-20', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Tate', 'Rossiter', 'KAFP9RZ7LGQ5VRAC', 'AKIMGZFFEV', '2L6ZVA2DPV', 'trossiter9@google.it', 'M', 'Capitano', 3, '2019-01-27', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Thorn', 'Gostall', 'O5H1QE9LNNPAMOUE', 'KOIKPF7U3A', 'MCFKE6LV3S', 'tgostalla@tamu.edu', 'C', 'null', 3, '2020-07-25', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Freddy', 'Badcock', 'OLPA7BF88DGEC0DL', 'TOISBIINZT', 'IWAR8ICAOW', 'fbadcockb@ucoz.com', 'C', 'null', 1, '2020-06-14', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Karol', 'Wollard', 'YXN0RZ2HUZJGHIQL', 'ICOFELE1TQ', 'XLKWDZYEFA', 'kwollardc@woothemes.com', 'C', 'null', 1, '2021-01-15', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Benjie', 'Smye', 'L8978FDLGVXJ2LSI', 'B7Z8QIPN7H', 'TTALDGEIHC', 'bsmyed@netscape.com', 'M', 'Sottotenente', 1, '2019-06-13', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Justine', 'Alldread', 'HH9GSVTAUHGLFDQC', '5FKN3TGTAD', 'Y0SLWDFUHN', 'jalldreade@berkeley.edu', 'M', 'Capitano', 2, '2019-12-31', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Ariana', 'Noury', 'POM5QGCVD9B17I78', '5QDSSTCXLI', 'FSSVLVDBBN', 'anouryf@istockphoto.com', 'C', 'null', 1, '2020-01-21', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Vanda', 'Stockney', 'JVVDSZD4BQKPSGUS', 'IJJ2CXEKEE', 'BALY14BDPJ', 'vstockneyg@craigslist.org', 'C', 'null', 1, '2021-01-04', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Arney', 'Beeze', 'LLGDTVH4NQKROPT2', 'PNZCRZZMVY', 'TAUFJ0LJM1', 'abeezeh@ustream.tv', 'M', 'Caporal maggiore', 2, '2020-05-23', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Fee', 'Bourgaize', 'S9OBEUDB03NWRZ2O', 'VSSBX3OW0S', 'LJIBXDYJSV', 'fbourgaizei@fda.gov', 'M', 'Capitano', 1, '2019-11-25', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Bessie', 'Camies', 'IEYNV6T8KIWLVFJV', 'LJX9ECQHRA', 'F4LVOBRVP2', 'bcamiesj@aboutads.info', 'C', 'null', 3, '2021-03-16', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Garrott', 'Newbery', 'OJ0O3OCMQGAZOBZU', '2RGCDVZFXT', 'VIABSA9TTE', 'gnewberyk@tripadvisor.com', 'M', 'Sottotenente', 1, '2021-12-20', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Lucina', 'Tideswell', 'YQDO7NBQ8S7DNXHF', 'N2DAGAODLI', 'YLHLSC57IG', 'ltideswelll@exblog.jp', 'C', 'null', 2, '2019-06-28', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Daffy', 'Berget', 'OHMJAZX98PXKHPJJ', 'HG5IXIOGTF', '0LT2TETTRA', 'dbergetm@lulu.com', 'C', 'null', 2, '2020-05-20', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Teriann', 'Wordley', 'AHJAXNC2LOSFUV7G', 'NR6VUQDWAH', 'ROAAOU11IL', 'twordleyn@tuttocitta.it', 'C', 'null', 1, '2019-06-17', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Abdul', 'Manketell', 'MXORBJJYMRS31YNW', 'RCBLSWHOCB', 'ZXPFBGBJLE', 'amanketello@comsenz.com', 'M', 'Caporal maggiore', 2, '2019-10-30', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Janeta', 'Sackur', 'VS9ELCEFRRFGNEDA', 'YNWZ1FO2D6', 'Q7MKCKDWM4', 'jsackurp@deliciousdays.com', 'C', 'null', 3, '2021-03-28', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Nancie', 'Panswick', 'TDUB400CPKFMKXKS', 'KSB33W9BMW', 'SLSR5L5YHG', 'npanswickq@nytimes.com', 'M', 'Capitano', 2, '2021-10-05', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Cori', 'Savile', 'XGVYFVS19EBCBDLL', 'PRH1ARW5EK', '9QBAKLG8DG', 'csaviler@patch.com', 'C', 'null', 2, '2019-10-04', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Yvor', 'Dudek', 'DHSAJW7PNRPKZZRL', 'CEGUA3KJ6Z', 'PIEZVD1X2N', 'ydudeks@de.vu', 'C', 'null', 1, '2019-12-23', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Beth', 'Schimke', 'K9Y73RJYZ8EVRNTD', 'ZIED2H1L9V', 'VDBSU3GRKR', 'bschimket@usnews.com', 'C', 'null', 3, '2020-09-16', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Joannes', 'Caesmans', 'IFHBOUGJYTG5Q50M', 'KWP6DGHYDX', 'EEMYOLCZ7V', 'jcaesmansu@indiatimes.com', 'M', 'Capitano', 2, '2019-11-15', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Brockie', 'Hardson', 'V2NZKWSN7PF6JJJO', 'KMAGIIT97R', 'RUHXVL684U', 'bhardsonv@answers.com', 'M', 'Sottotenente', 3, '2019-06-21', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Garold', 'Erdely', 'ZXGE7F79WBQA3GAV', 'AVNDO9XZUW', '9KVWQMNE8A', 'gerdelyw@acquirethisname.com', 'M', 'Capitano', 3, '2021-09-21', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Gertruda', 'Jopp', 'SCDLLBSENWHF7W1O', 'TKRNPQF6TR', 'YYJUZORTA4', 'gjoppx@wikia.com', 'M', 'Tenente', 2, '2021-08-01', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Lucila', 'Woodroffe', 'DRZC1IPTY9NJWKWK', 'LFIJXFRZIG', '8NUVHV4TM0', 'lwoodroffey@cafepress.com', 'C', 'null', 3, '2019-07-28', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Rossie', 'Benedidick', 'P3LP2EMZKGV28U87', 'NFNZPYKTSD', '8Z9UZGDV2Y', 'rbenedidickz@tinyurl.com', 'C', 'null', 2, '2020-03-25', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Floyd', 'Muris', 'HQOJFIYQHUE4SGE8', 'FQWMPUTDZZ', 'JRGK4UNJ6K', 'fmuris10@reverbnation.com', 'C', 'null', 1, '2019-02-05', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Karoly', 'Dodgshon', 'QBTDNNUSITLPSQNO', 'EB7D3IH53D', 'OVLCNDLYFS', 'kdodgshon11@shutterfly.com', 'M', 'Caporale', 3, '2021-04-27', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Libby', 'Goane', 'E7J4TNRUNFSGK2MA', '630AWRKGM3', 'ELLNU02YHI', 'lgoane12@usnews.com', 'M', 'Tenente', 2, '2019-03-22', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Kaitlin', 'Ginnally', 'MDH3MKN6H2NOZN63', 'X5Y9P6KPSB', 'INRNX6THEH', 'kginnally13@timesonline.co.uk', 'C', 'null', 1, '2019-08-09', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Base', 'Soan', 'SHEBJPEEOA6GAEMA', 'I1GAY5NAUK', '0C0BGNT5SB', 'bsoan14@npr.org', 'M', 'Caporal maggiore', 3, '2019-11-08', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Lothario', 'Carlozzi', 'KQWKULATEYNYUA8I', 'INMMANFDVQ', 'QXQMNWZSIT', 'lcarlozzi15@yellowbook.com', 'C', 'null', 2, '2020-05-19', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Laural', 'Glasebrook', '0VD6W78ANTYEOABQ', 'BQRLVV46NM', 'OQFYA1DZDC', 'lglasebrook16@list-manage.com', 'M', 'Caporal maggiore', 1, '2021-11-04', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Barret', 'Beasleigh', 'NBAEJGN4LHUGGCIK', 'LR9NRG4IEZ', 'GUTK0S52TU', 'bbeasleigh17@digg.com', 'M', 'Sottotenente', 3, '2019-09-02', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Melvin', 'Gavigan', 'AHETGGRZULRCB1BB', 'N7SYQN2ANG', 'RSU360MO0G', 'mgavigan18@netlog.com', 'C', 'null', 3, '2019-12-15', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Regina', 'Pranger', 'JDL3UQKOJGNIHM5V', 'EAYHBEAQEW', 'G5Y88COHAM', 'rpranger19@quantcast.com', 'C', 'null', 1, '2019-06-10', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Yvette', 'Chivers', 'N03CI31VVMHMFCO7', 'UKXUXDRTP5', 'U5CCLOACZP', 'ychivers1a@miibeian.gov.cn', 'M', 'Caporal maggiore', 1, '2020-03-27', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Reynolds', 'Blackah', '1IAZ5VQTCRAS6XV2', 'TES0UTJWBS', 'NRSKREQWSO', 'rblackah1b@usa.gov', 'C', 'null', 3, '2020-09-10', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Veradis', 'Jado', 'GELIGKDGXVNO8L2F', 'NGTU4L86HY', 'I7KZZEPNTW', 'vjado1c@phpbb.com', 'C', 'null', 1, '2020-05-26', '9999-12-31', null, null);
INSERT INTO dipendente (foto, nome, cognome, codice_fiscale, cmd, matricola, email, tipo_personale, grado, ente_appartenenza, data_assunzione_forza, data_perdita_forza, ruolo_giuridico, ruolo_funzionale) VALUES(null, 'Dalis', 'Gritland', 'MQE375BEP3FWYWUN', '6ZR5GETB9P', 'RXDUERRXQE', 'dgritland1d@uol.com.br', 'M', 'Capitano', 3, '2019-01-03', '9999-12-31', null, null);

-- prenotazioni
INSERT INTO identificativo_sistema (id_sistema, descrizione_sistema) VALUES('GPS', 'GoPers');
INSERT INTO identificativo_sistema (id_sistema, descrizione_sistema) VALUES('PSR', 'Perseo');
INSERT INTO identificativo_sistema (id_sistema, descrizione_sistema) VALUES('SGL', 'Sigil');

INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Normale');
INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Per dettami religiosi');
INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Per patologie');
INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Per degenti leggera');
INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Per degenti media');
INSERT INTO tipo_dieta (descrizione_tipo_dieta) VALUES('Per degenti pesante');

INSERT INTO tipo_razione (id_tipo_razione, descrizione_tipo_razione) VALUES('O', 'Ordinaria');
INSERT INTO tipo_razione (id_tipo_razione, descrizione_tipo_razione) VALUES('M', 'Media');
INSERT INTO tipo_razione (id_tipo_razione, descrizione_tipo_razione) VALUES('P', 'Pesante');
INSERT INTO tipo_razione (id_tipo_razione, descrizione_tipo_razione) VALUES('C', 'Combattimento (CBT)');