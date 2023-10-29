Ó´
]C:\Users\alex1\Documents\BIBL\16-08-23\ROJO\sln_BIBL_Mantenimiento\CapaNegocio\cls_Metodos.vb
Public 
Class 
cls_Metodos 
Public 

Shared 
Sub 
culture_info "
(" #
)# $
Dim		 
culture		 
As		 
CultureInfo		 "
culture

 
=

 
CultureInfo

 
.

 !
CreateSpecificCulture

 3
(

3 4
$str

4 ;
)

; <
Thread 
. 
CurrentThread 
. 
CurrentCulture +
=, -
culture. 5
Thread 
. 
CurrentThread 
. 
CurrentUICulture -
=. /
culture0 7
End 
Sub 
Public 

Shared 
Function 
Actualizar_Libro +
(+ ,
ByVal, 1
titulo2 8
As9 ;
String< B
,B C
ByValD I
codNumericoLibroJ Z
As[ ]
String^ d
,d e
ByValf k
Edicionl s
Ast v
Stringw }
,} ~
ByVal	 Ñ
anio
Ö â
As
ä å
String
ç ì
,
ì î
ByVal$ )
Autor* /
As0 2
String3 9
,9 :
ByVal; @
	codClasifA J
AsK M
StringN T
,T U
ByValV [
	categoria\ e
Asf h
Stringi o
,o p
ByValq v
detallesw 
As
Ä Ç
String
É â
,
â ä
ByVal
ã ê
idioma
ë ó
As
ò ö
String
õ °
,
° ¢
ByVal$ )
	nroEjempl* 3
As4 6
String7 =
,= >
ByVal? D
modoE I
AsJ L
StringM S
,S T
ByValU Z
pie_imprenta[ g
Ash j
Stringk q
,q r
ByVals x
tipoy }
As	~ Ä
String
Å á
,
á à
ByVal
â é
nro_edicion
è ö
As
õ ù
String
û §
,
§ •
ByVal
¶ ´
lugar
¨ ±
As
≤ ¥
String
µ ª
,
ª º
ByVal$ )
precioS* 1
As2 4
String5 ;
,; <
ByVal= B
precioDC J
AsK M
StringN T
,T U
ByValV [
materias\ d
Ase g
Stringh n
,n o
ByValp u
estadov |
As} 
String
Ä Ü
,
Ü á
ByVal
à ç
nro_IP
é î
As
ï ó
String
ò û
,
û ü
ByVal$ )
usuarioSist* 5
As6 8
String9 ?
,? @
ByValA F

nroPaginasG Q
AsR T
StringU [
,[ \
ByVal] b
isbnc g
Ash j
Stringk q
,q r
ByVals x
CDy {
As| ~
String	 Ö
,
Ö Ü
ByVal
á å 
mesAnnoCompraLibro
ç ü
As
† ¢
String
£ ©
)
© ™
Try 
culture_info 
( 
) 
cls_ConexionBD 
. 
AbrirConexion (
(( )
)) *
cls_ConexionBD 
. 
Cnn 
. 
Open #
(# $
)$ %
cls_ConexionBD 
. 
comando "
=# $
New% (

SqlCommand) 3
(3 4
cls_NombresSP4 A
.A B
sp_modificar_LibroB T
,T U
cls_ConexionBDV d
.d e
Cnne h
)h i
cls_ConexionBD 
. 
comando "
." #
CommandType# .
=/ 0
CommandType1 <
.< =
StoredProcedure= L
cls_ConexionBD 
. 
comando "
." #

Parameters# -
.- .
AddWithValue. :
(: ;
cls_NombresSP; H
.H I
v_LibroTituloI V
,V W
tituloX ^
)^ _
cls_ConexionBD 
. 
comando "
." #

Parameters# -
.- .
AddWithValue. :
(: ;
cls_NombresSP; H
.H I
v_LibroCodNumI V
,V W
codNumericoLibroX h
)h i
cls_ConexionBD 
. 
comando "
." #

Parameters# -
.- .
AddWithValue. :
(: ;
cls_NombresSP; H
.H I
v_LibroEdicionI W
,W X
EdicionY `
)` a
cls_ConexionBD   
.   
comando   "
.  " #

Parameters  # -
.  - .
AddWithValue  . :
(  : ;
cls_NombresSP  ; H
.  H I
v_LibroAnio  I T
,  T U
anio  V Z
)  Z [
cls_ConexionBD"" 
."" 
comando"" "
.""" #

Parameters""# -
.""- .
AddWithValue"". :
("": ;
cls_NombresSP""; H
.""H I
v_LibroAutor""I U
,""U V
Autor""W \
)""\ ]
cls_ConexionBD## 
.## 
comando## "
.##" #

Parameters### -
.##- .
AddWithValue##. :
(##: ;
cls_NombresSP##; H
.##H I
v_LibroCodClasif##I Y
,##Y Z
	codClasif##[ d
)##d e
cls_ConexionBD$$ 
.$$ 
comando$$ "
.$$" #

Parameters$$# -
.$$- .
AddWithValue$$. :
($$: ;
cls_NombresSP$$; H
.$$H I
v_LibroCateg$$I U
,$$U V
	categoria$$W `
)$$` a
cls_ConexionBD%% 
.%% 
comando%% "
.%%" #

Parameters%%# -
.%%- .
AddWithValue%%. :
(%%: ;
cls_NombresSP%%; H
.%%H I
v_LibroDetalles%%I X
,%%X Y
detalles%%Z b
)%%b c
cls_ConexionBD&& 
.&& 
comando&& "
.&&" #

Parameters&&# -
.&&- .
AddWithValue&&. :
(&&: ;
cls_NombresSP&&; H
.&&H I
v_LibroIdioma&&I V
,&&V W
idioma&&X ^
)&&^ _
cls_ConexionBD(( 
.(( 
comando(( "
.((" #

Parameters((# -
.((- .
AddWithValue((. :
(((: ;
cls_NombresSP((; H
.((H I
v_LibroNroEjem((I W
,((W X
	nroEjempl((Y b
)((b c
cls_ConexionBD)) 
.)) 
comando)) "
.))" #

Parameters))# -
.))- .
AddWithValue)). :
()): ;
cls_NombresSP)); H
.))H I
v_LibroModo))I T
,))T U
modo))V Z
)))Z [
cls_ConexionBD** 
.** 
comando** "
.**" #

Parameters**# -
.**- .
AddWithValue**. :
(**: ;
cls_NombresSP**; H
.**H I
v_LibroPieImp**I V
,**V W
pie_imprenta**X d
)**d e
cls_ConexionBD++ 
.++ 
comando++ "
.++" #

Parameters++# -
.++- .
AddWithValue++. :
(++: ;
cls_NombresSP++; H
.++H I
v_LibroTipo++I T
,++T U
tipo++V Z
)++Z [
cls_ConexionBD,, 
.,, 
comando,, "
.,," #

Parameters,,# -
.,,- .
AddWithValue,,. :
(,,: ;
cls_NombresSP,,; H
.,,H I
v_LibroNroEdic,,I W
,,,W X
nro_edicion,,Y d
),,d e
cls_ConexionBD-- 
.-- 
comando-- "
.--" #

Parameters--# -
.--- .
AddWithValue--. :
(--: ;
cls_NombresSP--; H
.--H I
v_LibroLugar--I U
,--U V
lugar--W \
)--\ ]
cls_ConexionBD// 
.// 
comando// "
.//" #

Parameters//# -
.//- .
AddWithValue//. :
(//: ;
cls_NombresSP//; H
.//H I
v_LibroPrecioS//I W
,//W X
precioS//Y `
)//` a
cls_ConexionBD00 
.00 
comando00 "
.00" #

Parameters00# -
.00- .
AddWithValue00. :
(00: ;
cls_NombresSP00; H
.00H I
v_LibroPrecioD00I W
,00W X
precioD00Y `
)00` a
cls_ConexionBD11 
.11 
comando11 "
.11" #

Parameters11# -
.11- .
AddWithValue11. :
(11: ;
cls_NombresSP11; H
.11H I
v_LibroMaterias11I X
,11X Y
materias11Z b
)11b c
cls_ConexionBD22 
.22 
comando22 "
.22" #

Parameters22# -
.22- .
AddWithValue22. :
(22: ;
cls_NombresSP22; H
.22H I
v_LibroEstado22I V
,22V W
estado22X ^
)22^ _
cls_ConexionBD33 
.33 
comando33 "
.33" #

Parameters33# -
.33- .
AddWithValue33. :
(33: ;
cls_NombresSP33; H
.33H I
v_LibroNroIp33I U
,33U V
nro_IP33W ]
)33] ^
cls_ConexionBD55 
.55 
comando55 "
.55" #

Parameters55# -
.55- .
AddWithValue55. :
(55: ;
cls_NombresSP55; H
.55H I
v_LibroUsuarioSist55I [
,55[ \
usuarioSist55] h
)55h i
cls_ConexionBD66 
.66 
comando66 "
.66" #

Parameters66# -
.66- .
AddWithValue66. :
(66: ;
cls_NombresSP66; H
.66H I
v_LibroNroPag66I V
,66V W

nroPaginas66X b
)66b c
cls_ConexionBD77 
.77 
comando77 "
.77" #

Parameters77# -
.77- .
AddWithValue77. :
(77: ;
cls_NombresSP77; H
.77H I
v_LibroISBN77I T
,77T U
isbn77V Z
)77Z [
cls_ConexionBD88 
.88 
comando88 "
.88" #

Parameters88# -
.88- .
AddWithValue88. :
(88: ;
cls_NombresSP88; H
.88H I
	v_LibroCD88I R
,88R S
CD88T V
)88V W
cls_ConexionBD99 
.99 
comando99 "
.99" #

Parameters99# -
.99- .
AddWithValue99. :
(99: ;
cls_NombresSP99; H
.99H I 
v_LibroMesAnioCompra99I ]
,99] ^
mesAnnoCompraLibro99_ q
)99q r
cls_ConexionBD;; 
.;; 
comando;; "
.;;" #
ExecuteNonQuery;;# 2
(;;2 3
);;3 4
Return<< 
True<< 
Catch== 
ex== 
As== 
	Exception== 
Throw>> 
Finally?? 
cls_ConexionBD@@ 
.@@ 
comando@@ "
.@@" #
Dispose@@# *
(@@* +
)@@+ ,
cls_ConexionBDAA 
.AA 
CnnAA 
.AA 
CloseAA $
(AA$ %
)AA% &
EndBB 
TryBB 
EndCC 
FunctionCC 
PublicFF 

SharedFF 
FunctionFF 
BuscarLibroFF &
(FF& '
ByValFF' ,
	vBusquedaFF- 6
AsFF7 9
StringFF: @
,FF@ A
ByValFFB G
vBanderaFFH P
AsFFQ S
StringFFT Z
)FFZ [
AsFF\ ^
DataSetFF_ f
culture_infoGG 
(GG 
)GG 
DimHH 
dsHH 
AsHH 
NewHH 
DataSetHH 
(HH 
)HH 
TryII 
cls_ConexionBDJJ 
.JJ 
AbrirConexionJJ (
(JJ( )
)JJ) *
cls_ConexionBDKK 
.KK 
comandoKK "
=KK# $
NewKK% (

SqlCommandKK) 3
(KK3 4
cls_NombresSPKK4 A
.KKA B
sp_Buscar_LibroKKB Q
,KKQ R
cls_ConexionBDKKS a
.KKa b
CnnKKb e
)KKe f
cls_ConexionBDLL 
.LL 
comandoLL "
.LL" #
CommandTypeLL# .
=LL/ 0
CommandTypeLL1 <
.LL< =
StoredProcedureLL= L
cls_ConexionBDMM 
.MM 
comandoMM "
.MM" #

ParametersMM# -
.MM- .
AddWithValueMM. :
(MM: ;
cls_NombresSPMM; H
.MMH I

v_busquedaMMI S
,MMS T
	SqlDbTypeMMU ^
.MM^ _
VarCharMM_ f
)MMf g
.MMg h
ValueMMh m
=MMn o
	vBusquedaMMp y
cls_ConexionBDNN 
.NN 
comandoNN "
.NN" #

ParametersNN# -
.NN- .
AddWithValueNN. :
(NN: ;
cls_NombresSPNN; H
.NNH I
	v_banderaNNI R
,NNR S
	SqlDbTypeNNT ]
.NN] ^
VarCharNN^ e
)NNe f
.NNf g
ValueNNg l
=NNm n
vBanderaNNo w
cls_ConexionBDOO 
.OO 
	adaptadorOO $
=OO% &
NewOO' *
SqlDataAdapterOO+ 9
(OO9 :
cls_ConexionBDOO: H
.OOH I
comandoOOI P
)OOP Q
cls_ConexionBDPP 
.PP 
	adaptadorPP $
.PP$ %
FillPP% )
(PP) *
dsPP* ,
)PP, -
ReturnQQ 
dsQQ 
CatchRR 
exRR 
AsRR 
	ExceptionRR 
ThrowSS 
FinallyTT 
cls_ConexionBDUU 
.UU 
comandoUU "
.UU" #
DisposeUU# *
(UU* +
)UU+ ,
cls_ConexionBDVV 
.VV 
CnnVV 
.VV 
CloseVV $
(VV$ %
)VV% &
cls_ConexionBDWW 
.WW 
	adaptadorWW $
=WW% &
NothingWW' .
dsXX 
=XX 
NothingXX 
SqlConnectionYY 
.YY 
ClearAllPoolsYY '
(YY' (
)YY( )
EndZZ 
TryZZ 
End\\ 
Function\\ 
Public__ 

Shared__ 
Function__ 
Registrar_Libro__ *
(__* +
ByVal__+ 0
FechaRegistro__1 >
As__? A
String__B H
,__H I
ByVal__J O
HoraRegistro__P \
As__] _
String__` f
,__f g
ByVal__h m
titulo__n t
As__u w
String__x ~
,__~ 
ByVal
__Ä Ö
codNumericoLibro
__Ü ñ
As
__ó ô
String
__ö †
,
__† °
ByVal
__¢ ß
Edicion
__® Ø
As
__∞ ≤
String
__≥ π
,
__π ∫
ByVal
__ª ¿
anio
__¡ ≈
As
__∆ »
String
__… œ
,
__œ –
ByVal``$ )
Autor``* /
As``0 2
String``3 9
,``9 :
ByVal``; @
	codClasif``A J
As``K M
String``N T
,``T U
ByVal``V [
	categoria``\ e
As``f h
String``i o
,``o p
ByVal``q v
detalles``w 
As
``Ä Ç
String
``É â
,
``â ä
ByVal
``ã ê
idioma
``ë ó
As
``ò ö
String
``õ °
,
``° ¢
ByValaa$ )
	nroEjemplaa* 3
Asaa4 6
Stringaa7 =
,aa= >
ByValaa? D
modoaaE I
AsaaJ L
StringaaM S
,aaS T
ByValaaU Z
pie_imprentaaa[ g
Asaah j
Stringaak q
,aaq r
ByValaas x
tipoaay }
As	aa~ Ä
String
aaÅ á
,
aaá à
ByVal
aaâ é
nro_edicion
aaè ö
As
aaõ ù
String
aaû §
,
aa§ •
ByVal
aa¶ ´
lugar
aa¨ ±
As
aa≤ ¥
String
aaµ ª
,
aaª º
ByValbb$ )
precioSbb* 1
Asbb2 4
Stringbb5 ;
,bb; <
ByValbb= B
precioDbbC J
AsbbK M
StringbbN T
,bbT U
ByValbbV [
materiasbb\ d
Asbbe g
Stringbbh n
,bbn o
ByValbbp u
estadobbv |
Asbb} 
String
bbÄ Ü
,
bbÜ á
ByVal
bbà ç
nro_IP
bbé î
As
bbï ó
String
bbò û
,
bbû ü
ByValcc$ )
usuarioSistcc* 5
Ascc6 8
Stringcc9 ?
,cc? @
ByValccA F

nroPaginasccG Q
AsccR T
StringccU [
,cc[ \
ByValcc] b
isbnccc g
Ascch j
Stringcck q
,ccq r
ByValccs x
CDccy {
Ascc| ~
String	cc Ö
,
ccÖ Ü
ByVal
ccá å 
mesAnnoCompraLibro
ccç ü
As
cc† ¢
String
cc£ ©
)
cc© ™
Trydd 
culture_infoee 
(ee 
)ee 
cls_ConexionBDff 
.ff 
AbrirConexionff (
(ff( )
)ff) *
cls_ConexionBDgg 
.gg 
Cnngg 
.gg 
Opengg #
(gg# $
)gg$ %
cls_ConexionBDhh 
.hh 
comandohh "
=hh# $
Newhh% (

SqlCommandhh) 3
(hh3 4
cls_NombresSPhh4 A
.hhA B
sp_registra_LibrohhB S
,hhS T
cls_ConexionBDhhU c
.hhc d
Cnnhhd g
)hhg h
cls_ConexionBDii 
.ii 
comandoii "
.ii" #
CommandTypeii# .
=ii/ 0
CommandTypeii1 <
.ii< =
StoredProcedureii= L
cls_ConexionBDll 
.ll 
comandoll "
.ll" #

Parametersll# -
.ll- .
Addll. 1
(ll1 2
cls_NombresSPll2 ?
.ll? @ 
v_LibroFechaRegistroll@ T
,llT U
	SqlDbTypellV _
.ll_ `
SmallDateTimell` m
,llm n
$numllo p
)llp q
.llq r
Valuellr w
=llx y
FechaRegistro	llz á
cls_ConexionBDmm 
.mm 
comandomm "
.mm" #

Parametersmm# -
.mm- .
AddWithValuemm. :
(mm: ;
cls_NombresSPmm; H
.mmH I
v_LibroHoraRegistrommI \
,mm\ ]
HoraRegistromm^ j
)mmj k
cls_ConexionBDoo 
.oo 
comandooo "
.oo" #

Parametersoo# -
.oo- .
AddWithValueoo. :
(oo: ;
cls_NombresSPoo; H
.ooH I
v_LibroTituloooI V
,ooV W
tituloooX ^
)oo^ _
cls_ConexionBDpp 
.pp 
comandopp "
.pp" #

Parameterspp# -
.pp- .
AddWithValuepp. :
(pp: ;
cls_NombresSPpp; H
.ppH I
v_LibroCodNumppI V
,ppV W
codNumericoLibroppX h
)pph i
cls_ConexionBDqq 
.qq 
comandoqq "
.qq" #

Parametersqq# -
.qq- .
AddWithValueqq. :
(qq: ;
cls_NombresSPqq; H
.qqH I
v_LibroEdicionqqI W
,qqW X
EdicionqqY `
)qq` a
cls_ConexionBDrr 
.rr 
comandorr "
.rr" #

Parametersrr# -
.rr- .
AddWithValuerr. :
(rr: ;
cls_NombresSPrr; H
.rrH I
v_LibroAniorrI T
,rrT U
aniorrV Z
)rrZ [
cls_ConexionBDtt 
.tt 
comandott "
.tt" #

Parameterstt# -
.tt- .
AddWithValuett. :
(tt: ;
cls_NombresSPtt; H
.ttH I
v_LibroAutorttI U
,ttU V
AutorttW \
)tt\ ]
cls_ConexionBDuu 
.uu 
comandouu "
.uu" #

Parametersuu# -
.uu- .
AddWithValueuu. :
(uu: ;
cls_NombresSPuu; H
.uuH I
v_LibroCodClasifuuI Y
,uuY Z
	codClasifuu[ d
)uud e
cls_ConexionBDvv 
.vv 
comandovv "
.vv" #

Parametersvv# -
.vv- .
AddWithValuevv. :
(vv: ;
cls_NombresSPvv; H
.vvH I
v_LibroCategvvI U
,vvU V
	categoriavvW `
)vv` a
cls_ConexionBDww 
.ww 
comandoww "
.ww" #

Parametersww# -
.ww- .
AddWithValueww. :
(ww: ;
cls_NombresSPww; H
.wwH I
v_LibroDetalleswwI X
,wwX Y
detalleswwZ b
)wwb c
cls_ConexionBDxx 
.xx 
comandoxx "
.xx" #

Parametersxx# -
.xx- .
AddWithValuexx. :
(xx: ;
cls_NombresSPxx; H
.xxH I
v_LibroIdiomaxxI V
,xxV W
idiomaxxX ^
)xx^ _
cls_ConexionBDzz 
.zz 
comandozz "
.zz" #

Parameterszz# -
.zz- .
AddWithValuezz. :
(zz: ;
cls_NombresSPzz; H
.zzH I
v_LibroNroEjemzzI W
,zzW X
	nroEjemplzzY b
)zzb c
cls_ConexionBD{{ 
.{{ 
comando{{ "
.{{" #

Parameters{{# -
.{{- .
AddWithValue{{. :
({{: ;
cls_NombresSP{{; H
.{{H I
v_LibroModo{{I T
,{{T U
modo{{V Z
){{Z [
cls_ConexionBD|| 
.|| 
comando|| "
.||" #

Parameters||# -
.||- .
AddWithValue||. :
(||: ;
cls_NombresSP||; H
.||H I
v_LibroPieImp||I V
,||V W
pie_imprenta||X d
)||d e
cls_ConexionBD}} 
.}} 
comando}} "
.}}" #

Parameters}}# -
.}}- .
AddWithValue}}. :
(}}: ;
cls_NombresSP}}; H
.}}H I
v_LibroTipo}}I T
,}}T U
tipo}}V Z
)}}Z [
cls_ConexionBD~~ 
.~~ 
comando~~ "
.~~" #

Parameters~~# -
.~~- .
AddWithValue~~. :
(~~: ;
cls_NombresSP~~; H
.~~H I
v_LibroNroEdic~~I W
,~~W X
nro_edicion~~Y d
)~~d e
cls_ConexionBD 
. 
comando "
." #

Parameters# -
.- .
AddWithValue. :
(: ;
cls_NombresSP; H
.H I
v_LibroLugarI U
,U V
lugarW \
)\ ]
cls_ConexionBD
ÅÅ 
.
ÅÅ 
comando
ÅÅ "
.
ÅÅ" #

Parameters
ÅÅ# -
.
ÅÅ- .
AddWithValue
ÅÅ. :
(
ÅÅ: ;
cls_NombresSP
ÅÅ; H
.
ÅÅH I
v_LibroPrecioS
ÅÅI W
,
ÅÅW X
precioS
ÅÅY `
)
ÅÅ` a
cls_ConexionBD
ÇÇ 
.
ÇÇ 
comando
ÇÇ "
.
ÇÇ" #

Parameters
ÇÇ# -
.
ÇÇ- .
AddWithValue
ÇÇ. :
(
ÇÇ: ;
cls_NombresSP
ÇÇ; H
.
ÇÇH I
v_LibroPrecioD
ÇÇI W
,
ÇÇW X
precioD
ÇÇY `
)
ÇÇ` a
cls_ConexionBD
ÉÉ 
.
ÉÉ 
comando
ÉÉ "
.
ÉÉ" #

Parameters
ÉÉ# -
.
ÉÉ- .
AddWithValue
ÉÉ. :
(
ÉÉ: ;
cls_NombresSP
ÉÉ; H
.
ÉÉH I
v_LibroMaterias
ÉÉI X
,
ÉÉX Y
materias
ÉÉZ b
)
ÉÉb c
cls_ConexionBD
ÑÑ 
.
ÑÑ 
comando
ÑÑ "
.
ÑÑ" #

Parameters
ÑÑ# -
.
ÑÑ- .
AddWithValue
ÑÑ. :
(
ÑÑ: ;
cls_NombresSP
ÑÑ; H
.
ÑÑH I
v_LibroEstado
ÑÑI V
,
ÑÑV W
estado
ÑÑX ^
)
ÑÑ^ _
cls_ConexionBD
ÖÖ 
.
ÖÖ 
comando
ÖÖ "
.
ÖÖ" #

Parameters
ÖÖ# -
.
ÖÖ- .
AddWithValue
ÖÖ. :
(
ÖÖ: ;
cls_NombresSP
ÖÖ; H
.
ÖÖH I
v_LibroNroIp
ÖÖI U
,
ÖÖU V
nro_IP
ÖÖW ]
)
ÖÖ] ^
cls_ConexionBD
áá 
.
áá 
comando
áá "
.
áá" #

Parameters
áá# -
.
áá- .
AddWithValue
áá. :
(
áá: ;
cls_NombresSP
áá; H
.
ááH I 
v_LibroUsuarioSist
ááI [
,
áá[ \
usuarioSist
áá] h
)
ááh i
cls_ConexionBD
àà 
.
àà 
comando
àà "
.
àà" #

Parameters
àà# -
.
àà- .
AddWithValue
àà. :
(
àà: ;
cls_NombresSP
àà; H
.
ààH I
v_LibroNroPag
ààI V
,
ààV W

nroPaginas
ààX b
)
ààb c
cls_ConexionBD
ââ 
.
ââ 
comando
ââ "
.
ââ" #

Parameters
ââ# -
.
ââ- .
AddWithValue
ââ. :
(
ââ: ;
cls_NombresSP
ââ; H
.
ââH I
v_LibroISBN
ââI T
,
ââT U
isbn
ââV Z
)
ââZ [
cls_ConexionBD
ää 
.
ää 
comando
ää "
.
ää" #

Parameters
ää# -
.
ää- .
AddWithValue
ää. :
(
ää: ;
cls_NombresSP
ää; H
.
ääH I
	v_LibroCD
ääI R
,
ääR S
CD
ääT V
)
ääV W
cls_ConexionBD
ãã 
.
ãã 
comando
ãã "
.
ãã" #

Parameters
ãã# -
.
ãã- .
AddWithValue
ãã. :
(
ãã: ;
cls_NombresSP
ãã; H
.
ããH I"
v_LibroMesAnioCompra
ããI ]
,
ãã] ^ 
mesAnnoCompraLibro
ãã_ q
)
ããq r
cls_ConexionBD
çç 
.
çç 
comando
çç "
.
çç" #
ExecuteNonQuery
çç# 2
(
çç2 3
)
çç3 4
Return
éé 
True
éé 
Catch
èè 
ex
èè 
As
èè 
	Exception
èè 
Throw
êê 
Finally
ëë 
cls_ConexionBD
íí 
.
íí 
comando
íí "
.
íí" #
Dispose
íí# *
(
íí* +
)
íí+ ,
cls_ConexionBD
ìì 
.
ìì 
Cnn
ìì 
.
ìì 
Close
ìì $
(
ìì$ %
)
ìì% &
End
îî 
Try
îî 
End
ïï 
Function
ïï 
Public
óó 

Shared
óó 
Function
óó #
Actualizar_Movimiento
óó 0
(
óó0 1
ByVal
óó1 6
vTituloLibro
óó7 C
As
óóD F
String
óóG M
,
óóM N
ByVal
óóO T
vCodNumerico
óóU a
As
óób d
String
óóe k
)
óók l
Try
òò 
culture_info
ôô 
(
ôô 
)
ôô 
cls_ConexionBD
öö 
.
öö 
AbrirConexion
öö (
(
öö( )
)
öö) *
cls_ConexionBD
õõ 
.
õõ 
Cnn
õõ 
.
õõ 
Open
õõ #
(
õõ# $
)
õõ$ %
cls_ConexionBD
úú 
.
úú 
comando
úú "
=
úú# $
New
úú% (

SqlCommand
úú) 3
(
úú3 4
cls_NombresSP
úú4 A
.
úúA B 
sp_modificar_Libro
úúB T
,
úúT U
cls_ConexionBD
úúV d
.
úúd e
Cnn
úúe h
)
úúh i
cls_ConexionBD
ùù 
.
ùù 
comando
ùù "
.
ùù" #
CommandType
ùù# .
=
ùù/ 0
CommandType
ùù1 <
.
ùù< =
StoredProcedure
ùù= L
cls_ConexionBD
ûû 
.
ûû 
comando
ûû "
.
ûû" #

Parameters
ûû# -
.
ûû- .
AddWithValue
ûû. :
(
ûû: ;
cls_NombresSP
ûû; H
.
ûûH I
v_LibroTitulo
ûûI V
,
ûûV W
vTituloLibro
ûûX d
)
ûûd e
cls_ConexionBD
üü 
.
üü 
comando
üü "
.
üü" #

Parameters
üü# -
.
üü- .
AddWithValue
üü. :
(
üü: ;
cls_NombresSP
üü; H
.
üüH I
v_LibroCodNum
üüI V
,
üüV W
vCodNumerico
üüX d
)
üüd e
cls_ConexionBD
†† 
.
†† 
comando
†† "
.
††" #
ExecuteNonQuery
††# 2
(
††2 3
)
††3 4
Return
°° 
True
°° 
Catch
¢¢ 
ex
¢¢ 
As
¢¢ 
	Exception
¢¢ 
Throw
££ 
Finally
§§ 
cls_ConexionBD
•• 
.
•• 
comando
•• "
.
••" #
Dispose
••# *
(
••* +
)
••+ ,
cls_ConexionBD
¶¶ 
.
¶¶ 
Cnn
¶¶ 
.
¶¶ 
Close
¶¶ $
(
¶¶$ %
)
¶¶% &
End
ßß 
Try
ßß 
End
®® 
Function
®® 
Public
´´ 

Shared
´´ 
Function
´´ 
ListarFormLibro
´´ *
(
´´* +
ByVal
´´+ 0
	tipoLista
´´1 :
As
´´; =
String
´´> D
,
´´D E
ByVal
´´F K
vCodNumerico
´´L X
As
´´Y [
String
´´\ b
)
´´b c
culture_info
¨¨ 
(
¨¨ 
)
¨¨ 
Dim
≠≠ 
df
≠≠ 
As
≠≠ 
New
≠≠ 
DataSet
≠≠ 
(
≠≠ 
)
≠≠ 
Try
ÆÆ 
cls_ConexionBD
ØØ 
.
ØØ 
AbrirConexion
ØØ (
(
ØØ( )
)
ØØ) *
cls_ConexionBD
∞∞ 
.
∞∞ 
comando
∞∞ "
=
∞∞# $
New
∞∞% (

SqlCommand
∞∞) 3
(
∞∞3 4
cls_NombresSP
∞∞4 A
.
∞∞A B 
sp_ListarFormLibro
∞∞B T
,
∞∞T U
cls_ConexionBD
∞∞V d
.
∞∞d e
Cnn
∞∞e h
)
∞∞h i
cls_ConexionBD
±± 
.
±± 
comando
±± "
.
±±" #
CommandType
±±# .
=
±±/ 0
CommandType
±±1 <
.
±±< =
StoredProcedure
±±= L
cls_ConexionBD
≤≤ 
.
≤≤ 
comando
≤≤ "
.
≤≤" #

Parameters
≤≤# -
.
≤≤- .
AddWithValue
≤≤. :
(
≤≤: ;
cls_NombresSP
≤≤; H
.
≤≤H I
v_LibroCodNum
≤≤I V
,
≤≤V W
vCodNumerico
≤≤X d
)
≤≤d e
cls_ConexionBD
≥≥ 
.
≥≥ 
comando
≥≥ "
.
≥≥" #

Parameters
≥≥# -
.
≥≥- .
AddWithValue
≥≥. :
(
≥≥: ;
cls_NombresSP
≥≥; H
.
≥≥H I
v_tipoLista
≥≥I T
,
≥≥T U
	tipoLista
≥≥V _
)
≥≥_ `
cls_ConexionBD
¥¥ 
.
¥¥ 
	adaptador
¥¥ $
=
¥¥% &
New
¥¥' *
SqlDataAdapter
¥¥+ 9
(
¥¥9 :
cls_ConexionBD
¥¥: H
.
¥¥H I
comando
¥¥I P
)
¥¥P Q
cls_ConexionBD
µµ 
.
µµ 
	adaptador
µµ $
.
µµ$ %
Fill
µµ% )
(
µµ) *
df
µµ* ,
)
µµ, -
Return
∂∂ 
df
∂∂ 
Catch
∑∑ 
ex1
∑∑ 
As
∑∑ 
	Exception
∑∑ 
Throw
∏∏ 
Finally
ππ 
cls_ConexionBD
∫∫ 
.
∫∫ 
	adaptador
∫∫ $
.
∫∫$ %
Dispose
∫∫% ,
(
∫∫, -
)
∫∫- .
cls_ConexionBD
ªª 
.
ªª 
Cnn
ªª 
.
ªª 
Close
ªª $
(
ªª$ %
)
ªª% &
cls_ConexionBD
ºº 
.
ºº 
	adaptador
ºº $
=
ºº% &
Nothing
ºº' .
df
ΩΩ 
=
ΩΩ 
Nothing
ΩΩ 
SqlConnection
ææ 
.
ææ 
ClearAllPools
ææ '
(
ææ' (
)
ææ( )
End
øø 
Try
øø 
End
¿¿ 
Function
¿¿ 
Public
¬¬ 

Shared
¬¬ 
Function
¬¬ %
ListarFormLibroGridView
¬¬ 2
(
¬¬2 3
ByVal
¬¬3 8
	tipoLista
¬¬9 B
As
¬¬C E
String
¬¬F L
,
¬¬L M
ByVal
¬¬N S
vCodNumerico
¬¬T `
As
¬¬a c
String
¬¬d j
)
¬¬j k
culture_info
√√ 
(
√√ 
)
√√ 
Dim
ƒƒ 
df
ƒƒ 
As
ƒƒ 
New
ƒƒ 
DataSet
ƒƒ 
(
ƒƒ 
)
ƒƒ 
Try
≈≈ 
cls_ConexionBD
∆∆ 
.
∆∆ 
AbrirConexion
∆∆ (
(
∆∆( )
)
∆∆) *
cls_ConexionBD
«« 
.
«« 
comando
«« "
=
««# $
New
««% (

SqlCommand
««) 3
(
««3 4
cls_NombresSP
««4 A
.
««A B 
sp_ListarFormLibro
««B T
,
««T U
cls_ConexionBD
««V d
.
««d e
Cnn
««e h
)
««h i
cls_ConexionBD
»» 
.
»» 
comando
»» "
.
»»" #
CommandType
»»# .
=
»»/ 0
CommandType
»»1 <
.
»»< =
StoredProcedure
»»= L
cls_ConexionBD
…… 
.
…… 
comando
…… "
.
……" #

Parameters
……# -
.
……- .
AddWithValue
……. :
(
……: ;
cls_NombresSP
……; H
.
……H I
v_LibroCodNum
……I V
,
……V W
vCodNumerico
……X d
)
……d e
cls_ConexionBD
   
.
   
comando
   "
.
  " #

Parameters
  # -
.
  - .
AddWithValue
  . :
(
  : ;
cls_NombresSP
  ; H
.
  H I
v_tipoLista
  I T
,
  T U
	tipoLista
  V _
)
  _ `
cls_ConexionBD
ÀÀ 
.
ÀÀ 
	adaptador
ÀÀ $
=
ÀÀ% &
New
ÀÀ' *
SqlDataAdapter
ÀÀ+ 9
(
ÀÀ9 :
cls_ConexionBD
ÀÀ: H
.
ÀÀH I
comando
ÀÀI P
)
ÀÀP Q
cls_ConexionBD
ÃÃ 
.
ÃÃ 
	adaptador
ÃÃ $
.
ÃÃ$ %
Fill
ÃÃ% )
(
ÃÃ) *
df
ÃÃ* ,
)
ÃÃ, -
Return
ÕÕ 
df
ÕÕ 
Catch
ŒŒ 
ex1
ŒŒ 
As
ŒŒ 
	Exception
ŒŒ 
Throw
œœ 
Finally
–– 
cls_ConexionBD
—— 
.
—— 
	adaptador
—— $
.
——$ %
Dispose
——% ,
(
——, -
)
——- .
cls_ConexionBD
““ 
.
““ 
Cnn
““ 
.
““ 
Close
““ $
(
““$ %
)
““% &
cls_ConexionBD
”” 
.
”” 
	adaptador
”” $
=
””% &
Nothing
””' .
df
‘‘ 
=
‘‘ 
Nothing
‘‘ 
SqlConnection
’’ 
.
’’ 
ClearAllPools
’’ '
(
’’' (
)
’’( )
End
÷÷ 
Try
÷÷ 
End
◊◊ 
Function
◊◊ 
Public
ŸŸ 

Shared
ŸŸ 
Function
ŸŸ 
ListarLibros
ŸŸ '
(
ŸŸ' (
)
ŸŸ( )
culture_info
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
Dim
€€ 
df
€€ 
As
€€ 
New
€€ 
DataSet
€€ 
(
€€ 
)
€€ 
Try
‹‹ 
cls_ConexionBD
›› 
.
›› 
AbrirConexion
›› (
(
››( )
)
››) *
cls_ConexionBD
ﬁﬁ 
.
ﬁﬁ 
comando
ﬁﬁ "
=
ﬁﬁ# $
New
ﬁﬁ% (

SqlCommand
ﬁﬁ) 3
(
ﬁﬁ3 4
cls_NombresSP
ﬁﬁ4 A
.
ﬁﬁA B
sp_ListarLibros50
ﬁﬁB S
,
ﬁﬁS T
cls_ConexionBD
ﬁﬁU c
.
ﬁﬁc d
Cnn
ﬁﬁd g
)
ﬁﬁg h
cls_ConexionBD
ﬂﬂ 
.
ﬂﬂ 
comando
ﬂﬂ "
.
ﬂﬂ" #
CommandType
ﬂﬂ# .
=
ﬂﬂ/ 0
CommandType
ﬂﬂ1 <
.
ﬂﬂ< =
StoredProcedure
ﬂﬂ= L
cls_ConexionBD
‡‡ 
.
‡‡ 
	adaptador
‡‡ $
=
‡‡% &
New
‡‡' *
SqlDataAdapter
‡‡+ 9
(
‡‡9 :
cls_ConexionBD
‡‡: H
.
‡‡H I
comando
‡‡I P
)
‡‡P Q
cls_ConexionBD
·· 
.
·· 
	adaptador
·· $
.
··$ %
Fill
··% )
(
··) *
df
··* ,
)
··, -
Return
‚‚ 
df
‚‚ 
Catch
„„ 
ex1
„„ 
As
„„ 
	Exception
„„ 
Throw
‰‰ 
Finally
ÂÂ 
cls_ConexionBD
ÊÊ 
.
ÊÊ 
	adaptador
ÊÊ $
.
ÊÊ$ %
Dispose
ÊÊ% ,
(
ÊÊ, -
)
ÊÊ- .
cls_ConexionBD
ÁÁ 
.
ÁÁ 
Cnn
ÁÁ 
.
ÁÁ 
Close
ÁÁ $
(
ÁÁ$ %
)
ÁÁ% &
cls_ConexionBD
ËË 
.
ËË 
	adaptador
ËË $
=
ËË% &
Nothing
ËË' .
df
ÈÈ 
=
ÈÈ 
Nothing
ÈÈ 
SqlConnection
ÍÍ 
.
ÍÍ 
ClearAllPools
ÍÍ '
(
ÍÍ' (
)
ÍÍ( )
End
ÎÎ 
Try
ÎÎ 
End
ÏÏ 
Function
ÏÏ 
Public
ÓÓ 

Shared
ÓÓ 
Function
ÓÓ (
validacionContadorCodLibro
ÓÓ 5
(
ÓÓ5 6
)
ÓÓ6 7
culture_info
ÔÔ 
(
ÔÔ 
)
ÔÔ 
Dim
 
df
 
As
 
New
 
DataSet
 
(
 
)
 
Try
ÒÒ 
cls_ConexionBD
ÚÚ 
.
ÚÚ 
AbrirConexion
ÚÚ (
(
ÚÚ( )
)
ÚÚ) *
cls_ConexionBD
ÛÛ 
.
ÛÛ 
comando
ÛÛ "
=
ÛÛ# $
New
ÛÛ% (

SqlCommand
ÛÛ) 3
(
ÛÛ3 4
cls_NombresSP
ÛÛ4 A
.
ÛÛA B
sp_ContadorLibro
ÛÛB R
,
ÛÛR S
cls_ConexionBD
ÛÛT b
.
ÛÛb c
Cnn
ÛÛc f
)
ÛÛf g
cls_ConexionBD
ÙÙ 
.
ÙÙ 
comando
ÙÙ "
.
ÙÙ" #
CommandType
ÙÙ# .
=
ÙÙ/ 0
CommandType
ÙÙ1 <
.
ÙÙ< =
StoredProcedure
ÙÙ= L
cls_ConexionBD
ıı 
.
ıı 
	adaptador
ıı $
=
ıı% &
New
ıı' *
SqlDataAdapter
ıı+ 9
(
ıı9 :
cls_ConexionBD
ıı: H
.
ııH I
comando
ııI P
)
ııP Q
cls_ConexionBD
ˆˆ 
.
ˆˆ 
	adaptador
ˆˆ $
.
ˆˆ$ %
Fill
ˆˆ% )
(
ˆˆ) *
df
ˆˆ* ,
)
ˆˆ, -
Return
˜˜ 
df
˜˜ 
Catch
¯¯ 
ex1
¯¯ 
As
¯¯ 
	Exception
¯¯ 
Throw
˘˘ 
Finally
˙˙ 
cls_ConexionBD
˚˚ 
.
˚˚ 
	adaptador
˚˚ $
.
˚˚$ %
Dispose
˚˚% ,
(
˚˚, -
)
˚˚- .
cls_ConexionBD
¸¸ 
.
¸¸ 
Cnn
¸¸ 
.
¸¸ 
Close
¸¸ $
(
¸¸$ %
)
¸¸% &
cls_ConexionBD
˛˛ 
.
˛˛ 
	adaptador
˛˛ $
=
˛˛% &
Nothing
˛˛' .
df
ˇˇ 
=
ˇˇ 
Nothing
ˇˇ 
SqlConnection
ÅÅ 
.
ÅÅ 
ClearAllPools
ÅÅ '
(
ÅÅ' (
)
ÅÅ( )
End
ÇÇ 
Try
ÇÇ 
End
ÉÉ 
Function
ÉÉ 
Public
ÖÖ 

Shared
ÖÖ 
Function
ÖÖ 
Listar_Movimiento
ÖÖ ,
(
ÖÖ, -
)
ÖÖ- .
As
ÖÖ/ 1
DataSet
ÖÖ2 9
culture_info
ÜÜ 
(
ÜÜ 
)
ÜÜ 
Dim
áá 
ds
áá 
As
áá 
New
áá 
DataSet
áá 
(
áá 
)
áá 
Try
àà 
cls_ConexionBD
ââ 
.
ââ 
AbrirConexion
ââ (
(
ââ( )
)
ââ) *
cls_ConexionBD
ää 
.
ää 
comando
ää "
=
ää# $
New
ää% (

SqlCommand
ää) 3
(
ää3 4
cls_NombresSP
ää4 A
.
ääA B
sp_ListarLibros50
ääB S
,
ääS T
cls_ConexionBD
ääU c
.
ääc d
Cnn
ääd g
)
ääg h
cls_ConexionBD
ãã 
.
ãã 
comando
ãã "
.
ãã" #
CommandType
ãã# .
=
ãã/ 0
CommandType
ãã1 <
.
ãã< =
StoredProcedure
ãã= L
cls_ConexionBD
åå 
.
åå 
	adaptador
åå $
=
åå% &
New
åå' *
SqlDataAdapter
åå+ 9
(
åå9 :
cls_ConexionBD
åå: H
.
ååH I
comando
ååI P
)
ååP Q
cls_ConexionBD
çç 
.
çç 
	adaptador
çç $
.
çç$ %
Fill
çç% )
(
çç) *
ds
çç* ,
)
çç, -
Return
éé 
ds
éé 
Catch
èè 
ex1
èè 
As
èè 
	Exception
èè 
Throw
êê 
Finally
ëë 
cls_ConexionBD
íí 
.
íí 
	adaptador
íí $
.
íí$ %
Dispose
íí% ,
(
íí, -
)
íí- .
cls_ConexionBD
ìì 
.
ìì 
Cnn
ìì 
.
ìì 
Close
ìì $
(
ìì$ %
)
ìì% &
cls_ConexionBD
îî 
.
îî 
	adaptador
îî $
=
îî% &
Nothing
îî' .
ds
ïï 
=
ïï 
Nothing
ïï 
SqlConnection
ññ 
.
ññ 
ClearAllPools
ññ '
(
ññ' (
)
ññ( )
End
óó 
Try
óó 
End
òò 
Function
òò 
Public
úú 

Shared
úú 
Function
úú *
validacionContadorIdPrestamo
úú 7
(
úú7 8
)
úú8 9
culture_info
ùù 
(
ùù 
)
ùù 
Dim
ûû 
df
ûû 
As
ûû 
New
ûû 
DataSet
ûû 
(
ûû 
)
ûû 
Try
üü 
cls_ConexionBD
†† 
.
†† 
AbrirConexion
†† (
(
††( )
)
††) *
cls_ConexionBD
°° 
.
°° 
comando
°° "
=
°°# $
New
°°% (

SqlCommand
°°) 3
(
°°3 4
cls_NombresSP
°°4 A
.
°°A B!
sp_ContadorPrestamo
°°B U
,
°°U V
cls_ConexionBD
°°W e
.
°°e f
Cnn
°°f i
)
°°i j
cls_ConexionBD
¢¢ 
.
¢¢ 
comando
¢¢ "
.
¢¢" #
CommandType
¢¢# .
=
¢¢/ 0
CommandType
¢¢1 <
.
¢¢< =
StoredProcedure
¢¢= L
cls_ConexionBD
££ 
.
££ 
	adaptador
££ $
=
££% &
New
££' *
SqlDataAdapter
££+ 9
(
££9 :
cls_ConexionBD
££: H
.
££H I
comando
££I P
)
££P Q
cls_ConexionBD
§§ 
.
§§ 
	adaptador
§§ $
.
§§$ %
Fill
§§% )
(
§§) *
df
§§* ,
)
§§, -
Return
•• 
df
•• 
Catch
¶¶ 
ex1
¶¶ 
As
¶¶ 
	Exception
¶¶ 
Throw
ßß 
Finally
®® 
cls_ConexionBD
©© 
.
©© 
	adaptador
©© $
.
©©$ %
Dispose
©©% ,
(
©©, -
)
©©- .
cls_ConexionBD
™™ 
.
™™ 
Cnn
™™ 
.
™™ 
Close
™™ $
(
™™$ %
)
™™% &
cls_ConexionBD
´´ 
.
´´ 
	adaptador
´´ $
=
´´% &
Nothing
´´' .
df
¨¨ 
=
¨¨ 
Nothing
¨¨ 
SqlConnection
≠≠ 
.
≠≠ 
ClearAllPools
≠≠ '
(
≠≠' (
)
≠≠( )
End
ÆÆ 
Try
ÆÆ 
End
ØØ 
Function
ØØ 
Public
≤≤ 

Shared
≤≤ 
Function
≤≤ (
Listar_Movimiento_Prestamo
≤≤ 5
(
≤≤5 6
)
≤≤6 7
As
≤≤8 :
DataSet
≤≤; B
culture_info
≥≥ 
(
≥≥ 
)
≥≥ 
Dim
¥¥ 
ds
¥¥ 
As
¥¥ 
New
¥¥ 
DataSet
¥¥ 
(
¥¥ 
)
¥¥ 
Try
µµ 
cls_ConexionBD
∂∂ 
.
∂∂ 
AbrirConexion
∂∂ (
(
∂∂( )
)
∂∂) *
cls_ConexionBD
∑∑ 
.
∑∑ 
comando
∑∑ "
=
∑∑# $
New
∑∑% (

SqlCommand
∑∑) 3
(
∑∑3 4
cls_NombresSP
∑∑4 A
.
∑∑A B"
sp_ListarPrestamos50
∑∑B V
,
∑∑V W
cls_ConexionBD
∑∑X f
.
∑∑f g
Cnn
∑∑g j
)
∑∑j k
cls_ConexionBD
∏∏ 
.
∏∏ 
comando
∏∏ "
.
∏∏" #
CommandType
∏∏# .
=
∏∏/ 0
CommandType
∏∏1 <
.
∏∏< =
StoredProcedure
∏∏= L
cls_ConexionBD
ππ 
.
ππ 
	adaptador
ππ $
=
ππ% &
New
ππ' *
SqlDataAdapter
ππ+ 9
(
ππ9 :
cls_ConexionBD
ππ: H
.
ππH I
comando
ππI P
)
ππP Q
cls_ConexionBD
∫∫ 
.
∫∫ 
	adaptador
∫∫ $
.
∫∫$ %
Fill
∫∫% )
(
∫∫) *
ds
∫∫* ,
)
∫∫, -
Return
ªª 
ds
ªª 
Catch
ºº 
ex1
ºº 
As
ºº 
	Exception
ºº 
Throw
ΩΩ 
Finally
ææ 
cls_ConexionBD
øø 
.
øø 
	adaptador
øø $
.
øø$ %
Dispose
øø% ,
(
øø, -
)
øø- .
cls_ConexionBD
¿¿ 
.
¿¿ 
Cnn
¿¿ 
.
¿¿ 
Close
¿¿ $
(
¿¿$ %
)
¿¿% &
cls_ConexionBD
¡¡ 
.
¡¡ 
	adaptador
¡¡ $
=
¡¡% &
Nothing
¡¡' .
ds
¬¬ 
=
¬¬ 
Nothing
¬¬ 
SqlConnection
√√ 
.
√√ 
ClearAllPools
√√ '
(
√√' (
)
√√( )
End
ƒƒ 
Try
ƒƒ 
End
≈≈ 
Function
≈≈ 
Public
»» 

Shared
»» 
Function
»» 
BuscarLector
»» '
(
»»' (
ByVal
»»( -
	vBusqueda
»». 7
As
»»8 :
String
»»; A
,
»»A B
ByVal
»»C H
vBandera
»»I Q
As
»»R T
String
»»U [
)
»»[ \
As
»»] _
DataSet
»»` g
culture_info
…… 
(
…… 
)
…… 
Dim
   
ds
   
As
   
New
   
DataSet
   
(
   
)
   
Try
ÀÀ 
cls_ConexionBD
ÃÃ 
.
ÃÃ #
AbrirConexionPersonal
ÃÃ 0
(
ÃÃ0 1
)
ÃÃ1 2
cls_ConexionBD
ÕÕ 
.
ÕÕ 
comando
ÕÕ "
=
ÕÕ# $
New
ÕÕ% (

SqlCommand
ÕÕ) 3
(
ÕÕ3 4
cls_NombresSP
ÕÕ4 A
.
ÕÕA B
sp_Buscar_Lector
ÕÕB R
,
ÕÕR S
cls_ConexionBD
ÕÕT b
.
ÕÕb c
Cnn
ÕÕc f
)
ÕÕf g
cls_ConexionBD
ŒŒ 
.
ŒŒ 
comando
ŒŒ "
.
ŒŒ" #
CommandType
ŒŒ# .
=
ŒŒ/ 0
CommandType
ŒŒ1 <
.
ŒŒ< =
StoredProcedure
ŒŒ= L
cls_ConexionBD
œœ 
.
œœ 
comando
œœ "
.
œœ" #

Parameters
œœ# -
.
œœ- .
AddWithValue
œœ. :
(
œœ: ;
cls_NombresSP
œœ; H
.
œœH I'
v_PRESTAMO_BusquedaLector
œœI b
,
œœb c
	SqlDbType
œœd m
.
œœm n
VarChar
œœn u
)
œœu v
.
œœv w
Value
œœw |
=
œœ} ~
	vBusquedaœœ à
cls_ConexionBD
–– 
.
–– 
comando
–– "
.
––" #

Parameters
––# -
.
––- .
AddWithValue
––. :
(
––: ;
cls_NombresSP
––; H
.
––H I&
v_PRESTAMO_BanderaLector
––I a
,
––a b
	SqlDbType
––c l
.
––l m
VarChar
––m t
)
––t u
.
––u v
Value
––v {
=
––| }
vBandera––~ Ü
cls_ConexionBD
—— 
.
—— 
	adaptador
—— $
=
——% &
New
——' *
SqlDataAdapter
——+ 9
(
——9 :
cls_ConexionBD
——: H
.
——H I
comando
——I P
)
——P Q
cls_ConexionBD
““ 
.
““ 
	adaptador
““ $
.
““$ %
Fill
““% )
(
““) *
ds
““* ,
)
““, -
Return
”” 
ds
”” 
Catch
‘‘ 
ex
‘‘ 
As
‘‘ 
	Exception
‘‘ 
Throw
’’ 
Finally
÷÷ 
cls_ConexionBD
◊◊ 
.
◊◊ 
comando
◊◊ "
.
◊◊" #
Dispose
◊◊# *
(
◊◊* +
)
◊◊+ ,
cls_ConexionBD
ÿÿ 
.
ÿÿ 
Cnn
ÿÿ 
.
ÿÿ 
Close
ÿÿ $
(
ÿÿ$ %
)
ÿÿ% &
cls_ConexionBD
ŸŸ 
.
ŸŸ 
	adaptador
ŸŸ $
=
ŸŸ% &
Nothing
ŸŸ' .
ds
⁄⁄ 
=
⁄⁄ 
Nothing
⁄⁄ 
SqlConnection
€€ 
.
€€ 
ClearAllPools
€€ '
(
€€' (
)
€€( )
End
‹‹ 
Try
‹‹ 
End
›› 
Function
›› 
Public
ﬂﬂ 

Shared
ﬂﬂ 
Function
ﬂﬂ &
ListarFormLectorGridVieW
ﬂﬂ 3
(
ﬂﬂ3 4
ByVal
ﬂﬂ4 9
vCodNumerico
ﬂﬂ: F
As
ﬂﬂG I
String
ﬂﬂJ P
)
ﬂﬂP Q
culture_info
‡‡ 
(
‡‡ 
)
‡‡ 
Dim
·· 
df
·· 
As
·· 
New
·· 
DataSet
·· 
(
·· 
)
·· 
Try
‚‚ 
cls_ConexionBD
„„ 
.
„„ #
AbrirConexionPersonal
„„ 0
(
„„0 1
)
„„1 2
cls_ConexionBD
‰‰ 
.
‰‰ 
comando
‰‰ "
=
‰‰# $
New
‰‰% (

SqlCommand
‰‰) 3
(
‰‰3 4
cls_NombresSP
‰‰4 A
.
‰‰A B!
sp_ListarFormLector
‰‰B U
,
‰‰U V
cls_ConexionBD
‰‰W e
.
‰‰e f
Cnn
‰‰f i
)
‰‰i j
cls_ConexionBD
ÂÂ 
.
ÂÂ 
comando
ÂÂ "
.
ÂÂ" #
CommandType
ÂÂ# .
=
ÂÂ/ 0
CommandType
ÂÂ1 <
.
ÂÂ< =
StoredProcedure
ÂÂ= L
cls_ConexionBD
ÊÊ 
.
ÊÊ 
comando
ÊÊ "
.
ÊÊ" #

Parameters
ÊÊ# -
.
ÊÊ- .
AddWithValue
ÊÊ. :
(
ÊÊ: ;
cls_NombresSP
ÊÊ; H
.
ÊÊH I"
v_PRESTAMO_CodLector
ÊÊI ]
,
ÊÊ] ^
vCodNumerico
ÊÊ_ k
)
ÊÊk l
cls_ConexionBD
ÁÁ 
.
ÁÁ 
	adaptador
ÁÁ $
=
ÁÁ% &
New
ÁÁ' *
SqlDataAdapter
ÁÁ+ 9
(
ÁÁ9 :
cls_ConexionBD
ÁÁ: H
.
ÁÁH I
comando
ÁÁI P
)
ÁÁP Q
cls_ConexionBD
ËË 
.
ËË 
	adaptador
ËË $
.
ËË$ %
Fill
ËË% )
(
ËË) *
df
ËË* ,
)
ËË, -
Return
ÈÈ 
df
ÈÈ 
Catch
ÍÍ 
ex1
ÍÍ 
As
ÍÍ 
	Exception
ÍÍ 
Throw
ÎÎ 
Finally
ÏÏ 
cls_ConexionBD
ÌÌ 
.
ÌÌ 
	adaptador
ÌÌ $
.
ÌÌ$ %
Dispose
ÌÌ% ,
(
ÌÌ, -
)
ÌÌ- .
cls_ConexionBD
ÓÓ 
.
ÓÓ 
Cnn
ÓÓ 
.
ÓÓ 
Close
ÓÓ $
(
ÓÓ$ %
)
ÓÓ% &
cls_ConexionBD
ÔÔ 
.
ÔÔ 
	adaptador
ÔÔ $
=
ÔÔ% &
Nothing
ÔÔ' .
df
 
=
 
Nothing
 
SqlConnection
ÒÒ 
.
ÒÒ 
ClearAllPools
ÒÒ '
(
ÒÒ' (
)
ÒÒ( )
End
ÚÚ 
Try
ÚÚ 
End
ÛÛ 
Function
ÛÛ 
Public
˜˜ 

Shared
˜˜ 
Function
˜˜ 
BuscarPestamo
˜˜ (
(
˜˜( )
ByVal
˜˜) .
	vBusqueda
˜˜/ 8
As
˜˜9 ;
String
˜˜< B
,
˜˜B C
ByVal
˜˜D I
vBandera
˜˜J R
As
˜˜S U
String
˜˜V \
)
˜˜\ ]
As
˜˜^ `
DataSet
˜˜a h
culture_info
¯¯ 
(
¯¯ 
)
¯¯ 
Dim
˘˘ 
ds
˘˘ 
As
˘˘ 
New
˘˘ 
DataSet
˘˘ 
(
˘˘ 
)
˘˘ 
Try
˙˙ 
cls_ConexionBD
˚˚ 
.
˚˚ 
AbrirConexion
˚˚ (
(
˚˚( )
)
˚˚) *
cls_ConexionBD
¸¸ 
.
¸¸ 
comando
¸¸ "
=
¸¸# $
New
¸¸% (

SqlCommand
¸¸) 3
(
¸¸3 4
cls_NombresSP
¸¸4 A
.
¸¸A B 
sp_Buscar_Prestamo
¸¸B T
,
¸¸T U
cls_ConexionBD
¸¸V d
.
¸¸d e
Cnn
¸¸e h
)
¸¸h i
cls_ConexionBD
˝˝ 
.
˝˝ 
comando
˝˝ "
.
˝˝" #
CommandType
˝˝# .
=
˝˝/ 0
CommandType
˝˝1 <
.
˝˝< =
StoredProcedure
˝˝= L
cls_ConexionBD
˛˛ 
.
˛˛ 
comando
˛˛ "
.
˛˛" #

Parameters
˛˛# -
.
˛˛- .
AddWithValue
˛˛. :
(
˛˛: ;
cls_NombresSP
˛˛; H
.
˛˛H I+
v_PRESTAMO_BusquedaMovimiento
˛˛I f
,
˛˛f g
	SqlDbType
˛˛h q
.
˛˛q r
VarChar
˛˛r y
)
˛˛y z
.
˛˛z {
Value˛˛{ Ä
=˛˛Å Ç
	vBusqueda˛˛É å
cls_ConexionBD
ˇˇ 
.
ˇˇ 
comando
ˇˇ "
.
ˇˇ" #

Parameters
ˇˇ# -
.
ˇˇ- .
AddWithValue
ˇˇ. :
(
ˇˇ: ;
cls_NombresSP
ˇˇ; H
.
ˇˇH I*
v_PRESTAMO_BanderaMovimiento
ˇˇI e
,
ˇˇe f
	SqlDbType
ˇˇg p
.
ˇˇp q
VarChar
ˇˇq x
)
ˇˇx y
.
ˇˇy z
Value
ˇˇz 
=ˇˇÄ Å
vBanderaˇˇÇ ä
cls_ConexionBD
ÄÄ 
.
ÄÄ 
	adaptador
ÄÄ $
=
ÄÄ% &
New
ÄÄ' *
SqlDataAdapter
ÄÄ+ 9
(
ÄÄ9 :
cls_ConexionBD
ÄÄ: H
.
ÄÄH I
comando
ÄÄI P
)
ÄÄP Q
cls_ConexionBD
ÅÅ 
.
ÅÅ 
	adaptador
ÅÅ $
.
ÅÅ$ %
Fill
ÅÅ% )
(
ÅÅ) *
ds
ÅÅ* ,
)
ÅÅ, -
Return
ÇÇ 
ds
ÇÇ 
Catch
ÉÉ 
ex
ÉÉ 
As
ÉÉ 
	Exception
ÉÉ 
Throw
ÑÑ 
Finally
ÖÖ 
cls_ConexionBD
ÜÜ 
.
ÜÜ 
comando
ÜÜ "
.
ÜÜ" #
Dispose
ÜÜ# *
(
ÜÜ* +
)
ÜÜ+ ,
cls_ConexionBD
áá 
.
áá 
Cnn
áá 
.
áá 
Close
áá $
(
áá$ %
)
áá% &
cls_ConexionBD
àà 
.
àà 
	adaptador
àà $
=
àà% &
Nothing
àà' .
ds
ââ 
=
ââ 
Nothing
ââ 
SqlConnection
ää 
.
ää 
ClearAllPools
ää '
(
ää' (
)
ää( )
End
ãã 
Try
ãã 
End
åå 
Function
åå 
Public
èè 

Shared
èè 
Function
èè  
Registrar_Prestamo
èè -
(
èè- .
ByVal
èè. 3 
vLectorCodEmpleado
èè4 F
As
èèG I
String
èèJ P
,
èèP Q
ByVal
èèR W
vLectorNombre
èèX e
As
èèf h
String
èèi o
,
èèo p
ByVal
êê. 3
vLibroCodRegistro
êê4 E
As
êêF H
String
êêI O
,
êêO P
ByVal
êêQ V
vLibroTitulo
êêW c
As
êêd f
String
êêg m
,
êêm n
ByVal
êêo t

vCodClasif
êêu 
AsêêÄ Ç
StringêêÉ â
,êêâ ä
ByVal
ëë. 3
vFechaPrestamo
ëë4 B
As
ëëC E
String
ëëF L
,
ëëL M
ByVal
ëëN S
vHoraPrestamo
ëëT a
As
ëëb d
String
ëëe k
,
ëëk l
ByVal
ëëm r
vFechaDevolucionëës É
AsëëÑ Ü
Stringëëá ç
,ëëç é
ByVal
íí. 3
vTipoOperacion
íí4 B
As
ííC E
String
ííF L
,
ííL M
ByVal
ìì. 3
vPrestProvincia
ìì4 C
As
ììD F
String
ììG M
,
ììM N
ByVal
ììO T
vPrestEspecial
ììU c
As
ììd f
String
ììg m
)
ììm n
Try
îî 
culture_info
ïï 
(
ïï 
)
ïï 
cls_ConexionBD
ññ 
.
ññ 
AbrirConexion
ññ (
(
ññ( )
)
ññ) *
cls_ConexionBD
óó 
.
óó 
Cnn
óó 
.
óó 
Open
óó #
(
óó# $
)
óó$ %
cls_ConexionBD
òò 
.
òò 
comando
òò "
=
òò# $
New
òò% (

SqlCommand
òò) 3
(
òò3 4
cls_NombresSP
òò4 A
.
òòA B"
sp_registra_Prestamo
òòB V
,
òòV W
cls_ConexionBD
òòX f
.
òòf g
Cnn
òòg j
)
òòj k
cls_ConexionBD
ôô 
.
ôô 
comando
ôô "
.
ôô" #
CommandType
ôô# .
=
ôô/ 0
CommandType
ôô1 <
.
ôô< =
StoredProcedure
ôô= L
cls_ConexionBD
õõ 
.
õõ 
comando
õõ "
.
õõ" #

Parameters
õõ# -
.
õõ- .
AddWithValue
õõ. :
(
õõ: ;
cls_NombresSP
õõ; H
.
õõH I%
v_PRESTAMO_Cod_Empleado
õõI `
,
õõ` a 
vLectorCodEmpleado
õõb t
)
õõt u
cls_ConexionBD
úú 
.
úú 
comando
úú "
.
úú" #

Parameters
úú# -
.
úú- .
AddWithValue
úú. :
(
úú: ;
cls_NombresSP
úú; H
.
úúH I&
v_PRESTAMO_Nombre_Lector
úúI a
,
úúa b
vLectorNombre
úúc p
)
úúp q
cls_ConexionBD
ûû 
.
ûû 
comando
ûû "
.
ûû" #

Parameters
ûû# -
.
ûû- .
AddWithValue
ûû. :
(
ûû: ;
cls_NombresSP
ûû; H
.
ûûH I$
v_PRESTAMO_CodNumLibro
ûûI _
,
ûû_ `
vLibroCodRegistro
ûûa r
)
ûûr s
cls_ConexionBD
üü 
.
üü 
comando
üü "
.
üü" #

Parameters
üü# -
.
üü- .
AddWithValue
üü. :
(
üü: ;
cls_NombresSP
üü; H
.
üüH I%
v_PRESTAMO_Titulo_Libro
üüI `
,
üü` a
vLibroTitulo
üüb n
)
üün o
cls_ConexionBD
†† 
.
†† 
comando
†† "
.
††" #

Parameters
††# -
.
††- .
AddWithValue
††. :
(
††: ;
cls_NombresSP
††; H
.
††H I(
v_PRESTAMO_CodClasif_Libro
††I c
,
††c d

vCodClasif
††e o
)
††o p
cls_ConexionBD
¢¢ 
.
¢¢ 
comando
¢¢ "
.
¢¢" #

Parameters
¢¢# -
.
¢¢- .
Add
¢¢. 1
(
¢¢1 2
cls_NombresSP
¢¢2 ?
.
¢¢? @&
v_PRESTAMO_FechaPrestamo
¢¢@ X
,
¢¢X Y
	SqlDbType
¢¢Z c
.
¢¢c d
SmallDateTime
¢¢d q
,
¢¢q r
$num
¢¢s t
)
¢¢t u
.
¢¢u v
Value
¢¢v {
=
¢¢| }
vFechaPrestamo¢¢~ å
cls_ConexionBD
££ 
.
££ 
comando
££ "
.
££" #

Parameters
££# -
.
££- .
AddWithValue
££. :
(
££: ;
cls_NombresSP
££; H
.
££H I%
v_PRESTAMO_HoraPrestamo
££I `
,
££` a
vHoraPrestamo
££b o
)
££o p
cls_ConexionBD
§§ 
.
§§ 
comando
§§ "
.
§§" #

Parameters
§§# -
.
§§- .
Add
§§. 1
(
§§1 2
cls_NombresSP
§§2 ?
.
§§? @(
v_PRESTAMO_FechaDevolucion
§§@ Z
,
§§Z [
	SqlDbType
§§\ e
.
§§e f
SmallDateTime
§§f s
,
§§s t
$num
§§u v
)
§§v w
.
§§w x
Value
§§x }
=
§§~  
vFechaDevolucion§§Ä ê
cls_ConexionBD
¶¶ 
.
¶¶ 
comando
¶¶ "
.
¶¶" #

Parameters
¶¶# -
.
¶¶- .
AddWithValue
¶¶. :
(
¶¶: ;
cls_NombresSP
¶¶; H
.
¶¶H I&
v_PRESTAMO_TipoOperacion
¶¶I a
,
¶¶a b
vTipoOperacion
¶¶c q
)
¶¶q r
cls_ConexionBD
®® 
.
®® 
comando
®® "
.
®®" #

Parameters
®®# -
.
®®- .
AddWithValue
®®. :
(
®®: ;
cls_NombresSP
®®; H
.
®®H I*
v_PRESTAMO_PrestamoProvincia
®®I e
,
®®e f
vPrestProvincia
®®g v
)
®®v w
cls_ConexionBD
©© 
.
©© 
comando
©© "
.
©©" #

Parameters
©©# -
.
©©- .
AddWithValue
©©. :
(
©©: ;
cls_NombresSP
©©; H
.
©©H I)
v_PRESTAMO_PrestamoEspecial
©©I d
,
©©d e
vPrestEspecial
©©f t
)
©©t u
cls_ConexionBD
´´ 
.
´´ 
comando
´´ "
.
´´" #
ExecuteNonQuery
´´# 2
(
´´2 3
)
´´3 4
Return
¨¨ 
True
¨¨ 
Catch
≠≠ 
ex
≠≠ 
As
≠≠ 
	Exception
≠≠ 
Throw
ÆÆ 
Finally
ØØ 
cls_ConexionBD
∞∞ 
.
∞∞ 
comando
∞∞ "
.
∞∞" #
Dispose
∞∞# *
(
∞∞* +
)
∞∞+ ,
cls_ConexionBD
±± 
.
±± 
Cnn
±± 
.
±± 
Close
±± $
(
±±$ %
)
±±% &
End
≤≤ 
Try
≤≤ 
End
≥≥ 
Function
≥≥ 
Public
∂∂ 

Shared
∂∂ 
Function
∂∂ !
Actualizar_Prestamo
∂∂ .
(
∂∂. /
ByVal
∂∂/ 4
vIdPrestamo
∂∂5 @
As
∂∂A C
String
∂∂D J
,
∂∂J K
ByVal
∂∂L Q
vLibroCodRegistro
∂∂R c
As
∂∂d f
String
∂∂g m
,
∂∂m n
ByVal
∑∑/ 4
vFechaPrestamo
∑∑5 C
As
∑∑D F
String
∑∑G M
,
∑∑M N
ByVal
∑∑O T
vFechaDevolucion
∑∑U e
As
∑∑f h
String
∑∑i o
,
∑∑o p
ByVal
∏∏/ 4
vTipoOperacion
∏∏5 C
As
∏∏D F
String
∏∏G M
,
∏∏M N
vFechaAnulacion
∏∏O ^
As
∏∏_ a
String
∏∏b h
)
∏∏h i
Try
ππ 
culture_info
∫∫ 
(
∫∫ 
)
∫∫ 
cls_ConexionBD
ªª 
.
ªª 
AbrirConexion
ªª (
(
ªª( )
)
ªª) *
cls_ConexionBD
ºº 
.
ºº 
Cnn
ºº 
.
ºº 
Open
ºº #
(
ºº# $
)
ºº$ %
cls_ConexionBD
ΩΩ 
.
ΩΩ 
comando
ΩΩ "
=
ΩΩ# $
New
ΩΩ% (

SqlCommand
ΩΩ) 3
(
ΩΩ3 4
cls_NombresSP
ΩΩ4 A
.
ΩΩA B#
sp_Modificar_Prestamo
ΩΩB W
,
ΩΩW X
cls_ConexionBD
ΩΩY g
.
ΩΩg h
Cnn
ΩΩh k
)
ΩΩk l
cls_ConexionBD
ææ 
.
ææ 
comando
ææ "
.
ææ" #
CommandType
ææ# .
=
ææ/ 0
CommandType
ææ1 <
.
ææ< =
StoredProcedure
ææ= L
cls_ConexionBD
øø 
.
øø 
comando
øø "
.
øø" #

Parameters
øø# -
.
øø- .
AddWithValue
øø. :
(
øø: ;
cls_NombresSP
øø; H
.
øøH I%
v_PRESTAMO_IdMovimiento
øøI `
,
øø` a
vIdPrestamo
øøb m
)
øøm n
cls_ConexionBD
¿¿ 
.
¿¿ 
comando
¿¿ "
.
¿¿" #

Parameters
¿¿# -
.
¿¿- .
AddWithValue
¿¿. :
(
¿¿: ;
cls_NombresSP
¿¿; H
.
¿¿H I$
v_PRESTAMO_CodNumLibro
¿¿I _
,
¿¿_ `
vLibroCodRegistro
¿¿a r
)
¿¿r s
cls_ConexionBD
¡¡ 
.
¡¡ 
comando
¡¡ "
.
¡¡" #

Parameters
¡¡# -
.
¡¡- .
Add
¡¡. 1
(
¡¡1 2
cls_NombresSP
¡¡2 ?
.
¡¡? @&
v_PRESTAMO_FechaPrestamo
¡¡@ X
,
¡¡X Y
	SqlDbType
¡¡Z c
.
¡¡c d
SmallDateTime
¡¡d q
,
¡¡q r
$num
¡¡s t
)
¡¡t u
.
¡¡u v
Value
¡¡v {
=
¡¡| }
vFechaPrestamo¡¡~ å
cls_ConexionBD
¬¬ 
.
¬¬ 
comando
¬¬ "
.
¬¬" #

Parameters
¬¬# -
.
¬¬- .
Add
¬¬. 1
(
¬¬1 2
cls_NombresSP
¬¬2 ?
.
¬¬? @(
v_PRESTAMO_FechaDevolucion
¬¬@ Z
,
¬¬Z [
	SqlDbType
¬¬\ e
.
¬¬e f
SmallDateTime
¬¬f s
,
¬¬s t
$num
¬¬u v
)
¬¬v w
.
¬¬w x
Value
¬¬x }
=
¬¬~  
vFechaDevolucion¬¬Ä ê
cls_ConexionBD
√√ 
.
√√ 
comando
√√ "
.
√√" #

Parameters
√√# -
.
√√- .
Add
√√. 1
(
√√1 2
cls_NombresSP
√√2 ?
.
√√? @'
v_PRESTAMO_FechaAnulacion
√√@ Y
,
√√Y Z
	SqlDbType
√√[ d
.
√√d e
SmallDateTime
√√e r
,
√√r s
$num
√√t u
)
√√u v
.
√√v w
Value
√√w |
=
√√} ~
vFechaAnulacion√√ é
cls_ConexionBD
ƒƒ 
.
ƒƒ 
comando
ƒƒ "
.
ƒƒ" #

Parameters
ƒƒ# -
.
ƒƒ- .
AddWithValue
ƒƒ. :
(
ƒƒ: ;
cls_NombresSP
ƒƒ; H
.
ƒƒH I&
v_PRESTAMO_TipoOperacion
ƒƒI a
,
ƒƒa b
vTipoOperacion
ƒƒc q
)
ƒƒq r
cls_ConexionBD
≈≈ 
.
≈≈ 
comando
≈≈ "
.
≈≈" #
ExecuteNonQuery
≈≈# 2
(
≈≈2 3
)
≈≈3 4
Return
∆∆ 
True
∆∆ 
Catch
«« 
ex
«« 
As
«« 
	Exception
«« 
Throw
»» 
Finally
…… 
cls_ConexionBD
   
.
   
comando
   "
.
  " #
Dispose
  # *
(
  * +
)
  + ,
cls_ConexionBD
ÀÀ 
.
ÀÀ 
Cnn
ÀÀ 
.
ÀÀ 
Close
ÀÀ $
(
ÀÀ$ %
)
ÀÀ% &
End
ÃÃ 
Try
ÃÃ 
End
ÕÕ 
Function
ÕÕ 
Public
–– 

Shared
–– 
Function
–– (
ListarFormPrestamoGridVieW
–– 5
(
––5 6
ByVal
––6 ;
vCodPrestamo
––< H
As
––I K
String
––L R
)
––R S
culture_info
—— 
(
—— 
)
—— 
Dim
““ 
df
““ 
As
““ 
New
““ 
DataSet
““ 
(
““ 
)
““ 
Try
”” 
cls_ConexionBD
‘‘ 
.
‘‘ 
AbrirConexion
‘‘ (
(
‘‘( )
)
‘‘) *
cls_ConexionBD
’’ 
.
’’ 
comando
’’ "
=
’’# $
New
’’% (

SqlCommand
’’) 3
(
’’3 4
cls_NombresSP
’’4 A
.
’’A B#
sp_ListarFormPrestamo
’’B W
,
’’W X
cls_ConexionBD
’’Y g
.
’’g h
Cnn
’’h k
)
’’k l
cls_ConexionBD
÷÷ 
.
÷÷ 
comando
÷÷ "
.
÷÷" #
CommandType
÷÷# .
=
÷÷/ 0
CommandType
÷÷1 <
.
÷÷< =
StoredProcedure
÷÷= L
cls_ConexionBD
◊◊ 
.
◊◊ 
comando
◊◊ "
.
◊◊" #

Parameters
◊◊# -
.
◊◊- .
AddWithValue
◊◊. :
(
◊◊: ;
cls_NombresSP
◊◊; H
.
◊◊H I%
v_PRESTAMO_IdMovimiento
◊◊I `
,
◊◊` a
vCodPrestamo
◊◊b n
)
◊◊n o
cls_ConexionBD
ÿÿ 
.
ÿÿ 
	adaptador
ÿÿ $
=
ÿÿ% &
New
ÿÿ' *
SqlDataAdapter
ÿÿ+ 9
(
ÿÿ9 :
cls_ConexionBD
ÿÿ: H
.
ÿÿH I
comando
ÿÿI P
)
ÿÿP Q
cls_ConexionBD
ŸŸ 
.
ŸŸ 
	adaptador
ŸŸ $
.
ŸŸ$ %
Fill
ŸŸ% )
(
ŸŸ) *
df
ŸŸ* ,
)
ŸŸ, -
Return
⁄⁄ 
df
⁄⁄ 
Catch
€€ 
ex1
€€ 
As
€€ 
	Exception
€€ 
Throw
‹‹ 
Finally
›› 
cls_ConexionBD
ﬁﬁ 
.
ﬁﬁ 
	adaptador
ﬁﬁ $
.
ﬁﬁ$ %
Dispose
ﬁﬁ% ,
(
ﬁﬁ, -
)
ﬁﬁ- .
cls_ConexionBD
ﬂﬂ 
.
ﬂﬂ 
Cnn
ﬂﬂ 
.
ﬂﬂ 
Close
ﬂﬂ $
(
ﬂﬂ$ %
)
ﬂﬂ% &
cls_ConexionBD
‡‡ 
.
‡‡ 
	adaptador
‡‡ $
=
‡‡% &
Nothing
‡‡' .
df
·· 
=
·· 
Nothing
·· 
SqlConnection
‚‚ 
.
‚‚ 
ClearAllPools
‚‚ '
(
‚‚' (
)
‚‚( )
End
„„ 
Try
„„ 
End
‰‰ 
Function
‰‰ 
Public
ÊÊ 

Shared
ÊÊ 
Function
ÊÊ !
PrestamosPendientes
ÊÊ .
(
ÊÊ. /
ByVal
ÊÊ/ 4
vBandera
ÊÊ5 =
As
ÊÊ> @
String
ÊÊA G
)
ÊÊG H
culture_info
ÁÁ 
(
ÁÁ 
)
ÁÁ 
Dim
ËË 
ds
ËË 
As
ËË 
New
ËË 
DataSet
ËË 
(
ËË 
)
ËË 
Try
ÈÈ 
cls_ConexionBD
ÍÍ 
.
ÍÍ 
AbrirConexion
ÍÍ (
(
ÍÍ( )
)
ÍÍ) *
cls_ConexionBD
ÎÎ 
.
ÎÎ 
comando
ÎÎ "
=
ÎÎ# $
New
ÎÎ% (

SqlCommand
ÎÎ) 3
(
ÎÎ3 4
cls_NombresSP
ÎÎ4 A
.
ÎÎA B#
sp_Prestamos_Vencidos
ÎÎB W
,
ÎÎW X
cls_ConexionBD
ÎÎY g
.
ÎÎg h
Cnn
ÎÎh k
)
ÎÎk l
cls_ConexionBD
ÏÏ 
.
ÏÏ 
comando
ÏÏ "
.
ÏÏ" #
CommandType
ÏÏ# .
=
ÏÏ/ 0
CommandType
ÏÏ1 <
.
ÏÏ< =
StoredProcedure
ÏÏ= L
cls_ConexionBD
ÌÌ 
.
ÌÌ 
comando
ÌÌ "
.
ÌÌ" #

Parameters
ÌÌ# -
.
ÌÌ- .
AddWithValue
ÌÌ. :
(
ÌÌ: ;
cls_NombresSP
ÌÌ; H
.
ÌÌH I
	v_bandera
ÌÌI R
,
ÌÌR S
vBandera
ÌÌT \
)
ÌÌ\ ]
cls_ConexionBD
ÓÓ 
.
ÓÓ 
	adaptador
ÓÓ $
=
ÓÓ% &
New
ÓÓ' *
SqlDataAdapter
ÓÓ+ 9
(
ÓÓ9 :
cls_ConexionBD
ÓÓ: H
.
ÓÓH I
comando
ÓÓI P
)
ÓÓP Q
cls_ConexionBD
ÔÔ 
.
ÔÔ 
	adaptador
ÔÔ $
.
ÔÔ$ %
Fill
ÔÔ% )
(
ÔÔ) *
ds
ÔÔ* ,
)
ÔÔ, -
Return
 
ds
 
Catch
ÒÒ 
ex1
ÒÒ 
As
ÒÒ 
	Exception
ÒÒ 
Throw
ÚÚ 
Finally
ÛÛ 
cls_ConexionBD
ÙÙ 
.
ÙÙ 
	adaptador
ÙÙ $
.
ÙÙ$ %
Dispose
ÙÙ% ,
(
ÙÙ, -
)
ÙÙ- .
cls_ConexionBD
ıı 
.
ıı 
Cnn
ıı 
.
ıı 
Close
ıı $
(
ıı$ %
)
ıı% &
cls_ConexionBD
ˆˆ 
.
ˆˆ 
	adaptador
ˆˆ $
=
ˆˆ% &
Nothing
ˆˆ' .
ds
˜˜ 
=
˜˜ 
Nothing
˜˜ 
SqlConnection
¯¯ 
.
¯¯ 
ClearAllPools
¯¯ '
(
¯¯' (
)
¯¯( )
End
˘˘ 
Try
˘˘ 
End
˙˙ 
Function
˙˙ 
Public
¸¸ 

Shared
¸¸ 
Function
¸¸ 
Reservas
¸¸ #
(
¸¸# $
ByVal
¸¸$ )
vBandera
¸¸* 2
As
¸¸3 5
String
¸¸6 <
)
¸¸< =
culture_info
˝˝ 
(
˝˝ 
)
˝˝ 
Dim
˛˛ 
ds
˛˛ 
As
˛˛ 
New
˛˛ 
DataSet
˛˛ 
(
˛˛ 
)
˛˛ 
Try
ˇˇ 
cls_ConexionBD
ÄÄ 
.
ÄÄ 
AbrirConexion
ÄÄ (
(
ÄÄ( )
)
ÄÄ) *
cls_ConexionBD
ÅÅ 
.
ÅÅ 
comando
ÅÅ "
=
ÅÅ# $
New
ÅÅ% (

SqlCommand
ÅÅ) 3
(
ÅÅ3 4
cls_NombresSP
ÅÅ4 A
.
ÅÅA B
sp_Reservas
ÅÅB M
,
ÅÅM N
cls_ConexionBD
ÅÅO ]
.
ÅÅ] ^
Cnn
ÅÅ^ a
)
ÅÅa b
cls_ConexionBD
ÇÇ 
.
ÇÇ 
comando
ÇÇ "
.
ÇÇ" #
CommandType
ÇÇ# .
=
ÇÇ/ 0
CommandType
ÇÇ1 <
.
ÇÇ< =
StoredProcedure
ÇÇ= L
cls_ConexionBD
ÉÉ 
.
ÉÉ 
comando
ÉÉ "
.
ÉÉ" #

Parameters
ÉÉ# -
.
ÉÉ- .
AddWithValue
ÉÉ. :
(
ÉÉ: ;
cls_NombresSP
ÉÉ; H
.
ÉÉH I
	v_bandera
ÉÉI R
,
ÉÉR S
vBandera
ÉÉT \
)
ÉÉ\ ]
cls_ConexionBD
ÑÑ 
.
ÑÑ 
	adaptador
ÑÑ $
=
ÑÑ% &
New
ÑÑ' *
SqlDataAdapter
ÑÑ+ 9
(
ÑÑ9 :
cls_ConexionBD
ÑÑ: H
.
ÑÑH I
comando
ÑÑI P
)
ÑÑP Q
cls_ConexionBD
ÖÖ 
.
ÖÖ 
	adaptador
ÖÖ $
.
ÖÖ$ %
Fill
ÖÖ% )
(
ÖÖ) *
ds
ÖÖ* ,
)
ÖÖ, -
Return
ÜÜ 
ds
ÜÜ 
Catch
áá 
ex1
áá 
As
áá 
	Exception
áá 
Throw
àà 
Finally
ââ 
cls_ConexionBD
ää 
.
ää 
	adaptador
ää $
.
ää$ %
Dispose
ää% ,
(
ää, -
)
ää- .
cls_ConexionBD
ãã 
.
ãã 
Cnn
ãã 
.
ãã 
Close
ãã $
(
ãã$ %
)
ãã% &
cls_ConexionBD
åå 
.
åå 
	adaptador
åå $
=
åå% &
Nothing
åå' .
ds
çç 
=
çç 
Nothing
çç 
SqlConnection
éé 
.
éé 
ClearAllPools
éé '
(
éé' (
)
éé( )
End
èè 
Try
èè 
End
êê 
Function
êê 
Public
îî 

Shared
îî 
Function
îî #
ConsultaRptLibroLista
îî 0
(
îî0 1
ByVal
îî1 6
v_cTipoFecha
îî7 C
As
îîD F
String
îîG M
,
îîM N
ByVal
îîO T
v_cFechaDesde
îîU b
As
îîc e
String
îîf l
,
îîl m
ByVal
îîn s
v_cFechaHastaîît Å
AsîîÇ Ñ
StringîîÖ ã
,îîã å
ByVal
ïï4 9
v_cBandera_Tipo
ïï: I
As
ïïJ L
String
ïïM S
,
ïïS T
ByVal
ïïU Z
v_cAutor
ïï[ c
As
ïïd f
String
ïïg m
)
ïïm n
As
ïïo q
DataSet
ïïr y
culture_info
ññ 
(
ññ 
)
ññ 
Dim
óó 
ds
óó 
As
óó 
New
óó 
DataSet
óó 
(
óó 
)
óó 
Try
òò 
cls_ConexionBD
ôô 
.
ôô 
AbrirConexion
ôô (
(
ôô( )
)
ôô) *
cls_ConexionBD
öö 
.
öö 
comando
öö "
=
öö# $
New
öö% (

SqlCommand
öö) 3
(
öö3 4
cls_NombresSP
öö4 A
.
ööA B 
sp_Rpt_Libro_Lista
ööB T
,
ööT U
cls_ConexionBD
ööV d
.
ööd e
Cnn
ööe h
)
ööh i
cls_ConexionBD
õõ 
.
õõ 
comando
õõ "
.
õõ" #
CommandType
õõ# .
=
õõ/ 0
CommandType
õõ1 <
.
õõ< =
StoredProcedure
õõ= L
cls_ConexionBD
úú 
.
úú 
comando
úú "
.
úú" #

Parameters
úú# -
.
úú- .
AddWithValue
úú. :
(
úú: ;
cls_NombresSP
úú; H
.
úúH I
v_RPT_TipoFecha
úúI X
,
úúX Y
	SqlDbType
úúZ c
.
úúc d
VarChar
úúd k
)
úúk l
.
úúl m
Value
úúm r
=
úús t
v_cTipoFechaúúu Å
cls_ConexionBD
ùù 
.
ùù 
comando
ùù "
.
ùù" #

Parameters
ùù# -
.
ùù- .
Add
ùù. 1
(
ùù1 2
cls_NombresSP
ùù2 ?
.
ùù? @
v_RPT_FechaDesde
ùù@ P
,
ùùP Q
	SqlDbType
ùùR [
.
ùù[ \
SmallDateTime
ùù\ i
,
ùùi j
$num
ùùk l
)
ùùl m
.
ùùm n
Value
ùùn s
=
ùùt u
v_cFechaDesdeùùv É
cls_ConexionBD
ûû 
.
ûû 
comando
ûû "
.
ûû" #

Parameters
ûû# -
.
ûû- .
Add
ûû. 1
(
ûû1 2
cls_NombresSP
ûû2 ?
.
ûû? @
v_RPT_FechaHasta
ûû@ P
,
ûûP Q
	SqlDbType
ûûR [
.
ûû[ \
SmallDateTime
ûû\ i
,
ûûi j
$num
ûûk l
)
ûûl m
.
ûûm n
Value
ûûn s
=
ûût u
v_cFechaHastaûûv É
cls_ConexionBD
üü 
.
üü 
comando
üü "
.
üü" #

Parameters
üü# -
.
üü- .
AddWithValue
üü. :
(
üü: ;
cls_NombresSP
üü; H
.
üüH I 
v_RPT_Bandera_Tipo
üüI [
,
üü[ \
	SqlDbType
üü] f
.
üüf g
VarChar
üüg n
)
üün o
.
üüo p
Value
üüp u
=
üüv w
v_cBandera_Tipoüüx á
cls_ConexionBD
†† 
.
†† 
comando
†† "
.
††" #

Parameters
††# -
.
††- .
AddWithValue
††. :
(
††: ;
cls_NombresSP
††; H
.
††H I
v_RPT_Autor
††I T
,
††T U
	SqlDbType
††V _
.
††_ `
VarChar
††` g
)
††g h
.
††h i
Value
††i n
=
††o p
v_cAutor
††q y
cls_ConexionBD
°° 
.
°° 
	adaptador
°° $
=
°°% &
New
°°' *
SqlDataAdapter
°°+ 9
(
°°9 :
cls_ConexionBD
°°: H
.
°°H I
comando
°°I P
)
°°P Q
cls_ConexionBD
¢¢ 
.
¢¢ 
	adaptador
¢¢ $
.
¢¢$ %
Fill
¢¢% )
(
¢¢) *
ds
¢¢* ,
)
¢¢, -
Return
££ 
ds
££ 
Catch
§§ 
ex1
§§ 
As
§§ 
	Exception
§§ 
Throw
•• 
Finally
¶¶ 
cls_ConexionBD
ßß 
.
ßß 
	adaptador
ßß $
.
ßß$ %
Dispose
ßß% ,
(
ßß, -
)
ßß- .
cls_ConexionBD
®® 
.
®® 
Cnn
®® 
.
®® 
Close
®® $
(
®®$ %
)
®®% &
cls_ConexionBD
™™ 
.
™™ 
	adaptador
™™ $
=
™™% &
Nothing
™™' .
ds
´´ 
=
´´ 
Nothing
´´ 
SqlConnection
¨¨ 
.
¨¨ 
ClearAllPools
¨¨ '
(
¨¨' (
)
¨¨( )
End
≠≠ 
Try
≠≠ 
End
ÆÆ 
Function
ÆÆ 
Public
∞∞ 

Shared
∞∞ 
Function
∞∞ 
InventarioLibro
∞∞ *
(
∞∞* +
)
∞∞+ ,
As
∞∞- /
DataSet
∞∞0 7
culture_info
±± 
(
±± 
)
±± 
Dim
≤≤ 
ds
≤≤ 
As
≤≤ 
New
≤≤ 
DataSet
≤≤ 
(
≤≤ 
)
≤≤ 
Try
≥≥ 
cls_ConexionBD
¥¥ 
.
¥¥ 
AbrirConexion
¥¥ (
(
¥¥( )
)
¥¥) *
cls_ConexionBD
µµ 
.
µµ 
comando
µµ "
=
µµ# $
New
µµ% (

SqlCommand
µµ) 3
(
µµ3 4
cls_NombresSP
µµ4 A
.
µµA B%
sp_Rpt_Libro_Inventario
µµB Y
,
µµY Z
cls_ConexionBD
µµ[ i
.
µµi j
Cnn
µµj m
)
µµm n
cls_ConexionBD
∂∂ 
.
∂∂ 
comando
∂∂ "
.
∂∂" #
CommandType
∂∂# .
=
∂∂/ 0
CommandType
∂∂1 <
.
∂∂< =
StoredProcedure
∂∂= L
cls_ConexionBD
∑∑ 
.
∑∑ 
	adaptador
∑∑ $
=
∑∑% &
New
∑∑' *
SqlDataAdapter
∑∑+ 9
(
∑∑9 :
cls_ConexionBD
∑∑: H
.
∑∑H I
comando
∑∑I P
)
∑∑P Q
cls_ConexionBD
∏∏ 
.
∏∏ 
	adaptador
∏∏ $
.
∏∏$ %
Fill
∏∏% )
(
∏∏) *
ds
∏∏* ,
)
∏∏, -
Return
ππ 
ds
ππ 
Catch
∫∫ 
ex1
∫∫ 
As
∫∫ 
	Exception
∫∫ 
Throw
ªª 
Finally
ºº 
cls_ConexionBD
ΩΩ 
.
ΩΩ 
	adaptador
ΩΩ $
.
ΩΩ$ %
Dispose
ΩΩ% ,
(
ΩΩ, -
)
ΩΩ- .
cls_ConexionBD
ææ 
.
ææ 
Cnn
ææ 
.
ææ 
Close
ææ $
(
ææ$ %
)
ææ% &
cls_ConexionBD
øø 
.
øø 
	adaptador
øø $
=
øø% &
Nothing
øø' .
ds
¿¿ 
=
¿¿ 
Nothing
¿¿ 
SqlConnection
¡¡ 
.
¡¡ 
ClearAllPools
¡¡ '
(
¡¡' (
)
¡¡( )
End
¬¬ 
Try
¬¬ 
End
√√ 
Function
√√ 
Public
∆∆ 

Shared
∆∆ 
Function
∆∆ &
ConsultaRptPrestamoLista
∆∆ 3
(
∆∆3 4
ByVal
∆∆4 9
v_cTipoFecha
∆∆: F
As
∆∆G I
String
∆∆J P
,
∆∆P Q
ByVal
∆∆R W
v_cFechaDesde
∆∆X e
As
∆∆f h
String
∆∆i o
,
∆∆o p
ByVal
∆∆q v
v_cFechaHasta∆∆w Ñ
As∆∆Ö á
String∆∆à é
,∆∆é è
ByVal
««4 9
v_cBandera_Tipo
««: I
As
««J L
String
««M S
)
««S T
As
««U W
DataSet
««X _
culture_info
»» 
(
»» 
)
»» 
Dim
…… 
ds
…… 
As
…… 
New
…… 
DataSet
…… 
(
…… 
)
…… 
Try
   
cls_ConexionBD
ÀÀ 
.
ÀÀ 
AbrirConexion
ÀÀ (
(
ÀÀ( )
)
ÀÀ) *
cls_ConexionBD
ÃÃ 
.
ÃÃ 
comando
ÃÃ "
=
ÃÃ# $
New
ÃÃ% (

SqlCommand
ÃÃ) 3
(
ÃÃ3 4
cls_NombresSP
ÃÃ4 A
.
ÃÃA B#
sp_Rpt_Prestamo_Lista
ÃÃB W
,
ÃÃW X
cls_ConexionBD
ÃÃY g
.
ÃÃg h
Cnn
ÃÃh k
)
ÃÃk l
cls_ConexionBD
ÕÕ 
.
ÕÕ 
comando
ÕÕ "
.
ÕÕ" #
CommandType
ÕÕ# .
=
ÕÕ/ 0
CommandType
ÕÕ1 <
.
ÕÕ< =
StoredProcedure
ÕÕ= L
cls_ConexionBD
ŒŒ 
.
ŒŒ 
comando
ŒŒ "
.
ŒŒ" #

Parameters
ŒŒ# -
.
ŒŒ- .
AddWithValue
ŒŒ. :
(
ŒŒ: ;
cls_NombresSP
ŒŒ; H
.
ŒŒH I
v_RPT_TipoFecha
ŒŒI X
,
ŒŒX Y
	SqlDbType
ŒŒZ c
.
ŒŒc d
VarChar
ŒŒd k
)
ŒŒk l
.
ŒŒl m
Value
ŒŒm r
=
ŒŒs t
v_cTipoFechaŒŒu Å
cls_ConexionBD
œœ 
.
œœ 
comando
œœ "
.
œœ" #

Parameters
œœ# -
.
œœ- .
Add
œœ. 1
(
œœ1 2
cls_NombresSP
œœ2 ?
.
œœ? @
v_RPT_FechaDesde
œœ@ P
,
œœP Q
	SqlDbType
œœR [
.
œœ[ \
SmallDateTime
œœ\ i
,
œœi j
$num
œœk l
)
œœl m
.
œœm n
Value
œœn s
=
œœt u
v_cFechaDesdeœœv É
cls_ConexionBD
–– 
.
–– 
comando
–– "
.
––" #

Parameters
––# -
.
––- .
Add
––. 1
(
––1 2
cls_NombresSP
––2 ?
.
––? @
v_RPT_FechaHasta
––@ P
,
––P Q
	SqlDbType
––R [
.
––[ \
SmallDateTime
––\ i
,
––i j
$num
––k l
)
––l m
.
––m n
Value
––n s
=
––t u
v_cFechaHasta––v É
cls_ConexionBD
—— 
.
—— 
comando
—— "
.
——" #

Parameters
——# -
.
——- .
AddWithValue
——. :
(
——: ;
cls_NombresSP
——; H
.
——H I 
v_RPT_Bandera_Tipo
——I [
,
——[ \
	SqlDbType
——] f
.
——f g
VarChar
——g n
)
——n o
.
——o p
Value
——p u
=
——v w
v_cBandera_Tipo——x á
cls_ConexionBD
““ 
.
““ 
	adaptador
““ $
=
““% &
New
““' *
SqlDataAdapter
““+ 9
(
““9 :
cls_ConexionBD
““: H
.
““H I
comando
““I P
)
““P Q
cls_ConexionBD
”” 
.
”” 
	adaptador
”” $
.
””$ %
Fill
””% )
(
””) *
ds
””* ,
)
””, -
Return
‘‘ 
ds
‘‘ 
Catch
’’ 
ex1
’’ 
As
’’ 
	Exception
’’ 
Throw
÷÷ 
Finally
◊◊ 
cls_ConexionBD
ÿÿ 
.
ÿÿ 
	adaptador
ÿÿ $
.
ÿÿ$ %
Dispose
ÿÿ% ,
(
ÿÿ, -
)
ÿÿ- .
cls_ConexionBD
ŸŸ 
.
ŸŸ 
Cnn
ŸŸ 
.
ŸŸ 
Close
ŸŸ $
(
ŸŸ$ %
)
ŸŸ% &
cls_ConexionBD
€€ 
.
€€ 
	adaptador
€€ $
=
€€% &
Nothing
€€' .
ds
‹‹ 
=
‹‹ 
Nothing
‹‹ 
SqlConnection
›› 
.
›› 
ClearAllPools
›› '
(
››' (
)
››( )
End
ﬁﬁ 
Try
ﬁﬁ 
End
ﬂﬂ 
Function
ﬂﬂ 
Public
„„ 

Shared
„„ 
Function
„„ #
ConsultaRptHccListaV2
„„ 0
(
„„0 1
ByVal
„„1 6
v_cTipoFecha
„„7 C
As
„„D F
String
„„G M
,
„„M N
ByVal
„„O T
v_cFechaDesde
„„U b
As
„„c e
String
„„f l
,
„„l m
ByVal
„„n s
v_cFechaHasta„„t Å
As„„Ç Ñ
String„„Ö ã
,„„ã å
ByVal
‰‰1 6
v_Bandera_Tipo
‰‰7 E
As
‰‰F H
String
‰‰I O
)
‰‰O P
As
‰‰Q S
DataSet
‰‰T [
culture_info
ÂÂ 
(
ÂÂ 
)
ÂÂ 
Dim
ÊÊ 
ds
ÊÊ 
As
ÊÊ 
New
ÊÊ 
DataSet
ÊÊ 
(
ÊÊ 
)
ÊÊ 
Try
ÁÁ 
cls_ConexionBD
ËË 
.
ËË 
AbrirConexion
ËË (
(
ËË( )
)
ËË) *
cls_ConexionBD
ÈÈ 
.
ÈÈ 
comando
ÈÈ "
=
ÈÈ# $
New
ÈÈ% (

SqlCommand
ÈÈ) 3
(
ÈÈ3 4
cls_NombresSP
ÈÈ4 A
.
ÈÈA B 
sp_Rpt_Hcc_ListaV2
ÈÈB T
,
ÈÈT U
cls_ConexionBD
ÈÈV d
.
ÈÈd e
Cnn
ÈÈe h
)
ÈÈh i
cls_ConexionBD
ÍÍ 
.
ÍÍ 
comando
ÍÍ "
.
ÍÍ" #
CommandType
ÍÍ# .
=
ÍÍ/ 0
CommandType
ÍÍ1 <
.
ÍÍ< =
StoredProcedure
ÍÍ= L
cls_ConexionBD
ÎÎ 
.
ÎÎ 
comando
ÎÎ "
.
ÎÎ" #

Parameters
ÎÎ# -
.
ÎÎ- .
AddWithValue
ÎÎ. :
(
ÎÎ: ;
cls_NombresSP
ÎÎ; H
.
ÎÎH I
v_RPT_TipoFecha
ÎÎI X
,
ÎÎX Y
	SqlDbType
ÎÎZ c
.
ÎÎc d
VarChar
ÎÎd k
)
ÎÎk l
.
ÎÎl m
Value
ÎÎm r
=
ÎÎs t
v_cTipoFechaÎÎu Å
cls_ConexionBD
ÏÏ 
.
ÏÏ 
comando
ÏÏ "
.
ÏÏ" #

Parameters
ÏÏ# -
.
ÏÏ- .
Add
ÏÏ. 1
(
ÏÏ1 2
cls_NombresSP
ÏÏ2 ?
.
ÏÏ? @
v_RPT_FechaDesde
ÏÏ@ P
,
ÏÏP Q
	SqlDbType
ÏÏR [
.
ÏÏ[ \
SmallDateTime
ÏÏ\ i
,
ÏÏi j
$num
ÏÏk l
)
ÏÏl m
.
ÏÏm n
Value
ÏÏn s
=
ÏÏt u
v_cFechaDesdeÏÏv É
cls_ConexionBD
ÌÌ 
.
ÌÌ 
comando
ÌÌ "
.
ÌÌ" #

Parameters
ÌÌ# -
.
ÌÌ- .
Add
ÌÌ. 1
(
ÌÌ1 2
cls_NombresSP
ÌÌ2 ?
.
ÌÌ? @
v_RPT_FechaHasta
ÌÌ@ P
,
ÌÌP Q
	SqlDbType
ÌÌR [
.
ÌÌ[ \
SmallDateTime
ÌÌ\ i
,
ÌÌi j
$num
ÌÌk l
)
ÌÌl m
.
ÌÌm n
Value
ÌÌn s
=
ÌÌt u
v_cFechaHastaÌÌv É
cls_ConexionBD
ÓÓ 
.
ÓÓ 
comando
ÓÓ "
.
ÓÓ" #

Parameters
ÓÓ# -
.
ÓÓ- .
AddWithValue
ÓÓ. :
(
ÓÓ: ;
cls_NombresSP
ÓÓ; H
.
ÓÓH I 
v_RPT_Bandera_Tipo
ÓÓI [
,
ÓÓ[ \
	SqlDbType
ÓÓ] f
.
ÓÓf g
VarChar
ÓÓg n
)
ÓÓn o
.
ÓÓo p
Value
ÓÓp u
=
ÓÓv w
v_Bandera_TipoÓÓx Ü
cls_ConexionBD
ÔÔ 
.
ÔÔ 
	adaptador
ÔÔ $
=
ÔÔ% &
New
ÔÔ' *
SqlDataAdapter
ÔÔ+ 9
(
ÔÔ9 :
cls_ConexionBD
ÔÔ: H
.
ÔÔH I
comando
ÔÔI P
)
ÔÔP Q
cls_ConexionBD
 
.
 
	adaptador
 $
.
$ %
Fill
% )
(
) *
ds
* ,
)
, -
Return
ÒÒ 
ds
ÒÒ 
Catch
ÚÚ 
ex1
ÚÚ 
As
ÚÚ 
	Exception
ÚÚ 
Throw
ÛÛ 
Finally
ÙÙ 
cls_ConexionBD
ıı 
.
ıı 
	adaptador
ıı $
.
ıı$ %
Dispose
ıı% ,
(
ıı, -
)
ıı- .
cls_ConexionBD
ˆˆ 
.
ˆˆ 
Cnn
ˆˆ 
.
ˆˆ 
Close
ˆˆ $
(
ˆˆ$ %
)
ˆˆ% &
cls_ConexionBD
˜˜ 
.
˜˜ 
	adaptador
˜˜ $
=
˜˜% &
Nothing
˜˜' .
ds
¯¯ 
=
¯¯ 
Nothing
¯¯ 
SqlConnection
˘˘ 
.
˘˘ 
ClearAllPools
˘˘ '
(
˘˘' (
)
˘˘( )
End
˙˙ 
Try
˙˙ 
End
˚˚ 
Function
˚˚ 
Public
˝˝ 

Shared
˝˝ 
Function
˝˝ (
ConsultaRptHccListaBusqWeb
˝˝ 5
(
˝˝5 6
)
˝˝6 7
As
˝˝8 :
DataSet
˝˝; B
culture_info
˛˛ 
(
˛˛ 
)
˛˛ 
Dim
ˇˇ 
ds
ˇˇ 
As
ˇˇ 
New
ˇˇ 
DataSet
ˇˇ 
(
ˇˇ 
)
ˇˇ 
Try
ÄÄ 
cls_ConexionBD
ÅÅ 
.
ÅÅ 
AbrirConexion
ÅÅ (
(
ÅÅ( )
)
ÅÅ) *
cls_ConexionBD
ÇÇ 
.
ÇÇ 
comando
ÇÇ "
=
ÇÇ# $
New
ÇÇ% (

SqlCommand
ÇÇ) 3
(
ÇÇ3 4
cls_NombresSP
ÇÇ4 A
.
ÇÇA B"
sp_Rpt_BusqWeb_Lista
ÇÇB V
,
ÇÇV W
cls_ConexionBD
ÇÇX f
.
ÇÇf g
Cnn
ÇÇg j
)
ÇÇj k
cls_ConexionBD
ÉÉ 
.
ÉÉ 
comando
ÉÉ "
.
ÉÉ" #
CommandType
ÉÉ# .
=
ÉÉ/ 0
CommandType
ÉÉ1 <
.
ÉÉ< =
StoredProcedure
ÉÉ= L
cls_ConexionBD
ÑÑ 
.
ÑÑ 
	adaptador
ÑÑ $
=
ÑÑ% &
New
ÑÑ' *
SqlDataAdapter
ÑÑ+ 9
(
ÑÑ9 :
cls_ConexionBD
ÑÑ: H
.
ÑÑH I
comando
ÑÑI P
)
ÑÑP Q
cls_ConexionBD
ÖÖ 
.
ÖÖ 
	adaptador
ÖÖ $
.
ÖÖ$ %
Fill
ÖÖ% )
(
ÖÖ) *
ds
ÖÖ* ,
)
ÖÖ, -
Return
ÜÜ 
ds
ÜÜ 
Catch
áá 
ex1
áá 
As
áá 
	Exception
áá 
Throw
àà 
Finally
ââ 
cls_ConexionBD
ää 
.
ää 
	adaptador
ää $
.
ää$ %
Dispose
ää% ,
(
ää, -
)
ää- .
cls_ConexionBD
ãã 
.
ãã 
Cnn
ãã 
.
ãã 
Close
ãã $
(
ãã$ %
)
ãã% &
cls_ConexionBD
åå 
.
åå 
	adaptador
åå $
=
åå% &
Nothing
åå' .
ds
çç 
=
çç 
Nothing
çç 
SqlConnection
éé 
.
éé 
ClearAllPools
éé '
(
éé' (
)
éé( )
End
èè 
Try
èè 
End
êê 
Function
êê 
Public
ìì 

Shared
ìì 
Function
ìì 
MostrarParrafo
ìì )
(
ìì) *
ByVal
ìì* /
vBandera
ìì0 8
As
ìì9 ;
String
ìì< B
,
ììB C
ByVal
ììD I
vParrafo
ììJ R
As
ììS U
String
ììV \
)
ìì\ ]
culture_info
îî 
(
îî 
)
îî 
Dim
ïï 
ds
ïï 
As
ïï 
New
ïï 
DataSet
ïï 
(
ïï 
)
ïï 
Try
ññ 
cls_ConexionBD
óó 
.
óó 
AbrirConexion
óó (
(
óó( )
)
óó) *
cls_ConexionBD
òò 
.
òò 
comando
òò "
=
òò# $
New
òò% (

SqlCommand
òò) 3
(
òò3 4
cls_NombresSP
òò4 A
.
òòA B
sp_Configuracion
òòB R
,
òòR S
cls_ConexionBD
òòT b
.
òòb c
Cnn
òòc f
)
òòf g
cls_ConexionBD
ôô 
.
ôô 
comando
ôô "
.
ôô" #
CommandType
ôô# .
=
ôô/ 0
CommandType
ôô1 <
.
ôô< =
StoredProcedure
ôô= L
cls_ConexionBD
öö 
.
öö 
comando
öö "
.
öö" #

Parameters
öö# -
.
öö- .
AddWithValue
öö. :
(
öö: ;
cls_NombresSP
öö; H
.
ööH I
v_Conf_Bandera
ööI W
,
ööW X
vBandera
ööY a
)
ööa b
cls_ConexionBD
õõ 
.
õõ 
comando
õõ "
.
õõ" #

Parameters
õõ# -
.
õõ- .
AddWithValue
õõ. :
(
õõ: ;
cls_NombresSP
õõ; H
.
õõH I
v_Conf_CParrafo
õõI X
,
õõX Y
vParrafo
õõZ b
)
õõb c
cls_ConexionBD
úú 
.
úú 
	adaptador
úú $
=
úú% &
New
úú' *
SqlDataAdapter
úú+ 9
(
úú9 :
cls_ConexionBD
úú: H
.
úúH I
comando
úúI P
)
úúP Q
cls_ConexionBD
ùù 
.
ùù 
	adaptador
ùù $
.
ùù$ %
Fill
ùù% )
(
ùù) *
ds
ùù* ,
)
ùù, -
Return
ûû 
ds
ûû 
Catch
üü 
ex1
üü 
As
üü 
	Exception
üü 
Throw
†† 
Finally
°° 
cls_ConexionBD
¢¢ 
.
¢¢ 
	adaptador
¢¢ $
.
¢¢$ %
Dispose
¢¢% ,
(
¢¢, -
)
¢¢- .
cls_ConexionBD
££ 
.
££ 
Cnn
££ 
.
££ 
Close
££ $
(
££$ %
)
££% &
cls_ConexionBD
§§ 
.
§§ 
	adaptador
§§ $
=
§§% &
Nothing
§§' .
ds
•• 
=
•• 
Nothing
•• 
SqlConnection
¶¶ 
.
¶¶ 
ClearAllPools
¶¶ '
(
¶¶' (
)
¶¶( )
End
ßß 
Try
ßß 
End
®® 
Function
®® 
Public
™™ 

Shared
™™ 
Function
™™  
Actualizar_Parrafo
™™ -
(
™™- .
ByVal
™™. 3
vBandera
™™4 <
As
™™= ?
String
™™@ F
,
™™F G
ByVal
™™H M
vParrafo
™™N V
As
™™W Y
String
™™Z `
)
™™` a
Try
´´ 
culture_info
¨¨ 
(
¨¨ 
)
¨¨ 
cls_ConexionBD
≠≠ 
.
≠≠ 
AbrirConexion
≠≠ (
(
≠≠( )
)
≠≠) *
cls_ConexionBD
ÆÆ 
.
ÆÆ 
Cnn
ÆÆ 
.
ÆÆ 
Open
ÆÆ #
(
ÆÆ# $
)
ÆÆ$ %
cls_ConexionBD
ØØ 
.
ØØ 
comando
ØØ "
=
ØØ# $
New
ØØ% (

SqlCommand
ØØ) 3
(
ØØ3 4
cls_NombresSP
ØØ4 A
.
ØØA B
sp_Configuracion
ØØB R
,
ØØR S
cls_ConexionBD
ØØT b
.
ØØb c
Cnn
ØØc f
)
ØØf g
cls_ConexionBD
∞∞ 
.
∞∞ 
comando
∞∞ "
.
∞∞" #
CommandType
∞∞# .
=
∞∞/ 0
CommandType
∞∞1 <
.
∞∞< =
StoredProcedure
∞∞= L
cls_ConexionBD
±± 
.
±± 
comando
±± "
.
±±" #

Parameters
±±# -
.
±±- .
AddWithValue
±±. :
(
±±: ;
cls_NombresSP
±±; H
.
±±H I
v_Conf_Bandera
±±I W
,
±±W X
vBandera
±±Y a
)
±±a b
cls_ConexionBD
≤≤ 
.
≤≤ 
comando
≤≤ "
.
≤≤" #

Parameters
≤≤# -
.
≤≤- .
AddWithValue
≤≤. :
(
≤≤: ;
cls_NombresSP
≤≤; H
.
≤≤H I
v_Conf_CParrafo
≤≤I X
,
≤≤X Y
vParrafo
≤≤Z b
)
≤≤b c
cls_ConexionBD
≥≥ 
.
≥≥ 
comando
≥≥ "
.
≥≥" #
ExecuteNonQuery
≥≥# 2
(
≥≥2 3
)
≥≥3 4
Return
¥¥ 
True
¥¥ 
Catch
µµ 
ex
µµ 
As
µµ 
	Exception
µµ 
Throw
∂∂ 
Finally
∑∑ 
cls_ConexionBD
∏∏ 
.
∏∏ 
comando
∏∏ "
.
∏∏" #
Dispose
∏∏# *
(
∏∏* +
)
∏∏+ ,
cls_ConexionBD
ππ 
.
ππ 
Cnn
ππ 
.
ππ 
Close
ππ $
(
ππ$ %
)
ππ% &
End
∫∫ 
Try
∫∫ 
End
ªª 
Function
ªª 
Public
ææ 

Shared
ææ 
Function
ææ 
RegistrarLog
ææ '
(
ææ' (
ByVal
ææ( -
cUser_Fecha
ææ. 9
As
ææ: <
String
ææ= C
,
ææC D
ByVal
ææE J

cUser_Hora
ææK U
As
ææV X
String
ææY _
,
ææ_ `
ByVal
øø( -"
cUser_quien_consulta
øø. B
As
øøC E
String
øøF L
,
øøL M
ByVal
øøN S
cUser_DireccionIP
øøT e
As
øøf h
String
øøi o
,
øøo p
ByVal
¿¿( -
cUser_Accion
¿¿. :
As
¿¿; =
String
¿¿> D
,
¿¿D E
ByVal
¿¿F K
cUser_TemaBuscado
¿¿L ]
As
¿¿^ `
String
¿¿a g
,
¿¿g h
ByVal
¿¿i n
cUser_Modulo
¿¿o {
As
¿¿| ~
String¿¿ Ö
)¿¿Ö Ü
Try
¡¡ 
culture_info
¬¬ 
(
¬¬ 
)
¬¬ 
cls_ConexionBD
√√ 
.
√√ 
AbrirConexion
√√ (
(
√√( )
)
√√) *
cls_ConexionBD
ƒƒ 
.
ƒƒ 
Cnn
ƒƒ 
.
ƒƒ 
Open
ƒƒ #
(
ƒƒ# $
)
ƒƒ$ %
cls_ConexionBD
≈≈ 
.
≈≈ 
comando
≈≈ "
=
≈≈# $
New
≈≈% (

SqlCommand
≈≈) 3
(
≈≈3 4
cls_NombresSP
≈≈4 A
.
≈≈A B"
sp_LOG_registrar_log
≈≈B V
,
≈≈V W
cls_ConexionBD
≈≈X f
.
≈≈f g
Cnn
≈≈g j
)
≈≈j k
cls_ConexionBD
∆∆ 
.
∆∆ 
comando
∆∆ "
.
∆∆" #
CommandType
∆∆# .
=
∆∆/ 0
CommandType
∆∆1 <
.
∆∆< =
StoredProcedure
∆∆= L
cls_ConexionBD
«« 
.
«« 
comando
«« "
.
««" #

Parameters
««# -
.
««- .
Add
««. 1
(
««1 2
cls_NombresSP
««2 ?
.
««? @
v_LOG_User_Fecha
««@ P
,
««P Q
	SqlDbType
««R [
.
««[ \
SmallDateTime
««\ i
,
««i j
$num
««k l
)
««l m
.
««m n
Value
««n s
=
««t u
cUser_Fecha««v Å
cls_ConexionBD
»» 
.
»» 
comando
»» "
.
»»" #

Parameters
»»# -
.
»»- .
AddWithValue
»». :
(
»»: ;
cls_NombresSP
»»; H
.
»»H I
v_LOG_User_Hora
»»I X
,
»»X Y

cUser_Hora
»»Z d
)
»»d e
cls_ConexionBD
…… 
.
…… 
comando
…… "
.
……" #

Parameters
……# -
.
……- .
AddWithValue
……. :
(
……: ;
cls_NombresSP
……; H
.
……H I'
v_LOG_User_quien_consulta
……I b
,
……b c"
cUser_quien_consulta
……d x
)
……x y
cls_ConexionBD
   
.
   
comando
   "
.
  " #

Parameters
  # -
.
  - .
AddWithValue
  . :
(
  : ;
cls_NombresSP
  ; H
.
  H I$
v_LOG_User_DireccionIP
  I _
,
  _ `
cUser_DireccionIP
  a r
)
  r s
cls_ConexionBD
ÀÀ 
.
ÀÀ 
comando
ÀÀ "
.
ÀÀ" #

Parameters
ÀÀ# -
.
ÀÀ- .
AddWithValue
ÀÀ. :
(
ÀÀ: ;
cls_NombresSP
ÀÀ; H
.
ÀÀH I
v_LOG_User_Accion
ÀÀI Z
,
ÀÀZ [
cUser_Accion
ÀÀ\ h
)
ÀÀh i
cls_ConexionBD
ÃÃ 
.
ÃÃ 
comando
ÃÃ "
.
ÃÃ" #

Parameters
ÃÃ# -
.
ÃÃ- .
AddWithValue
ÃÃ. :
(
ÃÃ: ;
cls_NombresSP
ÃÃ; H
.
ÃÃH I$
v_LOG_User_TemaBuscado
ÃÃI _
,
ÃÃ_ `
cUser_TemaBuscado
ÃÃa r
)
ÃÃr s
cls_ConexionBD
ÕÕ 
.
ÕÕ 
comando
ÕÕ "
.
ÕÕ" #

Parameters
ÕÕ# -
.
ÕÕ- .
AddWithValue
ÕÕ. :
(
ÕÕ: ;
cls_NombresSP
ÕÕ; H
.
ÕÕH I
v_LOG_User_Modulo
ÕÕI Z
,
ÕÕZ [
cUser_Modulo
ÕÕ\ h
)
ÕÕh i
cls_ConexionBD
ŒŒ 
.
ŒŒ 
comando
ŒŒ "
.
ŒŒ" #
ExecuteNonQuery
ŒŒ# 2
(
ŒŒ2 3
)
ŒŒ3 4
Return
œœ 
True
œœ 
Catch
–– 
ex
–– 
As
–– 
	Exception
–– 
Throw
—— 
Finally
““ 
cls_ConexionBD
”” 
.
”” 
comando
”” "
.
””" #
Dispose
””# *
(
””* +
)
””+ ,
cls_ConexionBD
‘‘ 
.
‘‘ 
Cnn
‘‘ 
.
‘‘ 
Close
‘‘ $
(
‘‘$ %
)
‘‘% &
End
’’ 
Try
’’ 
End
÷÷ 
Function
÷÷ 
End◊◊ 
Class
◊◊ 	Ú
iC:\Users\alex1\Documents\BIBL\16-08-23\ROJO\sln_BIBL_Mantenimiento\CapaNegocio\My Project\AssemblyInfo.vb
< 
Assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
>' (
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
$str (
)( )
>) *
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