CREATE DATABASE Liber_Con

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Usuario'))
BEGIN;
    DROP TABLE [Usuario];
END;
GO

CREATE TABLE [Usuario] (
    [UsuarioID] INTEGER NOT NULL IDENTITY(1, 1),
    [Rut] VARCHAR(15) NULL,
    [Dv] VARCHAR(15) NULL,
    [Nombre] VARCHAR(255) NULL,
    [Correo] VARCHAR(255) NULL,
    [Telefono] VARCHAR(100) NULL,
    PRIMARY KEY ([UsuarioID])
);
GO

INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('30023545','K','Allegra_Simon','a.feugiat.tellus@imperdietornare.ca','97700680'),('17225071','8','Dakota_Kirby','metus@egestas.co.uk','78384677'),('6272841','8','Quamar_Woodward','Donec.at.arcu@metusInlorem.co.uk','89520894'),('20189383','6','Melodie_Beach','molestie@non.org','14391426'),('16925912','7','Chaim_Vinson','ligula.Aliquam@ametrisus.edu','83586185'),('20228228','8','Whitney_Greene','dui@tristiqueneque.co.uk','79890075'),('8415475','K','Jada_Chavez','sed@risus.com','22359720'),('43591657','0','Uta_Peters','ligula.Aenean@dictumultricies.ca','86632642'),('29172988','6','Jacob_Faulkner','et.magna@loremut.com','23235619'),('36702767','3','Xenos_Atkins','nulla@aliquamadipiscing.co.uk','55540728');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('31594299','3','Coby_Morales','ipsum@quisdiam.co.uk','18534681'),('16526519','K','Abbot_Parker','Vivamus.euismod.urna@vitaeorci.net','18029564'),('6020945','6','Lamar_Mcmahon','nonummy.ut@IntegermollisInteger.org','16670439'),('45830216','2','Mikayla_Williamson','ac@taciti.co.uk','17340103'),('10266040','4','Demetria_Wolf','Donec@Vivamusnonlorem.co.uk','98503042'),('9748074','5','Wendy_Mathews','In.at.pede@erategetipsum.com','60765818'),('37347587','4','Emi_Griffith','nulla.magna.malesuada@in.ca','33756460'),('24904925','5','Lavinia_Strickland','odio.vel@non.edu','73484360'),('28633440','7','Quentin_Roy','elementum.purus@nuncinterdum.org','61006051'),('21852979','8','Jolie_York','ac.sem@laciniavitae.org','47562604');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('43396022','K','Leandra_Carpenter','enim.mi@lectusrutrumurna.co.uk','71473490'),('16927636','6','Oren_Burris','Donec@lectus.edu','32509760'),('45385574','0','Adrian_Ochoa','Nullam@Vivamus.co.uk','20725618'),('34448507','0','Noel_Hampton','Phasellus.in@sitametdapibus.com','96046154'),('20702000','1','Adena_Savage','Fusce.diam.nunc@Nunc.ca','92699550'),('32719270','1','Isabella_Prince','neque.Nullam@ipsum.co.uk','75180722'),('10965826','K','Ashton_Austin','sit.amet.ornare@dictum.co.uk','35215498'),('22560228','K','Charity_Collins','vehicula.risus.Nulla@ultriciesdignissim.ca','44048647'),('25999513','2','Lester_Cervantes','dolor@aptenttacitisociosqu.edu','25295373'),('19054430','3','Rowan_Kirkland','mus.Donec.dignissim@atpede.edu','64421876');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('24457068','2','Kelsie_Mcdaniel','ante.lectus.convallis@erat.co.uk','88568283'),('36668589','8','Troy_Jacobs','non.lorem.vitae@musAenean.org','67318141'),('13569852','0','Jayme_Wong','sem.vitae@Curabiturmassa.ca','58996263'),('29769350','6','Jayme_Moore','mauris.eu.elit@faucibusMorbivehicula.co.uk','49106848'),('20752465','4','Brody_Bowman','velit.Aliquam@infelis.co.uk','53755542'),('28088931','8','Wylie_Sharpe','enim.Mauris@sitamet.ca','14658849'),('6289425','3','Amos_Case','Vestibulum.accumsan@Duis.org','77022837'),('27425758','K','Remedios_Lucas','egestas.a.scelerisque@fringilla.ca','23421868'),('25173821','1','Ursula_Garcia','augue@acmattisornare.com','60435054'),('44075695','6','Geoffrey_Hammond','nisl.elementum.purus@feugiatnon.net','95664223');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('19616961','K','Ishmael_Bray','semper.Nam.tempor@semperetlacinia.org','90231177'),('30787211','0','Susan_Sawyer','nisi.magna.sed@vitaealiquet.edu','51224262'),('49622180','K','Sade_Rogers','Suspendisse@acorciUt.com','99102741'),('36343461','4','Keane_Colon','ligula.elit@volutpatNulla.org','78581578'),('27159535','2','Garrison_Valentine','risus@enim.co.uk','58928102'),('20400395','5','Josiah_Jones','libero.dui@sitamet.ca','52768352'),('28959220','2','Samson_Day','iaculis.aliquet@vitaedolor.edu','26530735'),('8894798','3','Paula_Hunter','sagittis.lobortis@non.edu','29907808'),('5592511','9','Lacota_Osborne','amet@nuncsitamet.ca','51951460'),('26538476','5','Kaseem_Flynn','dui.Fusce.aliquam@Sednunc.ca','72998341');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('5659543','0','Theodore_Faulkner','Mauris.eu@netuset.org','40266948'),('23630177','K','Rylee_Lewis','Suspendisse.tristique@eleifend.net','13302909'),('18346549','K','Marah_Moran','leo.elementum.sem@magnaLoremipsum.com','14816998'),('46786516','1','Ross_Knowles','Nunc@Inlorem.co.uk','81876234'),('24470102','7','Lars_Marquez','dui.nec.tempus@eleifendvitaeerat.edu','15614945'),('39986970','6','Raphael_Cross','ullamcorper.nisl@egestaslaciniaSed.org','66774608'),('10964279','7','Dominique_Hubbard','Vivamus.molestie@elitEtiamlaoreet.ca','61475917'),('44521789','1','Barry_Chavez','at.sem.molestie@semperpretium.com','37658766'),('24278820','6','Laith_Huber','lobortis.nisi@odio.co.uk','21143043'),('10106538','3','Nadine_Joyner','sit.amet@eu.co.uk','86397954');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('49076441','0','Armando_Ryan','nec.metus@consequat.ca','83626584'),('39983478','3','Gareth_Terrell','augue@lectusconvallis.org','46607153'),('28412198','8','Stephanie_Arnold','Aliquam.auctor@ultriciesadipiscingenim.net','84556854'),('22935756','5','Gwendolyn_Wheeler','risus.odio@montesnasceturridiculus.net','75468822'),('47660518','0','Kane_Larson','lacus@velit.org','91430160'),('31192289','0','Isabella_Sykes','dolor@tinciduntpede.net','67751413'),('12502164','6','Kamal_Romero','ultrices@sagittis.ca','21490237'),('30758740','8','Oscar_Marquez','vitae.orci.Phasellus@dapibusgravida.ca','20273952'),('39707933','3','Upton_Pollard','felis@Proin.net','86747732'),('25833180','K','Roary_Guerra','viverra.Donec@congue.net','76765006');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('20784514','0','Ivor_Donaldson','parturient.montes.nascetur@Praesent.com','39271167'),('44966082','K','Avram_Burch','nisi.dictum@Mauriseu.co.uk','34894479'),('13992004','K','Hilel_Sanders','pharetra@enim.edu','18396470'),('42513729','8','Philip_Forbes','tellus@Suspendisse.edu','13316316'),('13958149','0','Trevor_Mcknight','pellentesque@duilectusrutrum.org','55309074'),('10796906','3','Iris_Sellers','Pellentesque.ultricies.dignissim@mattisCras.co.uk','28130223'),('22281449','9','Oleg_Gallagher','litora@temporaugueac.org','76689724'),('19358837','9','Denise_Hanson','natoque@pedeCum.org','19241944'),('6442322','3','Paloma_Pittman','dignissim.magna@necleoMorbi.org','21018838'),('44621752','6','Steel_George','ornare@sit.com','84352228');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('39930321','4','Meghan_Cain','scelerisque.lorem.ipsum@ligulaeu.org','95333015'),('13374473','8','Melissa_Juarez','dapibus@Maurisvelturpis.org','96827295'),('48422180','4','Winter_Merrill','auctor.velit.Aliquam@Integervitae.net','38608263'),('20317555','8','May_Koch','id.sapien.Cras@Integer.edu','49000413'),('46308509','9','Ralph_Knowles','sociis.natoque@Suspendisseacmetus.org','52986947'),('33730363','3','Daryl_Walsh','Suspendisse.dui@ultricesposuere.com','47348670'),('36474247','9','Marah_Gallegos','cursus@egestas.com','99488862'),('45508684','1','Cathleen_Harrington','placerat.orci@gravidamauris.ca','56359765'),('28067128','2','Jescie_Obrien','eget.nisi.dictum@Aliquamnecenim.org','91582588'),('16196547','2','Teegan_Case','montes.nascetur@ornarelectusante.edu','26563593');
INSERT INTO Usuario([Rut],[Dv],[Nombre],[Correo],[Telefono]) VALUES('34119164','5','Lawrence_Soto','elit@aliquameuaccumsan.edu','22864468'),('19455633','0','Risa_Mosley','elit.Curabitur@tempusscelerisquelorem.org','39188756'),('36018194','4','Oliver_Marsh','eget.tincidunt.dui@ascelerisque.net','61740723'),('11964785','1','William_Simpson','Donec.est@a.co.uk','62012842'),('34146128','6','Ella_Preston','Lorem.ipsum.dolor@arcu.org','36835875'),('11823229','1','April_Conrad','quis.pede@Namconsequat.co.uk','14857948'),('18055688','5','Aristotle_Sosa','enim@rhoncusDonec.edu','92178138'),('17134485','9','Maia_Bennett','massa.non.ante@Integer.com','16432707'),('42725629','4','Hyacinth_Frank','dolor.tempus@CuraePhasellus.net','22430884'),('15801184','0','Lael_Hopper','purus.Duis.elementum@vulputatemaurissagittis.com','82073239');

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Libro'))
BEGIN;
    DROP TABLE Libro;
END;
GO

alter table Libro add Estado VARCHAR(3) null;

CREATE TABLE [Libro] (
    [IdLibro] INTEGER NOT NULL IDENTITY(1, 1),
    [Autor] VARCHAR(225) NULL,
    [Titulo] VARCHAR(50) NULL,
    [Editorial] VARCHAR(255) NULL,
    [Categoria] VARCHAR(255) NULL,
	[Estado] VARCHAR(3) NULL,
    PRIMARY KEY ([IdLibro])
);
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Prestamo'))
BEGIN;
    DROP TABLE Prestamo;
END;
GO

CREATE TABLE [Prestamo] (
    [IdPrestamo] INTEGER NOT NULL IDENTITY(1, 1),
    [Fecha] DATE NOT NULL,
    [Titulo] VARCHAR(50) NULL,
    [IdLibro] iNT  NOT NULL FOREIGN KEY REFERENCES Libro(IdLibro),
	[UsuarioId] INT  NOT NULL FOREIGN KEY REFERENCES Usuario(UsuarioId),
    PRIMARY KEY ([IdPrestamo])
);
GO