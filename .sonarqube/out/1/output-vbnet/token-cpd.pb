�
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
ByVal	 �
anio
� �
As
� �
String
� �
,
� �
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
� �
String
� �
,
� �
ByVal
� �
idioma
� �
As
� �
String
� �
,
� �
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
As	~ �
String
� �
,
� �
ByVal
� �
nro_edicion
� �
As
� �
String
� �
,
� �
ByVal
� �
lugar
� �
As
� �
String
� �
,
� �
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
� �
,
� �
ByVal
� �
nro_IP
� �
As
� �
String
� �
,
� �
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
String	 �
,
� �
ByVal
� � 
mesAnnoCompraLibro
� �
As
� �
String
� �
)
� �
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
__� �
codNumericoLibro
__� �
As
__� �
String
__� �
,
__� �
ByVal
__� �
Edicion
__� �
As
__� �
String
__� �
,
__� �
ByVal
__� �
anio
__� �
As
__� �
String
__� �
,
__� �
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
``� �
String
``� �
,
``� �
ByVal
``� �
idioma
``� �
As
``� �
String
``� �
,
``� �
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
As	aa~ �
String
aa� �
,
aa� �
ByVal
aa� �
nro_edicion
aa� �
As
aa� �
String
aa� �
,
aa� �
ByVal
aa� �
lugar
aa� �
As
aa� �
String
aa� �
,
aa� �
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
bb� �
,
bb� �
ByVal
bb� �
nro_IP
bb� �
As
bb� �
String
bb� �
,
bb� �
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
String	cc �
,
cc� �
ByVal
cc� � 
mesAnnoCompraLibro
cc� �
As
cc� �
String
cc� �
)
cc� �
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
FechaRegistro	llz �
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
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroPrecioS
��I W
,
��W X
precioS
��Y `
)
��` a
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroPrecioD
��I W
,
��W X
precioD
��Y `
)
��` a
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroMaterias
��I X
,
��X Y
materias
��Z b
)
��b c
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroEstado
��I V
,
��V W
estado
��X ^
)
��^ _
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroNroIp
��I U
,
��U V
nro_IP
��W ]
)
��] ^
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I 
v_LibroUsuarioSist
��I [
,
��[ \
usuarioSist
��] h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroNroPag
��I V
,
��V W

nroPaginas
��X b
)
��b c
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroISBN
��I T
,
��T U
isbn
��V Z
)
��Z [
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
	v_LibroCD
��I R
,
��R S
CD
��T V
)
��V W
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I"
v_LibroMesAnioCompra
��I ]
,
��] ^ 
mesAnnoCompraLibro
��_ q
)
��q r
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� #
Actualizar_Movimiento
�� 0
(
��0 1
ByVal
��1 6
vTituloLibro
��7 C
As
��D F
String
��G M
,
��M N
ByVal
��O T
vCodNumerico
��U a
As
��b d
String
��e k
)
��k l
Try
�� 
culture_info
�� 
(
�� 
)
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Open
�� #
(
��# $
)
��$ %
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_modificar_Libro
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroTitulo
��I V
,
��V W
vTituloLibro
��X d
)
��d e
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroCodNum
��I V
,
��V W
vCodNumerico
��X d
)
��d e
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
ListarFormLibro
�� *
(
��* +
ByVal
��+ 0
	tipoLista
��1 :
As
��; =
String
��> D
,
��D E
ByVal
��F K
vCodNumerico
��L X
As
��Y [
String
��\ b
)
��b c
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_ListarFormLibro
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroCodNum
��I V
,
��V W
vCodNumerico
��X d
)
��d e
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_tipoLista
��I T
,
��T U
	tipoLista
��V _
)
��_ `
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� %
ListarFormLibroGridView
�� 2
(
��2 3
ByVal
��3 8
	tipoLista
��9 B
As
��C E
String
��F L
,
��L M
ByVal
��N S
vCodNumerico
��T `
As
��a c
String
��d j
)
��j k
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_ListarFormLibro
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LibroCodNum
��I V
,
��V W
vCodNumerico
��X d
)
��d e
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_tipoLista
��I T
,
��T U
	tipoLista
��V _
)
��_ `
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
ListarLibros
�� '
(
��' (
)
��( )
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_ListarLibros50
��B S
,
��S T
cls_ConexionBD
��U c
.
��c d
Cnn
��d g
)
��g h
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� (
validacionContadorCodLibro
�� 5
(
��5 6
)
��6 7
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_ContadorLibro
��B R
,
��R S
cls_ConexionBD
��T b
.
��b c
Cnn
��c f
)
��f g
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
Listar_Movimiento
�� ,
(
��, -
)
��- .
As
��/ 1
DataSet
��2 9
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_ListarLibros50
��B S
,
��S T
cls_ConexionBD
��U c
.
��c d
Cnn
��d g
)
��g h
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� *
validacionContadorIdPrestamo
�� 7
(
��7 8
)
��8 9
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B!
sp_ContadorPrestamo
��B U
,
��U V
cls_ConexionBD
��W e
.
��e f
Cnn
��f i
)
��i j
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� (
Listar_Movimiento_Prestamo
�� 5
(
��5 6
)
��6 7
As
��8 :
DataSet
��; B
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B"
sp_ListarPrestamos50
��B V
,
��V W
cls_ConexionBD
��X f
.
��f g
Cnn
��g j
)
��j k
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
BuscarLector
�� '
(
��' (
ByVal
��( -
	vBusqueda
��. 7
As
��8 :
String
��; A
,
��A B
ByVal
��C H
vBandera
��I Q
As
��R T
String
��U [
)
��[ \
As
��] _
DataSet
��` g
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� #
AbrirConexionPersonal
�� 0
(
��0 1
)
��1 2
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_Buscar_Lector
��B R
,
��R S
cls_ConexionBD
��T b
.
��b c
Cnn
��c f
)
��f g
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I'
v_PRESTAMO_BusquedaLector
��I b
,
��b c
	SqlDbType
��d m
.
��m n
VarChar
��n u
)
��u v
.
��v w
Value
��w |
=
��} ~
	vBusqueda�� �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I&
v_PRESTAMO_BanderaLector
��I a
,
��a b
	SqlDbType
��c l
.
��l m
VarChar
��m t
)
��t u
.
��u v
Value
��v {
=
��| }
vBandera��~ �
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� &
ListarFormLectorGridVieW
�� 3
(
��3 4
ByVal
��4 9
vCodNumerico
��: F
As
��G I
String
��J P
)
��P Q
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� #
AbrirConexionPersonal
�� 0
(
��0 1
)
��1 2
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B!
sp_ListarFormLector
��B U
,
��U V
cls_ConexionBD
��W e
.
��e f
Cnn
��f i
)
��i j
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I"
v_PRESTAMO_CodLector
��I ]
,
��] ^
vCodNumerico
��_ k
)
��k l
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
BuscarPestamo
�� (
(
��( )
ByVal
��) .
	vBusqueda
��/ 8
As
��9 ;
String
��< B
,
��B C
ByVal
��D I
vBandera
��J R
As
��S U
String
��V \
)
��\ ]
As
��^ `
DataSet
��a h
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_Buscar_Prestamo
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I+
v_PRESTAMO_BusquedaMovimiento
��I f
,
��f g
	SqlDbType
��h q
.
��q r
VarChar
��r y
)
��y z
.
��z {
Value��{ �
=��� �
	vBusqueda��� �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I*
v_PRESTAMO_BanderaMovimiento
��I e
,
��e f
	SqlDbType
��g p
.
��p q
VarChar
��q x
)
��x y
.
��y z
Value
��z 
=��� �
vBandera��� �
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
��  
Registrar_Prestamo
�� -
(
��- .
ByVal
��. 3 
vLectorCodEmpleado
��4 F
As
��G I
String
��J P
,
��P Q
ByVal
��R W
vLectorNombre
��X e
As
��f h
String
��i o
,
��o p
ByVal
��. 3
vLibroCodRegistro
��4 E
As
��F H
String
��I O
,
��O P
ByVal
��Q V
vLibroTitulo
��W c
As
��d f
String
��g m
,
��m n
ByVal
��o t

vCodClasif
��u 
As��� �
String��� �
,��� �
ByVal
��. 3
vFechaPrestamo
��4 B
As
��C E
String
��F L
,
��L M
ByVal
��N S
vHoraPrestamo
��T a
As
��b d
String
��e k
,
��k l
ByVal
��m r
vFechaDevolucion��s �
As��� �
String��� �
,��� �
ByVal
��. 3
vTipoOperacion
��4 B
As
��C E
String
��F L
,
��L M
ByVal
��. 3
vPrestProvincia
��4 C
As
��D F
String
��G M
,
��M N
ByVal
��O T
vPrestEspecial
��U c
As
��d f
String
��g m
)
��m n
Try
�� 
culture_info
�� 
(
�� 
)
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Open
�� #
(
��# $
)
��$ %
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B"
sp_registra_Prestamo
��B V
,
��V W
cls_ConexionBD
��X f
.
��f g
Cnn
��g j
)
��j k
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I%
v_PRESTAMO_Cod_Empleado
��I `
,
��` a 
vLectorCodEmpleado
��b t
)
��t u
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I&
v_PRESTAMO_Nombre_Lector
��I a
,
��a b
vLectorNombre
��c p
)
��p q
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I$
v_PRESTAMO_CodNumLibro
��I _
,
��_ `
vLibroCodRegistro
��a r
)
��r s
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I%
v_PRESTAMO_Titulo_Libro
��I `
,
��` a
vLibroTitulo
��b n
)
��n o
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I(
v_PRESTAMO_CodClasif_Libro
��I c
,
��c d

vCodClasif
��e o
)
��o p
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @&
v_PRESTAMO_FechaPrestamo
��@ X
,
��X Y
	SqlDbType
��Z c
.
��c d
SmallDateTime
��d q
,
��q r
$num
��s t
)
��t u
.
��u v
Value
��v {
=
��| }
vFechaPrestamo��~ �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I%
v_PRESTAMO_HoraPrestamo
��I `
,
��` a
vHoraPrestamo
��b o
)
��o p
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @(
v_PRESTAMO_FechaDevolucion
��@ Z
,
��Z [
	SqlDbType
��\ e
.
��e f
SmallDateTime
��f s
,
��s t
$num
��u v
)
��v w
.
��w x
Value
��x }
=
��~  
vFechaDevolucion��� �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I&
v_PRESTAMO_TipoOperacion
��I a
,
��a b
vTipoOperacion
��c q
)
��q r
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I*
v_PRESTAMO_PrestamoProvincia
��I e
,
��e f
vPrestProvincia
��g v
)
��v w
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I)
v_PRESTAMO_PrestamoEspecial
��I d
,
��d e
vPrestEspecial
��f t
)
��t u
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� !
Actualizar_Prestamo
�� .
(
��. /
ByVal
��/ 4
vIdPrestamo
��5 @
As
��A C
String
��D J
,
��J K
ByVal
��L Q
vLibroCodRegistro
��R c
As
��d f
String
��g m
,
��m n
ByVal
��/ 4
vFechaPrestamo
��5 C
As
��D F
String
��G M
,
��M N
ByVal
��O T
vFechaDevolucion
��U e
As
��f h
String
��i o
,
��o p
ByVal
��/ 4
vTipoOperacion
��5 C
As
��D F
String
��G M
,
��M N
vFechaAnulacion
��O ^
As
��_ a
String
��b h
)
��h i
Try
�� 
culture_info
�� 
(
�� 
)
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Open
�� #
(
��# $
)
��$ %
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B#
sp_Modificar_Prestamo
��B W
,
��W X
cls_ConexionBD
��Y g
.
��g h
Cnn
��h k
)
��k l
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I%
v_PRESTAMO_IdMovimiento
��I `
,
��` a
vIdPrestamo
��b m
)
��m n
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I$
v_PRESTAMO_CodNumLibro
��I _
,
��_ `
vLibroCodRegistro
��a r
)
��r s
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @&
v_PRESTAMO_FechaPrestamo
��@ X
,
��X Y
	SqlDbType
��Z c
.
��c d
SmallDateTime
��d q
,
��q r
$num
��s t
)
��t u
.
��u v
Value
��v {
=
��| }
vFechaPrestamo��~ �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @(
v_PRESTAMO_FechaDevolucion
��@ Z
,
��Z [
	SqlDbType
��\ e
.
��e f
SmallDateTime
��f s
,
��s t
$num
��u v
)
��v w
.
��w x
Value
��x }
=
��~  
vFechaDevolucion��� �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @'
v_PRESTAMO_FechaAnulacion
��@ Y
,
��Y Z
	SqlDbType
��[ d
.
��d e
SmallDateTime
��e r
,
��r s
$num
��t u
)
��u v
.
��v w
Value
��w |
=
��} ~
vFechaAnulacion�� �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I&
v_PRESTAMO_TipoOperacion
��I a
,
��a b
vTipoOperacion
��c q
)
��q r
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� (
ListarFormPrestamoGridVieW
�� 5
(
��5 6
ByVal
��6 ;
vCodPrestamo
��< H
As
��I K
String
��L R
)
��R S
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
df
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B#
sp_ListarFormPrestamo
��B W
,
��W X
cls_ConexionBD
��Y g
.
��g h
Cnn
��h k
)
��k l
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I%
v_PRESTAMO_IdMovimiento
��I `
,
��` a
vCodPrestamo
��b n
)
��n o
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
df
��* ,
)
��, -
Return
�� 
df
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
df
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� !
PrestamosPendientes
�� .
(
��. /
ByVal
��/ 4
vBandera
��5 =
As
��> @
String
��A G
)
��G H
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B#
sp_Prestamos_Vencidos
��B W
,
��W X
cls_ConexionBD
��Y g
.
��g h
Cnn
��h k
)
��k l
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
	v_bandera
��I R
,
��R S
vBandera
��T \
)
��\ ]
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
Reservas
�� #
(
��# $
ByVal
��$ )
vBandera
��* 2
As
��3 5
String
��6 <
)
��< =
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_Reservas
��B M
,
��M N
cls_ConexionBD
��O ]
.
��] ^
Cnn
��^ a
)
��a b
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
	v_bandera
��I R
,
��R S
vBandera
��T \
)
��\ ]
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� #
ConsultaRptLibroLista
�� 0
(
��0 1
ByVal
��1 6
v_cTipoFecha
��7 C
As
��D F
String
��G M
,
��M N
ByVal
��O T
v_cFechaDesde
��U b
As
��c e
String
��f l
,
��l m
ByVal
��n s
v_cFechaHasta��t �
As��� �
String��� �
,��� �
ByVal
��4 9
v_cBandera_Tipo
��: I
As
��J L
String
��M S
,
��S T
ByVal
��U Z
v_cAutor
��[ c
As
��d f
String
��g m
)
��m n
As
��o q
DataSet
��r y
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_Rpt_Libro_Lista
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_RPT_TipoFecha
��I X
,
��X Y
	SqlDbType
��Z c
.
��c d
VarChar
��d k
)
��k l
.
��l m
Value
��m r
=
��s t
v_cTipoFecha��u �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaDesde
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaDesde��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaHasta
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaHasta��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I 
v_RPT_Bandera_Tipo
��I [
,
��[ \
	SqlDbType
��] f
.
��f g
VarChar
��g n
)
��n o
.
��o p
Value
��p u
=
��v w
v_cBandera_Tipo��x �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_RPT_Autor
��I T
,
��T U
	SqlDbType
��V _
.
��_ `
VarChar
��` g
)
��g h
.
��h i
Value
��i n
=
��o p
v_cAutor
��q y
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
InventarioLibro
�� *
(
��* +
)
��+ ,
As
��- /
DataSet
��0 7
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B%
sp_Rpt_Libro_Inventario
��B Y
,
��Y Z
cls_ConexionBD
��[ i
.
��i j
Cnn
��j m
)
��m n
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� &
ConsultaRptPrestamoLista
�� 3
(
��3 4
ByVal
��4 9
v_cTipoFecha
��: F
As
��G I
String
��J P
,
��P Q
ByVal
��R W
v_cFechaDesde
��X e
As
��f h
String
��i o
,
��o p
ByVal
��q v
v_cFechaHasta��w �
As��� �
String��� �
,��� �
ByVal
��4 9
v_cBandera_Tipo
��: I
As
��J L
String
��M S
)
��S T
As
��U W
DataSet
��X _
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B#
sp_Rpt_Prestamo_Lista
��B W
,
��W X
cls_ConexionBD
��Y g
.
��g h
Cnn
��h k
)
��k l
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_RPT_TipoFecha
��I X
,
��X Y
	SqlDbType
��Z c
.
��c d
VarChar
��d k
)
��k l
.
��l m
Value
��m r
=
��s t
v_cTipoFecha��u �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaDesde
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaDesde��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaHasta
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaHasta��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I 
v_RPT_Bandera_Tipo
��I [
,
��[ \
	SqlDbType
��] f
.
��f g
VarChar
��g n
)
��n o
.
��o p
Value
��p u
=
��v w
v_cBandera_Tipo��x �
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� #
ConsultaRptHccListaV2
�� 0
(
��0 1
ByVal
��1 6
v_cTipoFecha
��7 C
As
��D F
String
��G M
,
��M N
ByVal
��O T
v_cFechaDesde
��U b
As
��c e
String
��f l
,
��l m
ByVal
��n s
v_cFechaHasta��t �
As��� �
String��� �
,��� �
ByVal
��1 6
v_Bandera_Tipo
��7 E
As
��F H
String
��I O
)
��O P
As
��Q S
DataSet
��T [
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B 
sp_Rpt_Hcc_ListaV2
��B T
,
��T U
cls_ConexionBD
��V d
.
��d e
Cnn
��e h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_RPT_TipoFecha
��I X
,
��X Y
	SqlDbType
��Z c
.
��c d
VarChar
��d k
)
��k l
.
��l m
Value
��m r
=
��s t
v_cTipoFecha��u �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaDesde
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaDesde��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_RPT_FechaHasta
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
v_cFechaHasta��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I 
v_RPT_Bandera_Tipo
��I [
,
��[ \
	SqlDbType
��] f
.
��f g
VarChar
��g n
)
��n o
.
��o p
Value
��p u
=
��v w
v_Bandera_Tipo��x �
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� (
ConsultaRptHccListaBusqWeb
�� 5
(
��5 6
)
��6 7
As
��8 :
DataSet
��; B
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B"
sp_Rpt_BusqWeb_Lista
��B V
,
��V W
cls_ConexionBD
��X f
.
��f g
Cnn
��g j
)
��j k
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
MostrarParrafo
�� )
(
��) *
ByVal
��* /
vBandera
��0 8
As
��9 ;
String
��< B
,
��B C
ByVal
��D I
vParrafo
��J R
As
��S U
String
��V \
)
��\ ]
culture_info
�� 
(
�� 
)
�� 
Dim
�� 
ds
�� 
As
�� 
New
�� 
DataSet
�� 
(
�� 
)
�� 
Try
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_Configuracion
��B R
,
��R S
cls_ConexionBD
��T b
.
��b c
Cnn
��c f
)
��f g
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_Conf_Bandera
��I W
,
��W X
vBandera
��Y a
)
��a b
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_Conf_CParrafo
��I X
,
��X Y
vParrafo
��Z b
)
��b c
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
New
��' *
SqlDataAdapter
��+ 9
(
��9 :
cls_ConexionBD
��: H
.
��H I
comando
��I P
)
��P Q
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Fill
��% )
(
��) *
ds
��* ,
)
��, -
Return
�� 
ds
�� 
Catch
�� 
ex1
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
.
��$ %
Dispose
��% ,
(
��, -
)
��- .
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
cls_ConexionBD
�� 
.
�� 
	adaptador
�� $
=
��% &
Nothing
��' .
ds
�� 
=
�� 
Nothing
�� 
SqlConnection
�� 
.
�� 
ClearAllPools
�� '
(
��' (
)
��( )
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
��  
Actualizar_Parrafo
�� -
(
��- .
ByVal
��. 3
vBandera
��4 <
As
��= ?
String
��@ F
,
��F G
ByVal
��H M
vParrafo
��N V
As
��W Y
String
��Z `
)
��` a
Try
�� 
culture_info
�� 
(
�� 
)
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Open
�� #
(
��# $
)
��$ %
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B
sp_Configuracion
��B R
,
��R S
cls_ConexionBD
��T b
.
��b c
Cnn
��c f
)
��f g
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_Conf_Bandera
��I W
,
��W X
vBandera
��Y a
)
��a b
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_Conf_CParrafo
��I X
,
��X Y
vParrafo
��Z b
)
��b c
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
Public
�� 

Shared
�� 
Function
�� 
RegistrarLog
�� '
(
��' (
ByVal
��( -
cUser_Fecha
��. 9
As
��: <
String
��= C
,
��C D
ByVal
��E J

cUser_Hora
��K U
As
��V X
String
��Y _
,
��_ `
ByVal
��( -"
cUser_quien_consulta
��. B
As
��C E
String
��F L
,
��L M
ByVal
��N S
cUser_DireccionIP
��T e
As
��f h
String
��i o
,
��o p
ByVal
��( -
cUser_Accion
��. :
As
��; =
String
��> D
,
��D E
ByVal
��F K
cUser_TemaBuscado
��L ]
As
��^ `
String
��a g
,
��g h
ByVal
��i n
cUser_Modulo
��o {
As
��| ~
String�� �
)��� �
Try
�� 
culture_info
�� 
(
�� 
)
�� 
cls_ConexionBD
�� 
.
�� 
AbrirConexion
�� (
(
��( )
)
��) *
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Open
�� #
(
��# $
)
��$ %
cls_ConexionBD
�� 
.
�� 
comando
�� "
=
��# $
New
��% (

SqlCommand
��) 3
(
��3 4
cls_NombresSP
��4 A
.
��A B"
sp_LOG_registrar_log
��B V
,
��V W
cls_ConexionBD
��X f
.
��f g
Cnn
��g j
)
��j k
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
CommandType
��# .
=
��/ 0
CommandType
��1 <
.
��< =
StoredProcedure
��= L
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
Add
��. 1
(
��1 2
cls_NombresSP
��2 ?
.
��? @
v_LOG_User_Fecha
��@ P
,
��P Q
	SqlDbType
��R [
.
��[ \
SmallDateTime
��\ i
,
��i j
$num
��k l
)
��l m
.
��m n
Value
��n s
=
��t u
cUser_Fecha��v �
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LOG_User_Hora
��I X
,
��X Y

cUser_Hora
��Z d
)
��d e
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I'
v_LOG_User_quien_consulta
��I b
,
��b c"
cUser_quien_consulta
��d x
)
��x y
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I$
v_LOG_User_DireccionIP
��I _
,
��_ `
cUser_DireccionIP
��a r
)
��r s
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LOG_User_Accion
��I Z
,
��Z [
cUser_Accion
��\ h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I$
v_LOG_User_TemaBuscado
��I _
,
��_ `
cUser_TemaBuscado
��a r
)
��r s
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #

Parameters
��# -
.
��- .
AddWithValue
��. :
(
��: ;
cls_NombresSP
��; H
.
��H I
v_LOG_User_Modulo
��I Z
,
��Z [
cUser_Modulo
��\ h
)
��h i
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
ExecuteNonQuery
��# 2
(
��2 3
)
��3 4
Return
�� 
True
�� 
Catch
�� 
ex
�� 
As
�� 
	Exception
�� 
Throw
�� 
Finally
�� 
cls_ConexionBD
�� 
.
�� 
comando
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
cls_ConexionBD
�� 
.
�� 
Cnn
�� 
.
�� 
Close
�� $
(
��$ %
)
��% &
End
�� 
Try
�� 
End
�� 
Function
�� 
End�� 
Class
�� 	�
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