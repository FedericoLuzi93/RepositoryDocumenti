-- DC1 PASTI PRENOTATI 
select
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_COL_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_COL_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_COL_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_personale = 'M') then 1 else 0 end ) as CBT_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_COL_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_PRA_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_CEN_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_COL_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_PRA_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_CEN_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_COL_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_PRA_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_CEN_TG,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as CBT_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_COL_TO,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_PRA_TO,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_CEN_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_COL_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_PRA_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_CEN_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_COL_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_PRA_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_CEN_TO,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as CBT_TO,
sum(case when p.specchio_flag = 'Y' and p.tipo_personale = 'M' then 1 else 0 end) SPECCHIO_MIL,
sum(case when p.col_obbligatoria_flag  = 'Y' and p.tipo_personale = 'M' then 1 else 0 end) COL_OBBL_MIL,
sum(case when p.specchio_flag = 'Y' and p.tipo_pagamento_fk = 'TG' then 1 else 0 end) SPECCHIO_TG,
sum(case when p.col_obbligatoria_flag  = 'Y' and p.tipo_pagamento_fk = 'TG' then 1 else 0 end) COL_OBBL_TG,
sum(case when p.specchio_flag = 'Y' and p.tipo_pagamento_fk = 'TO' then 1 else 0 end) SPECCHIO_TO,
sum(case when p.col_obbligatoria_flag  = 'Y' and p.tipo_pagamento_fk = 'TO' then 1 else 0 end) COL_OBBL_TO
from prenotazione p left join mensa m on p.identificativo_mensa_fk = m.codice_mensa
where m.ente_fk = 3 and p.data_prenotazione = '2022-03-04' and p.identificativo_sistema_fk = 'GPS'

-- DC1 PASTI CONSUMATI 
select
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_COL_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as ORD_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_COL_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as MED_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_COL_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_PRA_MIL,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_personale = 'M') then 1 else 0 end ) as PES_CEN_MIL,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_personale = 'M') then 1 else 0 end ) as CBT_MIL,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_COL_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_PRA_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as ORD_CEN_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_COL_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_PRA_TG,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as MED_CEN_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_COL_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_PRA_TG,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as PES_CEN_TG,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_pagamento_fk = 'TG') then 1 else 0 end ) as CBT_TG,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_COL_TO,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_PRA_TO,
sum(case when (p.tipo_razione_fk = 'O' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as ORD_CEN_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_COL_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_PRA_TO,
sum(case when (p.tipo_razione_fk = 'M' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as MED_CEN_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 1 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_COL_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 2 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_PRA_TO,
sum(case when (p.tipo_razione_fk = 'P' and p.tipo_pasto_fk = 3 and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as PES_CEN_TO,
sum(case when (p.tipo_razione_fk = 'C' and p.tipo_pagamento_fk = 'TO') then 1 else 0 end ) as CBT_TO
from pasti_consumati p left join mensa m on p.mensa_fk  = m.codice_mensa
where m.ente_fk = 3 and p.data_pasto  = '2022-03-15' AND identificativo_sistema_fk = 'GPS'

-- DC1 Prenotazioni di tipo nominativo tab1
select
p.identificativo_sistema_fk,
sum(case when p.tipo_grado_fk = 'UF' and p.flag_cestino = 'N' then 1 else 0 end) as UFFICIALI,
sum(case when p.tipo_grado_fk = 'SU' and p.flag_cestino = 'N' then 1 else 0 end) as SOTTO_UFFICIALI,
sum(case when p.tipo_grado_fk = 'GT' and p.flag_cestino = 'N' then 1 else 0 end) as GRADUATI_TRUPPA,
sum(case when (p.tipo_personale = 'C' or p.tipo_personale is null) and p.flag_cestino = 'N' then 1 else 0 end) as CIVILI,
SUM(case when p.flag_cestino = 'Y' then 1 else 0 end) as cestini,
count(*) as totale
from prenotazione p left join mensa m on p.identificativo_mensa_fk = m.codice_mensa
where p.data_prenotazione = '2022-03-15' and m.ente_fk = 3 and p.tipo_pasto_fk = 2 AND identificativo_sistema_fk = 'GPS'
group by p.identificativo_sistema_fk

-- DC1 Prenotazioni di tipo nominativo tab2
select
e.descrizione_ente,
p.denominazione_unita_funzionale,
case when p.tipo_pagamento_fk = 'TO' then 'Titolo oneroso' else 'Titolo gratuito' end,
g.descr_grado,
p.nome,
p.cognome,
case when tipo_personale is null then 'SI' else 'NO' end esterno
from prenotazione p left join mensa m on p.identificativo_mensa_fk = m.codice_mensa
left join ente e on e.id_ente = m.ente_fk
left join grado g on g.shsgra_cod_uid_pk = p.grado_fk
where p.data_prenotazione = '2022-03-15' and m.ente_fk = 3 and p.identificativo_sistema_fk = 'GPS'

-- DC4 Prenotati 
select  
prenotati.data_prenotazione,  
prenotati.COLAZIONE,  
prenotati.PRANZO,  
prenotati.CENA  
from  
(select p.data_prenotazione,  
sum(case when p.tipo_pasto_fk = 1 then 1 else 0 end) as COLAZIONE,  
sum(case when p.tipo_pasto_fk = 2 then 1 else 0 end) as PRANZO,  
sum(case when p.tipo_pasto_fk = 3 then 1 else 0 end) as CENA  
from prenotazione p  
left join mensa m on p.identificativo_mensa_fk = m.codice_mensa   
where to_char(p.data_prenotazione, 'YYYY-MM-DD') like '2022-03-%'       
and m.ente_fk = 3
group by p.data_prenotazione
order by p.data_prenotazione) prenotati
order by prenotati.data_prenotazione;

-- DC4 Consuamti
select	sum(case when p.tipo_pasto_fk = 1 then 1 else 0 end) as COLAZIONE, 
sum(case when p.tipo_pasto_fk = 2 then 1 else 0 end) as PRANZO, 
sum(case when p.tipo_pasto_fk = 3 then 1 else 0 end) as CENA, 
p.data_pasto  
from pasti_consumati p  
left join mensa m on p.mensa_fk = m.codice_mensa  
where	m.ente_fk = 3
and to_char(p.data_pasto, 'YYYY-MM-DD') like '2022-03-%'
and p.identificativo_sistema_fk = 'GPS'
group by p.data_pasto
order by p.data_pasto;

-- Firme DC4
select arrm.ordine_firma, rm.descrizione_ruolo_mensa, d.nome, d.cognome, arrm.ruolo_fk 
from ass_report_ruolo_mensa arrm 
left join ruolo_mensa rm on arrm.ruolo_fk  = rm.codice_ruolo_mensa 
left join ass_dipendente_ruolo adr on rm.codice_ruolo_mensa = adr.ruolo_fk 
left join dipendente d on adr.dipendente_fk = d.codice_dipendente 
left join mensa m on adr.mensa_fk = m.codice_mensa  
where arrm.report_fk = 'DC4C' and d.codice_dipendente is not null 
and m.ente_fk = 3
order by arrm.ordine_firma;

-- DC4 Graduati
select
pc.data_pasto,
sum(case when pc.tipo_pasto_fk = 1 then 1 else 0 end) as COLAZIONE,
sum(case when pc.tipo_pasto_fk = 2 then 1 else 0 end) as PRANZO,
sum(case when pc.tipo_pasto_fk = 3 then 1 else 0 end) as CENA
from pasti_consumati pc left join dipendente d
on pc.codice_fiscale = d.codice_fiscale
left join grado g on d.grado = g.shsgra_cod_uid_pk
where pc.tipo_pagamento_fk = 'TG' and g.tipo_grado_fk = 'GT'
and to_char(pc.data_pasto, 'DD-MM-YYYY') like '%-03-2022'
group by pc.data_pasto
order by pc.data_pasto;

-- DC4 UFC
select
pc.data_pasto,
sum(case when pc.tipo_pasto_fk = 2 then 1 else 0 end) as PRANZO,
sum(case when pc.tipo_pasto_fk = 3 then 1 else 0 end) as CENA
from pasti_consumati pc left join dipendente d
on pc.codice_fiscale = d.codice_fiscale
left join grado g on d.grado = g.shsgra_cod_uid_pk
where pc.tipo_pagamento_fk = 'TG' and (d.codice_dipendente is null or g.tipo_grado_fk in ('UF', 'SU') or d.tipo_personale = 'C')
and to_char(pc.data_pasto, 'DD-MM-YYYY') like '%-03-2022'
group by pc.data_pasto
order by pc.data_pasto