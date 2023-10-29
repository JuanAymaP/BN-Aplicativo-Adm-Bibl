Ø
\C:\Users\alex1\Documents\BIBL\16-08-23\ROJO\sln_BIBL_Mantenimiento\CapaDatos\cls_Conexion.vb
Public 
Class 
cls_ConexionBD 
Public 

Shared 
	adaptador 
As 
	SqlClient (
.( )
SqlDataAdapter) 7
Public 

Shared 
comando 
As 
	SqlClient &
.& '

SqlCommand' 1
Public 

Shared 
Cnn 
As 
	SqlClient "
." #
SqlConnection# 0
Public		 

Shared		 
Sub		 
AbrirConexion		 #
(		# $
)		$ %
Try

 
Cnn 
= 
New 
SqlConnection #
(# $
$str$ x
)x y
Catch 
ex 
As 
	Exception 
Throw 
End 
Try 
End 
Sub 
Public 

Shared 
Sub !
AbrirConexionPersonal +
(+ ,
), -
Try 
Cnn 
= 
New 
SqlConnection #
(# $
$str$ w
)w x
Catch 
ex 
As 
	Exception 
Throw 
End 
Try 
End 
Sub 
End 
Class 	–z
]C:\Users\alex1\Documents\BIBL\16-08-23\ROJO\sln_BIBL_Mantenimiento\CapaDatos\cls_NombresSP.vb
Public 
Class 
cls_NombresSP 
Public		 

Shared		 !
sp_Prestamos_Vencidos		 '
As		( *
String		+ 1
=		2 3
$str		4 M
Public

 

Shared

 
sp_Reservas

 
As

  
String

! '
=

( )
$str

* =
Public 

Shared 
sp_Buscar_Lector "
As# %
String& ,
=- .
$str/ E
Public 

Shared 
sp_ListarFormLector %
As& (
String) /
=0 1
$str2 L
Public 

Shared 
sp_ContadorPrestamo %
As& (
String) /
=0 1
$str2 M
Public 

Shared  
sp_registra_Prestamo &
As' )
String* 0
=1 2
$str3 L
Public 

Shared !
sp_Modificar_Prestamo '
As( *
String+ 1
=2 3
$str4 M
Public 

Shared 
sp_Buscar_Prestamo $
As% '
String( .
=/ 0
$str1 G
Public 

Shared  
sp_ListarPrestamos50 &
As' )
String* 0
=1 2
$str3 N
Public 

Shared !
sp_ListarFormPrestamo '
As( *
String+ 1
=2 3
$str4 P
Public 

Shared 
sp_registra_Libro #
As$ &
String' -
=. /
$str0 F
Public 

Shared 
sp_modificar_Libro $
As% '
String( .
=/ 0
$str1 G
Public 

Shared 
sp_Buscar_Libro !
As" $
String% +
=, -
$str. A
Public 

Shared 
sp_ContadorLibro "
As# %
String& ,
=- .
$str/ G
Public 

Shared 
sp_ListarFormLibro $
As% '
String( .
=/ 0
$str1 J
Public 

Shared 
sp_ListarLibros50 #
As$ &
String' -
=. /
$str0 H
Public"" 

Shared"" 
sp_registra_Hcc"" !
As""" $
String""% +
="", -
$str"". B
Public## 

Shared## 
sp_modifica_Hcc## !
As##" $
String##% +
=##, -
$str##. B
Public$$ 

Shared$$ 
sp_Buscar_Hcc$$ 
As$$  "
String$$# )
=$$* +
$str$$, =
Public&& 

Shared&& 
sp_ListarFormHcc&& "
As&&# %
String&&& ,
=&&- .
$str&&/ F
Public'' 

Shared'' 
sp_ListarHcc40''  
As''! #
String''$ *
=''+ ,
$str''- B
Public** 

Shared** 
sp_Rpt_Libro_Lista** $
As**% '
String**( .
=**/ 0
$str**1 H
Public++ 

Shared++ !
sp_Rpt_Prestamo_Lista++ '
As++( *
String+++ 1
=++2 3
$str++4 N
Public,, 

Shared,, 
sp_Rpt_Hcc_ListaV2,, $
As,,% '
String,,( .
=,,/ 0
$str,,1 H
Public.. 

Shared..  
sp_Rpt_BusqWeb_Lista.. &
As..' )
String..* 0
=..1 2
$str..3 L
Public// 

Shared// #
sp_Rpt_Libro_Inventario// )
As//* ,
String//- 3
=//4 5
$str//6 R
Public22 

Shared22 
sp_Configuracion22 "
As22# %
String22& ,
=22- .
$str22/ G
Public55 

Shared55  
sp_LOG_registrar_log55 &
As55' )
String55* 0
=551 2
$str553 K
Public99 

Shared99 %
v_PRESTAMO_BusquedaLector99 +
As99, .
String99/ 5
=996 7
$str998 D
Public:: 

Shared:: $
v_PRESTAMO_BanderaLector:: *
As::+ -
String::. 4
=::5 6
$str::7 B
Public;; 

Shared;;  
v_PRESTAMO_CodLector;; &
As;;' )
String;;* 0
=;;1 2
$str;;3 C
Public== 

Shared== #
v_PRESTAMO_Cod_Empleado== )
As==* ,
String==- 3
===4 5
$str==6 L
Public>> 

Shared>> $
v_PRESTAMO_Nombre_Lector>> *
As>>+ -
String>>. 4
=>>5 6
$str>>7 H
Public?? 

Shared?? "
v_PRESTAMO_CodNumLibro?? (
As??) +
String??, 2
=??3 4
$str??5 J
Public@@ 

Shared@@ #
v_PRESTAMO_Titulo_Libro@@ )
As@@* ,
String@@- 3
=@@4 5
$str@@6 F
PublicAA 

SharedAA &
v_PRESTAMO_CodClasif_LibroAA ,
AsAA- /
StringAA0 6
=AA7 8
$strAA9 S
PublicBB 

SharedBB $
v_PRESTAMO_FechaPrestamoBB *
AsBB+ -
StringBB. 4
=BB5 6
$strBB7 J
PublicCC 

SharedCC #
v_PRESTAMO_HoraPrestamoCC )
AsCC* ,
StringCC- 3
=CC4 5
$strCC6 H
PublicDD 

SharedDD &
v_PRESTAMO_FechaDevolucionDD ,
AsDD- /
StringDD0 6
=DD7 8
$strDD9 P
PublicEE 

SharedEE %
v_PRESTAMO_FechaAnulacionEE +
AsEE, .
StringEE/ 5
=EE6 7
$strEE8 N
PublicGG 

SharedGG $
v_PRESTAMO_TipoOperacionGG *
AsGG+ -
StringGG. 4
=GG5 6
$strGG7 E
PublicHH 

SharedHH (
v_PRESTAMO_PrestamoProvinciaHH .
AsHH/ 1
StringHH2 8
=HH9 :
$strHH; N
PublicII 

SharedII '
v_PRESTAMO_PrestamoEspecialII -
AsII. 0
StringII1 7
=II8 9
$strII: L
PublicJJ 

SharedJJ )
v_PRESTAMO_BusquedaMovimientoJJ /
AsJJ0 2
StringJJ3 9
=JJ: ;
$strJJ< H
PublicKK 

SharedKK (
v_PRESTAMO_BanderaMovimientoKK .
AsKK/ 1
StringKK2 8
=KK9 :
$strKK; F
PublicLL 

SharedLL #
v_PRESTAMO_IdMovimientoLL )
AsLL* ,
StringLL- 3
=LL4 5
$strLL6 E
PublicOO 

SharedOO  
v_LibroFechaRegistroOO &
AsOO' )
StringOO* 0
=OO1 2
$strOO3 E
PublicPP 

SharedPP 
v_LibroHoraRegistroPP %
AsPP& (
StringPP) /
=PP0 1
$strPP2 C
PublicQQ 

SharedQQ 
v_LibroTituloQQ 
AsQQ  "
StringQQ# )
=QQ* +
$strQQ, <
PublicRR 

SharedRR 
v_LibroCodNumRR 
AsRR  "
StringRR# )
=RR* +
$strRR, A
PublicSS 

SharedSS 
v_LibroEdicionSS  
AsSS! #
StringSS$ *
=SS+ ,
$strSS- >
PublicTT 

SharedTT 
v_LibroAnioTT 
AsTT  
StringTT! '
=TT( )
$strTT* 8
PublicUU 

SharedUU 
v_LibroAutorUU 
AsUU !
StringUU" (
=UU) *
$strUU+ :
PublicVV 

SharedVV 
v_LibroCodClasifVV "
AsVV# %
StringVV& ,
=VV- .
$strVV/ I
PublicWW 

SharedWW 
v_LibroCategWW 
AsWW !
StringWW" (
=WW) *
$strWW+ >
PublicXX 

SharedXX 
v_LibroDetallesXX !
AsXX" $
StringXX% +
=XX, -
$strXX. @
PublicYY 

SharedYY 
v_LibroIdiomaYY 
AsYY  "
StringYY# )
=YY* +
$strYY, <
PublicZZ 

SharedZZ 
v_LibroNroEjemZZ  
AsZZ! #
StringZZ$ *
=ZZ+ ,
$strZZ- ?
Public[[ 

Shared[[ 
v_LibroModo[[ 
As[[  
String[[! '
=[[( )
$str[[* 8
Public\\ 

Shared\\ 
v_LibroPieImp\\ 
As\\  "
String\\# )
=\\* +
$str\\, <
Public]] 

Shared]] 
v_LibroTipo]] 
As]]  
String]]! '
=]]( )
$str]]* 2
Public^^ 

Shared^^ 
v_LibroNroEdic^^  
As^^! #
String^^$ *
=^^+ ,
$str^^- B
Public__ 

Shared__ 
v_LibroLugar__ 
As__ !
String__" (
=__) *
$str__+ :
Public`` 

Shared`` 
v_LibroPrecioS``  
As``! #
String``$ *
=``+ ,
$str``- >
Publicaa 

Sharedaa 
v_LibroPrecioDaa  
Asaa! #
Stringaa$ *
=aa+ ,
$straa- >
Publicbb 

Sharedbb 
v_LibroMateriasbb !
Asbb" $
Stringbb% +
=bb, -
$strbb. :
Publicdd 

Shareddd 
v_LibroEstadodd 
Asdd  "
Stringdd# )
=dd* +
$strdd, <
Publicee 

Sharedee 
v_LibroNroIpee 
Asee !
Stringee" (
=ee) *
$stree+ :
Publicff 

Sharedff 
v_LibroRevisadoff !
Asff" $
Stringff% +
=ff, -
$strff. @
Publicgg 

Sharedgg 
v_LibroUsuarioSistgg $
Asgg% '
Stringgg( .
=gg/ 0
$strgg1 A
Publichh 

Sharedhh 
v_LibroNroPaghh 
Ashh  "
Stringhh# )
=hh* +
$strhh, :
Publicii 

Sharedii 
v_LibroISBNii 
Asii  
Stringii! '
=ii( )
$strii* 8
Publicjj 

Sharedjj 
	v_LibroCDjj 
Asjj 
Stringjj %
=jj& '
$strjj( 4
Publickk 

Sharedkk  
v_LibroMesAnioComprakk &
Askk' )
Stringkk* 0
=kk1 2
$strkk3 N
Publicll 

Sharedll 
v_tipoListall 
Asll  
Stringll! '
=ll( )
$strll* =
Publicmm 

Sharedmm 

v_busquedamm 
Asmm 
Stringmm  &
=mm' (
$strmm) 5
Publicnn 

Sharednn 
	v_banderann 
Asnn 
Stringnn %
=nn& '
$strnn( 3
Publicqq 

Sharedqq 
v_HCC_IdHCCqq 
Asqq  
Stringqq! '
=qq( )
$strqq* 4
Publicrr 

Sharedrr 
v_HccTipoListarr  
Asrr! #
Stringrr$ *
=rr+ ,
$strrr- >
Publicss 

Sharedss 
v_HCC_FechaComprass #
Asss$ &
Stringss' -
=ss. /
$strss0 ?
Publictt 

Sharedtt 

v_HCC_Horatt 
Astt 
Stringtt  &
=tt' (
$strtt) 1
Publicuu 

Shareduu 
v_HCC_NroHCCuu 
Asuu !
Stringuu" (
=uu) *
$struu+ 5
Publicvv 

Sharedvv 

v_HCC_Tipovv 
Asvv 
Stringvv  &
=vv' (
$strvv) 1
Publicww 

Sharedww 

v_HCC_Annoww 
Asww 
Stringww  &
=ww' (
$strww) 1
Publicxx 

Sharedxx 
v_HCC_Documentoxx !
Asxx" $
Stringxx% +
=xx, -
$strxx. ;
Publicyy 

Sharedyy 
v_HCC_Proveedoryy !
Asyy" $
Stringyy% +
=yy, -
$stryy. ;
Publiczz 

Sharedzz 
v_HCC_Publicacionzz #
Aszz$ &
Stringzz' -
=zz. /
$strzz0 ?
Public{{ 

Shared{{ 
v_HCC_Observacion{{ #
As{{$ &
String{{' -
={{. /
$str{{0 ?
Public|| 

Shared|| 
v_HCC_CodOficina|| "
As||# %
String||& ,
=||- .
$str||/ =
Public}} 

Shared}} 
v_HCC_Dependencia}} #
As}}$ &
String}}' -
=}}. /
$str}}0 ?
Public~~ 

Shared~~ 
v_HCC_ImporteSoles~~ $
As~~% '
String~~( .
=~~/ 0
$str~~1 A
Public 

Shared  
v_HCC_ImporteDolares &
As' )
String* 0
=1 2
$str3 E
Public
ÄÄ 

Shared
ÄÄ 
v_HCC_NroIP
ÄÄ 
As
ÄÄ  
String
ÄÄ! '
=
ÄÄ( )
$str
ÄÄ* 3
Public
ÅÅ 

Shared
ÅÅ 
v_HCC_Usuario
ÅÅ 
As
ÅÅ  "
String
ÅÅ# )
=
ÅÅ* +
$str
ÅÅ, 7
Public
ÇÇ 

Shared
ÇÇ 
v_HCC_NroLibros
ÇÇ !
As
ÇÇ" $
String
ÇÇ% +
=
ÇÇ, -
$str
ÇÇ. >
Public
ÖÖ 

Shared
ÖÖ 
v_RPT_TipoFecha
ÖÖ !
As
ÖÖ" $
String
ÖÖ% +
=
ÖÖ, -
$str
ÖÖ. ;
Public
ÜÜ 

Shared
ÜÜ 
v_RPT_FechaDesde
ÜÜ "
As
ÜÜ# %
String
ÜÜ& ,
=
ÜÜ- .
$str
ÜÜ/ >
Public
áá 

Shared
áá 
v_RPT_FechaHasta
áá "
As
áá# %
String
áá& ,
=
áá- .
$str
áá/ ;
Public
àà 

Shared
àà  
v_RPT_Bandera_Tipo
àà $
As
àà% '
String
àà( .
=
àà/ 0
$str
àà1 A
Public
ââ 

Shared
ââ 
v_RPT_Autor
ââ 
As
ââ  
String
ââ! '
=
ââ( )
$str
ââ* 3
Public
åå 

Shared
åå 
v_LOG_User_Fecha
åå "
As
åå# %
String
åå& ,
=
åå- .
$str
åå/ =
Public
çç 

Shared
çç 
v_LOG_User_Hora
çç !
As
çç" $
String
çç% +
=
çç, -
$str
çç. ;
Public
éé 

Shared
éé '
v_LOG_User_quien_consulta
éé +
As
éé, .
String
éé/ 5
=
éé6 7
$str
éé8 O
Public
èè 

Shared
èè $
v_LOG_User_DireccionIP
èè (
As
èè) +
String
èè, 2
=
èè3 4
$str
èè5 I
Public
êê 

Shared
êê 
v_LOG_User_Accion
êê #
As
êê$ &
String
êê' -
=
êê. /
$str
êê0 ?
Public
ëë 

Shared
ëë $
v_LOG_User_TemaBuscado
ëë (
As
ëë) +
String
ëë, 2
=
ëë3 4
$str
ëë5 I
Public
íí 

Shared
íí 
v_LOG_User_Modulo
íí #
As
íí$ &
String
íí' -
=
íí. /
$str
íí0 ?
Public
ïï 

Shared
ïï 
v_Conf_Bandera
ïï  
As
ïï! #
String
ïï$ *
=
ïï+ ,
$str
ïï- 8
Public
ññ 

Shared
ññ 
v_Conf_CParrafo
ññ !
As
ññ" $
String
ññ% +
=
ññ, -
$str
ññ. 9
Endòò 
Class
òò 	
gC:\Users\alex1\Documents\BIBL\16-08-23\ROJO\sln_BIBL_Mantenimiento\CapaDatos\My Project\AssemblyInfo.vb
< 
Assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
>% &
< 
Assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
>" #
< 
Assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
> 
< 
Assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
>' (
< 
Assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
>1 2
< 
Assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
>  !
< 
Assembly 	
:	 


ComVisible 
( 
False 
) 
> 
< 
Assembly 	
:	 

Guid 
( 
$str 6
)6 7
>7 8
<"" 
Assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
>""% &
<## 
Assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
>##) *