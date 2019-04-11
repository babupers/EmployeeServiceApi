”
yD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\App_Start\BundleConfig.cs
	namespace 	
EmployeeServiceApi
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
). /
)/ 0
;0 1
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} Æ
yD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\App_Start\FilterConfig.cs
	namespace 	
EmployeeServiceApi
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} å	
xD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\App_Start\RouteConfig.cs
	namespace 	
EmployeeServiceApi
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} æ
yD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\App_Start\WebApiConfig.cs
	namespace 	
EmployeeServiceApi
 
{ 
public 

static 
class 
WebApiConfig $
{		 
public

 
static

 
void

 
Register

 #
(

# $
HttpConfiguration

$ 5
config

6 <
)

< =
{ 	
config 
. "
MapHttpAttributeRoutes )
() *
)* +
;+ ,
config 
. 
Routes 
. 
MapHttpRoute &
(& '
name 
: 
$str "
," #
routeTemplate 
: 
$str 6
,6 7
defaults 
: 
new 
{ 
id  "
=# $
RouteParameter% 3
.3 4
Optional4 <
}= >
) 
; 
} 	
} 
} Ω
ÅD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\Controllers\EmployeeController.cs
	namespace 	
EmployeeServiceApi
 
. 
Controllers (
{		 
public

 

class

 
EmployeeController

 #
:

$ %
ApiController

& 3
{ 
public 
IEnumerable 
< 
string !
>! "
Get# &
(& '
)' (
{ 	
return 
new 
string 
[ 
] 
{  !
$str" *
,* +
$str, 4
,4 5
$str6 >
}? @
;@ A
} 	
public 
string 
Get 
( 
int 
id  
)  !
{ 	
return 
$str 
; 
} 	
public 
void 
Post 
( 
[ 
FromBody "
]" #
string# )
value* /
)/ 0
{ 	
} 	
public 
void 
Put 
( 
int 
id 
, 
[  !
FromBody! )
]) *
string* 0
value1 6
)6 7
{ 	
}   	
public## 
void## 
Delete## 
(## 
int## 
id## !
)##! "
{$$ 	
}%% 	
}&& 
}'' ’

nD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\Global.asax.cs
	namespace

 	
EmployeeServiceApi


 
{ 
public 

class 
WebApiApplication "
:# $
System% +
.+ ,
Web, /
./ 0
HttpApplication0 ?
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
GlobalConfiguration 
.  
	Configure  )
() *
WebApiConfig* 6
.6 7
Register7 ?
)? @
;@ A
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} •
zD:\MyProjects\GitHub\babupers\babupers\EmployeeServiceApi\EmployeeServiceApi\EmployeeServiceApi\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str -
)- .
]. /
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *