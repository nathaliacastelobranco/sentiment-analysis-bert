??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??

?
dcnn/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???**
shared_namedcnn/embedding/embeddings
?
-dcnn/embedding/embeddings/Read/ReadVariableOpReadVariableOpdcnn/embedding/embeddings*!
_output_shapes
:???*
dtype0
?
dcnn/conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*#
shared_namedcnn/conv1d/kernel
~
&dcnn/conv1d/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d/kernel*#
_output_shapes
:?d*
dtype0
x
dcnn/conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*!
shared_namedcnn/conv1d/bias
q
$dcnn/conv1d/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d/bias*
_output_shapes
:d*
dtype0
?
dcnn/conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*%
shared_namedcnn/conv1d_1/kernel
?
(dcnn/conv1d_1/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_1/kernel*#
_output_shapes
:?d*
dtype0
|
dcnn/conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_1/bias
u
&dcnn/conv1d_1/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_1/bias*
_output_shapes
:d*
dtype0
?
dcnn/conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*%
shared_namedcnn/conv1d_2/kernel
?
(dcnn/conv1d_2/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_2/kernel*#
_output_shapes
:?d*
dtype0
|
dcnn/conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_2/bias
u
&dcnn/conv1d_2/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_2/bias*
_output_shapes
:d*
dtype0
?
dcnn/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*"
shared_namedcnn/dense/kernel
y
%dcnn/dense/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense/kernel* 
_output_shapes
:
??*
dtype0
w
dcnn/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namedcnn/dense/bias
p
#dcnn/dense/bias/Read/ReadVariableOpReadVariableOpdcnn/dense/bias*
_output_shapes	
:?*
dtype0
?
dcnn/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_namedcnn/dense_1/kernel
|
'dcnn/dense_1/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense_1/kernel*
_output_shapes
:	?*
dtype0
z
dcnn/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedcnn/dense_1/bias
s
%dcnn/dense_1/bias/Read/ReadVariableOpReadVariableOpdcnn/dense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
 Adam/dcnn/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*1
shared_name" Adam/dcnn/embedding/embeddings/m
?
4Adam/dcnn/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/dcnn/embedding/embeddings/m*!
_output_shapes
:???*
dtype0
?
Adam/dcnn/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d**
shared_nameAdam/dcnn/conv1d/kernel/m
?
-Adam/dcnn/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d/kernel/m*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*(
shared_nameAdam/dcnn/conv1d/bias/m

+Adam/dcnn/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dcnn/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*,
shared_nameAdam/dcnn/conv1d_1/kernel/m
?
/Adam/dcnn/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_1/kernel/m*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_1/bias/m
?
-Adam/dcnn/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_1/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dcnn/conv1d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*,
shared_nameAdam/dcnn/conv1d_2/kernel/m
?
/Adam/dcnn/conv1d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_2/kernel/m*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_2/bias/m
?
-Adam/dcnn/conv1d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_2/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dcnn/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdam/dcnn/dense/kernel/m
?
,Adam/dcnn/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dcnn/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dcnn/dense/bias/m
~
*Adam/dcnn/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dcnn/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_nameAdam/dcnn/dense_1/kernel/m
?
.Adam/dcnn/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_1/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dcnn/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dcnn/dense_1/bias/m
?
,Adam/dcnn/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_1/bias/m*
_output_shapes
:*
dtype0
?
 Adam/dcnn/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*1
shared_name" Adam/dcnn/embedding/embeddings/v
?
4Adam/dcnn/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/dcnn/embedding/embeddings/v*!
_output_shapes
:???*
dtype0
?
Adam/dcnn/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d**
shared_nameAdam/dcnn/conv1d/kernel/v
?
-Adam/dcnn/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d/kernel/v*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*(
shared_nameAdam/dcnn/conv1d/bias/v

+Adam/dcnn/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dcnn/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*,
shared_nameAdam/dcnn/conv1d_1/kernel/v
?
/Adam/dcnn/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_1/kernel/v*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_1/bias/v
?
-Adam/dcnn/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_1/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dcnn/conv1d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?d*,
shared_nameAdam/dcnn/conv1d_2/kernel/v
?
/Adam/dcnn/conv1d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_2/kernel/v*#
_output_shapes
:?d*
dtype0
?
Adam/dcnn/conv1d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_2/bias/v
?
-Adam/dcnn/conv1d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_2/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dcnn/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdam/dcnn/dense/kernel/v
?
,Adam/dcnn/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dcnn/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/dcnn/dense/bias/v
~
*Adam/dcnn/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dcnn/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_nameAdam/dcnn/dense_1/kernel/v
?
.Adam/dcnn/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_1/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dcnn/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dcnn/dense_1/bias/v
?
,Adam/dcnn/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
	embedding

bigram
trigram
fourgram
pool
dense_1
dropout

last_dense
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
R
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmymzm{ m|!m}*m~+m4m?5m?v?v?v?v?v? v?!v?*v?+v?4v?5v?
N
0
1
2
3
4
 5
!6
*7
+8
49
510
N
0
1
2
3
4
 5
!6
*7
+8
49
510
 
?
?non_trainable_variables

	variables

@layers
trainable_variables
Ametrics
Blayer_regularization_losses
Clayer_metrics
regularization_losses
 
^\
VARIABLE_VALUEdcnn/embedding/embeddings/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
Dnon_trainable_variables
	variables

Elayers
trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses
PN
VARIABLE_VALUEdcnn/conv1d/kernel(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdcnn/conv1d/bias&bigram/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Inon_trainable_variables
	variables

Jlayers
trainable_variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses
SQ
VARIABLE_VALUEdcnn/conv1d_1/kernel)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEdcnn/conv1d_1/bias'trigram/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Nnon_trainable_variables
	variables

Olayers
trainable_variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
regularization_losses
TR
VARIABLE_VALUEdcnn/conv1d_2/kernel*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdcnn/conv1d_2/bias(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
Snon_trainable_variables
"	variables

Tlayers
#trainable_variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses
 
 
 
?
Xnon_trainable_variables
&	variables

Ylayers
'trainable_variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses
PN
VARIABLE_VALUEdcnn/dense/kernel)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdcnn/dense/bias'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?
]non_trainable_variables
,	variables

^layers
-trainable_variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses
 
 
 
?
bnon_trainable_variables
0	variables

clayers
1trainable_variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses
US
VARIABLE_VALUEdcnn/dense_1/kernel,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEdcnn/dense_1/bias*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
gnon_trainable_variables
6	variables

hlayers
7trainable_variables
imetrics
jlayer_regularization_losses
klayer_metrics
8regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
3
4
5
6
7

l0
m1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ntotal
	ocount
p	variables
q	keras_api
D
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

u	variables
?
VARIABLE_VALUE Adam/dcnn/embedding/embeddings/mKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d/kernel/mDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dcnn/conv1d/bias/mBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dcnn/conv1d_1/kernel/mEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dcnn/conv1d_1/bias/mCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dcnn/conv1d_2/kernel/mFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d_2/bias/mDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/dense/kernel/mEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dcnn/dense/bias/mCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dcnn/dense_1/kernel/mHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dcnn/dense_1/bias/mFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE Adam/dcnn/embedding/embeddings/vKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d/kernel/vDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dcnn/conv1d/bias/vBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dcnn/conv1d_1/kernel/vEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dcnn/conv1d_1/bias/vCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dcnn/conv1d_2/kernel/vFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d_2/bias/vDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/dense/kernel/vEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dcnn/dense/bias/vCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dcnn/dense_1/kernel/vHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dcnn/dense_1/bias/vFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dcnn/embedding/embeddingsdcnn/conv1d/kerneldcnn/conv1d/biasdcnn/conv1d_1/kerneldcnn/conv1d_1/biasdcnn/conv1d_2/kerneldcnn/conv1d_2/biasdcnn/dense/kerneldcnn/dense/biasdcnn/dense_1/kerneldcnn/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_461572
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-dcnn/embedding/embeddings/Read/ReadVariableOp&dcnn/conv1d/kernel/Read/ReadVariableOp$dcnn/conv1d/bias/Read/ReadVariableOp(dcnn/conv1d_1/kernel/Read/ReadVariableOp&dcnn/conv1d_1/bias/Read/ReadVariableOp(dcnn/conv1d_2/kernel/Read/ReadVariableOp&dcnn/conv1d_2/bias/Read/ReadVariableOp%dcnn/dense/kernel/Read/ReadVariableOp#dcnn/dense/bias/Read/ReadVariableOp'dcnn/dense_1/kernel/Read/ReadVariableOp%dcnn/dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/dcnn/embedding/embeddings/m/Read/ReadVariableOp-Adam/dcnn/conv1d/kernel/m/Read/ReadVariableOp+Adam/dcnn/conv1d/bias/m/Read/ReadVariableOp/Adam/dcnn/conv1d_1/kernel/m/Read/ReadVariableOp-Adam/dcnn/conv1d_1/bias/m/Read/ReadVariableOp/Adam/dcnn/conv1d_2/kernel/m/Read/ReadVariableOp-Adam/dcnn/conv1d_2/bias/m/Read/ReadVariableOp,Adam/dcnn/dense/kernel/m/Read/ReadVariableOp*Adam/dcnn/dense/bias/m/Read/ReadVariableOp.Adam/dcnn/dense_1/kernel/m/Read/ReadVariableOp,Adam/dcnn/dense_1/bias/m/Read/ReadVariableOp4Adam/dcnn/embedding/embeddings/v/Read/ReadVariableOp-Adam/dcnn/conv1d/kernel/v/Read/ReadVariableOp+Adam/dcnn/conv1d/bias/v/Read/ReadVariableOp/Adam/dcnn/conv1d_1/kernel/v/Read/ReadVariableOp-Adam/dcnn/conv1d_1/bias/v/Read/ReadVariableOp/Adam/dcnn/conv1d_2/kernel/v/Read/ReadVariableOp-Adam/dcnn/conv1d_2/bias/v/Read/ReadVariableOp,Adam/dcnn/dense/kernel/v/Read/ReadVariableOp*Adam/dcnn/dense/bias/v/Read/ReadVariableOp.Adam/dcnn/dense_1/kernel/v/Read/ReadVariableOp,Adam/dcnn/dense_1/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_462098
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedcnn/embedding/embeddingsdcnn/conv1d/kerneldcnn/conv1d/biasdcnn/conv1d_1/kerneldcnn/conv1d_1/biasdcnn/conv1d_2/kerneldcnn/conv1d_2/biasdcnn/dense/kerneldcnn/dense/biasdcnn/dense_1/kerneldcnn/dense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/dcnn/embedding/embeddings/mAdam/dcnn/conv1d/kernel/mAdam/dcnn/conv1d/bias/mAdam/dcnn/conv1d_1/kernel/mAdam/dcnn/conv1d_1/bias/mAdam/dcnn/conv1d_2/kernel/mAdam/dcnn/conv1d_2/bias/mAdam/dcnn/dense/kernel/mAdam/dcnn/dense/bias/mAdam/dcnn/dense_1/kernel/mAdam/dcnn/dense_1/bias/m Adam/dcnn/embedding/embeddings/vAdam/dcnn/conv1d/kernel/vAdam/dcnn/conv1d/bias/vAdam/dcnn/conv1d_1/kernel/vAdam/dcnn/conv1d_1/bias/vAdam/dcnn/conv1d_2/kernel/vAdam/dcnn/conv1d_2/bias/vAdam/dcnn/dense/kernel/vAdam/dcnn/dense/bias/vAdam/dcnn/dense_1/kernel/vAdam/dcnn/dense_1/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_462234??
?
?
C__inference_dense_1_layer_call_and_return_conditional_losses_461224

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?g
?	
@__inference_dcnn_layer_call_and_return_conditional_losses_461715

inputs6
!embedding_embedding_lookup_461643:???I
2conv1d_conv1d_expanddims_1_readvariableop_resource:?d4
&conv1d_biasadd_readvariableop_resource:dK
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:?d6
(conv1d_1_biasadd_readvariableop_resource:dK
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:?d6
(conv1d_2_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/conv1d/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_461643inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/461643*5
_output_shapes#
!:???????????????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/461643*5
_output_shapes#
!:???????????????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2'
%embedding/embedding_lookup/Identity_1?
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/conv1d/ExpandDims/dim?
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/conv1d/ExpandDims?
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp?
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim?
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/conv1d/ExpandDims_1?
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d/conv1d?
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/conv1d/Squeeze?
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
conv1d/BiasAdd/ReadVariableOp?
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d/BiasAddz
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d/Relu?
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indices?
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max?
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_1/conv1d/ExpandDims/dim?
conv1d_1/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d_1/conv1d/ExpandDims?
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim?
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d_1/conv1d/ExpandDims_1?
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d_1/conv1d?
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d_1/conv1d/Squeeze?
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp?
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_1/BiasAdd?
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_1/Relu?
,global_max_pooling1d/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d/Max_1/reduction_indices?
global_max_pooling1d/Max_1Maxconv1d_1/Relu:activations:05global_max_pooling1d/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max_1?
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_2/conv1d/ExpandDims/dim?
conv1d_2/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d_2/conv1d/ExpandDims?
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim?
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d_2/conv1d/ExpandDims_1?
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d_2/conv1d?
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d_2/conv1d/Squeeze?
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_2/BiasAdd/ReadVariableOp?
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_2/BiasAdd?
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_2/Relu?
,global_max_pooling1d/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d/Max_2/reduction_indices?
global_max_pooling1d/Max_2Maxconv1d_2/Relu:activations:05global_max_pooling1d/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!global_max_pooling1d/Max:output:0#global_max_pooling1d/Max_1:output:0#global_max_pooling1d/Max_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulconcat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mulv
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?1
?
@__inference_dcnn_layer_call_and_return_conditional_losses_461499
input_1%
embedding_461464:???$
conv1d_461467:?d
conv1d_461469:d&
conv1d_1_461473:?d
conv1d_1_461475:d&
conv1d_2_461479:?d
conv1d_2_461481:d 
dense_461487:
??
dense_461489:	?!
dense_1_461493:	?
dense_1_461495:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_461464*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_4611082#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_461467conv1d_461469*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_4611282 
conv1d/StatefulPartitionedCall?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392&
$global_max_pooling1d/PartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_1_461473conv1d_1_461475*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_4611572"
 conv1d_1/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_1PartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_1?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2_461479conv1d_2_461481*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_4611802"
 conv1d_2/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_2PartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2-global_max_pooling1d/PartitionedCall:output:0/global_max_pooling1d/PartitionedCall_1:output:0/global_max_pooling1d/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_461487dense_461489*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4612002
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612112
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_461493dense_1_461495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4612242!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_461286

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_1_layer_call_fn_461949

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4612242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_layer_call_and_return_conditional_losses_461778

inputs,
embedding_lookup_461772:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_461772inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0**
_class 
loc:@embedding_lookup/461772*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/461772*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_461572
input_1
unknown:??? 
	unknown_0:?d
	unknown_1:d 
	unknown_2:?d
	unknown_3:d 
	unknown_4:?d
	unknown_5:d
	unknown_6:
??
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_4610682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
?
)__inference_conv1d_2_layer_call_fn_461860

inputs
unknown:?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_4611802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
Q
5__inference_global_max_pooling1d_layer_call_fn_461877

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4610782
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_462234
file_prefix?
*assignvariableop_dcnn_embedding_embeddings:???<
%assignvariableop_1_dcnn_conv1d_kernel:?d1
#assignvariableop_2_dcnn_conv1d_bias:d>
'assignvariableop_3_dcnn_conv1d_1_kernel:?d3
%assignvariableop_4_dcnn_conv1d_1_bias:d>
'assignvariableop_5_dcnn_conv1d_2_kernel:?d3
%assignvariableop_6_dcnn_conv1d_2_bias:d8
$assignvariableop_7_dcnn_dense_kernel:
??1
"assignvariableop_8_dcnn_dense_bias:	?9
&assignvariableop_9_dcnn_dense_1_kernel:	?3
%assignvariableop_10_dcnn_dense_1_bias:'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: #
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: I
4assignvariableop_20_adam_dcnn_embedding_embeddings_m:???D
-assignvariableop_21_adam_dcnn_conv1d_kernel_m:?d9
+assignvariableop_22_adam_dcnn_conv1d_bias_m:dF
/assignvariableop_23_adam_dcnn_conv1d_1_kernel_m:?d;
-assignvariableop_24_adam_dcnn_conv1d_1_bias_m:dF
/assignvariableop_25_adam_dcnn_conv1d_2_kernel_m:?d;
-assignvariableop_26_adam_dcnn_conv1d_2_bias_m:d@
,assignvariableop_27_adam_dcnn_dense_kernel_m:
??9
*assignvariableop_28_adam_dcnn_dense_bias_m:	?A
.assignvariableop_29_adam_dcnn_dense_1_kernel_m:	?:
,assignvariableop_30_adam_dcnn_dense_1_bias_m:I
4assignvariableop_31_adam_dcnn_embedding_embeddings_v:???D
-assignvariableop_32_adam_dcnn_conv1d_kernel_v:?d9
+assignvariableop_33_adam_dcnn_conv1d_bias_v:dF
/assignvariableop_34_adam_dcnn_conv1d_1_kernel_v:?d;
-assignvariableop_35_adam_dcnn_conv1d_1_bias_v:dF
/assignvariableop_36_adam_dcnn_conv1d_2_kernel_v:?d;
-assignvariableop_37_adam_dcnn_conv1d_2_bias_v:d@
,assignvariableop_38_adam_dcnn_dense_kernel_v:
??9
*assignvariableop_39_adam_dcnn_dense_bias_v:	?A
.assignvariableop_40_adam_dcnn_dense_1_kernel_v:	?:
,assignvariableop_41_adam_dcnn_dense_1_bias_v:
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB&bigram/bias/.ATTRIBUTES/VARIABLE_VALUEB)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB'trigram/bias/.ATTRIBUTES/VARIABLE_VALUEB*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUEB(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUEB)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUEB,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_dcnn_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp%assignvariableop_1_dcnn_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dcnn_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp'assignvariableop_3_dcnn_conv1d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_dcnn_conv1d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp'assignvariableop_5_dcnn_conv1d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_dcnn_conv1d_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dcnn_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dcnn_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dcnn_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dcnn_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_dcnn_embedding_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_dcnn_conv1d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dcnn_conv1d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_dcnn_conv1d_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp-assignvariableop_24_adam_dcnn_conv1d_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_dcnn_conv1d_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_dcnn_conv1d_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dcnn_dense_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dcnn_dense_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_dcnn_dense_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_dcnn_dense_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_dcnn_embedding_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp-assignvariableop_32_adam_dcnn_conv1d_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dcnn_conv1d_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp/assignvariableop_34_adam_dcnn_conv1d_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_dcnn_conv1d_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp/assignvariableop_36_adam_dcnn_conv1d_2_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_dcnn_conv1d_2_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp,assignvariableop_38_adam_dcnn_dense_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dcnn_dense_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp.assignvariableop_40_adam_dcnn_dense_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_dcnn_dense_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42f
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_43?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_461211

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?2
?
@__inference_dcnn_layer_call_and_return_conditional_losses_461409

inputs%
embedding_461374:???$
conv1d_461377:?d
conv1d_461379:d&
conv1d_1_461383:?d
conv1d_1_461385:d&
conv1d_2_461389:?d
conv1d_2_461391:d 
dense_461397:
??
dense_461399:	?!
dense_1_461403:	?
dense_1_461405:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_461374*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_4611082#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_461377conv1d_461379*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_4611282 
conv1d/StatefulPartitionedCall?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392&
$global_max_pooling1d/PartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_1_461383conv1d_1_461385*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_4611572"
 conv1d_1/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_1PartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_1?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2_461389conv1d_2_461391*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_4611802"
 conv1d_2/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_2PartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2-global_max_pooling1d/PartitionedCall:output:0/global_max_pooling1d/PartitionedCall_1:output:0/global_max_pooling1d/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_461397dense_461399*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4612002
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612862!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_461403dense_1_461405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4612242!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_layer_call_fn_461929

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612862
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461866

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_dense_layer_call_and_return_conditional_losses_461893

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_461907

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_461801

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_dcnn_layer_call_fn_461769

inputs
unknown:??? 
	unknown_0:?d
	unknown_1:d 
	unknown_2:?d
	unknown_3:d 
	unknown_4:?d
	unknown_5:d
	unknown_6:
??
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dcnn_layer_call_and_return_conditional_losses_4614092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
*__inference_embedding_layer_call_fn_461785

inputs
unknown:???
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_4611082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_461128

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_461180

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_dcnn_layer_call_fn_461742

inputs
unknown:??? 
	unknown_0:?d
	unknown_1:d 
	unknown_2:?d
	unknown_3:d 
	unknown_4:?d
	unknown_5:d
	unknown_6:
??
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dcnn_layer_call_and_return_conditional_losses_4612312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
%__inference_dcnn_layer_call_fn_461256
input_1
unknown:??? 
	unknown_0:?d
	unknown_1:d 
	unknown_2:?d
	unknown_3:d 
	unknown_4:?d
	unknown_5:d
	unknown_6:
??
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dcnn_layer_call_and_return_conditional_losses_4612312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461872

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicesk
MaxMaxinputsMax/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
Max`
IdentityIdentityMax:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????d:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
&__inference_dense_layer_call_fn_461902

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4612002
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_461851

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_layer_call_and_return_conditional_losses_461108

inputs,
embedding_lookup_461102:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_461102inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0**
_class 
loc:@embedding_lookup/461102*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@embedding_lookup/461102*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
%__inference_dcnn_layer_call_fn_461461
input_1
unknown:??? 
	unknown_0:?d
	unknown_1:d 
	unknown_2:?d
	unknown_3:d 
	unknown_4:?d
	unknown_5:d
	unknown_6:
??
	unknown_7:	?
	unknown_8:	?
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dcnn_layer_call_and_return_conditional_losses_4614092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?2
?
@__inference_dcnn_layer_call_and_return_conditional_losses_461537
input_1%
embedding_461502:???$
conv1d_461505:?d
conv1d_461507:d&
conv1d_1_461511:?d
conv1d_1_461513:d&
conv1d_2_461517:?d
conv1d_2_461519:d 
dense_461525:
??
dense_461527:	?!
dense_1_461531:	?
dense_1_461533:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_461502*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_4611082#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_461505conv1d_461507*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_4611282 
conv1d/StatefulPartitionedCall?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392&
$global_max_pooling1d/PartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_1_461511conv1d_1_461513*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_4611572"
 conv1d_1/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_1PartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_1?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2_461517conv1d_2_461519*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_4611802"
 conv1d_2/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_2PartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2-global_max_pooling1d/PartitionedCall:output:0/global_max_pooling1d/PartitionedCall_1:output:0/global_max_pooling1d/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_461525dense_461527*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4612002
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612862!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_461531dense_1_461533*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4612242!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?1
?
@__inference_dcnn_layer_call_and_return_conditional_losses_461231

inputs%
embedding_461109:???$
conv1d_461129:?d
conv1d_461131:d&
conv1d_1_461158:?d
conv1d_1_461160:d&
conv1d_2_461181:?d
conv1d_2_461183:d 
dense_461201:
??
dense_461203:	?!
dense_1_461225:	?
dense_1_461227:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_461109*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_4611082#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_461129conv1d_461131*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_4611282 
conv1d/StatefulPartitionedCall?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392&
$global_max_pooling1d/PartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_1_461158conv1d_1_461160*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_4611572"
 conv1d_1/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_1PartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_1?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2_461181conv1d_2_461183*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_4611802"
 conv1d_2/StatefulPartitionedCall?
&global_max_pooling1d/PartitionedCall_2PartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392(
&global_max_pooling1d/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2-global_max_pooling1d/PartitionedCall:output:0/global_max_pooling1d/PartitionedCall_1:output:0/global_max_pooling1d/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_461201dense_461203*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_4612002
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612112
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_461225dense_1_461227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_4612242!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_461919

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_461826

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_461157

inputsB
+conv1d_expanddims_1_readvariableop_resource:?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
D
(__inference_dropout_layer_call_fn_461924

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_4612112
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461078

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?X
?
__inference__traced_save_462098
file_prefix8
4savev2_dcnn_embedding_embeddings_read_readvariableop1
-savev2_dcnn_conv1d_kernel_read_readvariableop/
+savev2_dcnn_conv1d_bias_read_readvariableop3
/savev2_dcnn_conv1d_1_kernel_read_readvariableop1
-savev2_dcnn_conv1d_1_bias_read_readvariableop3
/savev2_dcnn_conv1d_2_kernel_read_readvariableop1
-savev2_dcnn_conv1d_2_bias_read_readvariableop0
,savev2_dcnn_dense_kernel_read_readvariableop.
*savev2_dcnn_dense_bias_read_readvariableop2
.savev2_dcnn_dense_1_kernel_read_readvariableop0
,savev2_dcnn_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_dcnn_embedding_embeddings_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_kernel_m_read_readvariableop6
2savev2_adam_dcnn_conv1d_bias_m_read_readvariableop:
6savev2_adam_dcnn_conv1d_1_kernel_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_1_bias_m_read_readvariableop:
6savev2_adam_dcnn_conv1d_2_kernel_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_2_bias_m_read_readvariableop7
3savev2_adam_dcnn_dense_kernel_m_read_readvariableop5
1savev2_adam_dcnn_dense_bias_m_read_readvariableop9
5savev2_adam_dcnn_dense_1_kernel_m_read_readvariableop7
3savev2_adam_dcnn_dense_1_bias_m_read_readvariableop?
;savev2_adam_dcnn_embedding_embeddings_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_kernel_v_read_readvariableop6
2savev2_adam_dcnn_conv1d_bias_v_read_readvariableop:
6savev2_adam_dcnn_conv1d_1_kernel_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_1_bias_v_read_readvariableop:
6savev2_adam_dcnn_conv1d_2_kernel_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_2_bias_v_read_readvariableop7
3savev2_adam_dcnn_dense_kernel_v_read_readvariableop5
1savev2_adam_dcnn_dense_bias_v_read_readvariableop9
5savev2_adam_dcnn_dense_1_kernel_v_read_readvariableop7
3savev2_adam_dcnn_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB&bigram/bias/.ATTRIBUTES/VARIABLE_VALUEB)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB'trigram/bias/.ATTRIBUTES/VARIABLE_VALUEB*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUEB(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUEB)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUEB,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_dcnn_embedding_embeddings_read_readvariableop-savev2_dcnn_conv1d_kernel_read_readvariableop+savev2_dcnn_conv1d_bias_read_readvariableop/savev2_dcnn_conv1d_1_kernel_read_readvariableop-savev2_dcnn_conv1d_1_bias_read_readvariableop/savev2_dcnn_conv1d_2_kernel_read_readvariableop-savev2_dcnn_conv1d_2_bias_read_readvariableop,savev2_dcnn_dense_kernel_read_readvariableop*savev2_dcnn_dense_bias_read_readvariableop.savev2_dcnn_dense_1_kernel_read_readvariableop,savev2_dcnn_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_dcnn_embedding_embeddings_m_read_readvariableop4savev2_adam_dcnn_conv1d_kernel_m_read_readvariableop2savev2_adam_dcnn_conv1d_bias_m_read_readvariableop6savev2_adam_dcnn_conv1d_1_kernel_m_read_readvariableop4savev2_adam_dcnn_conv1d_1_bias_m_read_readvariableop6savev2_adam_dcnn_conv1d_2_kernel_m_read_readvariableop4savev2_adam_dcnn_conv1d_2_bias_m_read_readvariableop3savev2_adam_dcnn_dense_kernel_m_read_readvariableop1savev2_adam_dcnn_dense_bias_m_read_readvariableop5savev2_adam_dcnn_dense_1_kernel_m_read_readvariableop3savev2_adam_dcnn_dense_1_bias_m_read_readvariableop;savev2_adam_dcnn_embedding_embeddings_v_read_readvariableop4savev2_adam_dcnn_conv1d_kernel_v_read_readvariableop2savev2_adam_dcnn_conv1d_bias_v_read_readvariableop6savev2_adam_dcnn_conv1d_1_kernel_v_read_readvariableop4savev2_adam_dcnn_conv1d_1_bias_v_read_readvariableop6savev2_adam_dcnn_conv1d_2_kernel_v_read_readvariableop4savev2_adam_dcnn_conv1d_2_bias_v_read_readvariableop3savev2_adam_dcnn_dense_kernel_v_read_readvariableop1savev2_adam_dcnn_dense_bias_v_read_readvariableop5savev2_adam_dcnn_dense_1_kernel_v_read_readvariableop3savev2_adam_dcnn_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :???:?d:d:?d:d:?d:d:
??:?:	?:: : : : : : : : : :???:?d:d:?d:d:?d:d:
??:?:	?::???:?d:d:?d:d:?d:d:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:)%
#
_output_shapes
:?d: 

_output_shapes
:d:)%
#
_output_shapes
:?d: 

_output_shapes
:d:)%
#
_output_shapes
:?d: 

_output_shapes
:d:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:%
!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:???:)%
#
_output_shapes
:?d: 

_output_shapes
:d:)%
#
_output_shapes
:?d: 

_output_shapes
:d:)%
#
_output_shapes
:?d: 

_output_shapes
:d:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::' #
!
_output_shapes
:???:)!%
#
_output_shapes
:?d: "

_output_shapes
:d:)#%
#
_output_shapes
:?d: $

_output_shapes
:d:)%%
#
_output_shapes
:?d: &

_output_shapes
:d:&'"
 
_output_shapes
:
??:!(

_output_shapes	
:?:%)!

_output_shapes
:	?: *

_output_shapes
::+

_output_shapes
: 
?
?
C__inference_dense_1_layer_call_and_return_conditional_losses_461940

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461139

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicesk
MaxMaxinputsMax/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
Max`
IdentityIdentityMax:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????d:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
)__inference_conv1d_1_layer_call_fn_461835

inputs
unknown:?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_4611572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?g
?	
!__inference__wrapped_model_461068
input_1;
&dcnn_embedding_embedding_lookup_461003:???N
7dcnn_conv1d_conv1d_expanddims_1_readvariableop_resource:?d9
+dcnn_conv1d_biasadd_readvariableop_resource:dP
9dcnn_conv1d_1_conv1d_expanddims_1_readvariableop_resource:?d;
-dcnn_conv1d_1_biasadd_readvariableop_resource:dP
9dcnn_conv1d_2_conv1d_expanddims_1_readvariableop_resource:?d;
-dcnn_conv1d_2_biasadd_readvariableop_resource:d=
)dcnn_dense_matmul_readvariableop_resource:
??9
*dcnn_dense_biasadd_readvariableop_resource:	?>
+dcnn_dense_1_matmul_readvariableop_resource:	?:
,dcnn_dense_1_biasadd_readvariableop_resource:
identity??"dcnn/conv1d/BiasAdd/ReadVariableOp?.dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp?$dcnn/conv1d_1/BiasAdd/ReadVariableOp?0dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?$dcnn/conv1d_2/BiasAdd/ReadVariableOp?0dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?!dcnn/dense/BiasAdd/ReadVariableOp? dcnn/dense/MatMul/ReadVariableOp?#dcnn/dense_1/BiasAdd/ReadVariableOp?"dcnn/dense_1/MatMul/ReadVariableOp?dcnn/embedding/embedding_lookup?
dcnn/embedding/embedding_lookupResourceGather&dcnn_embedding_embedding_lookup_461003input_1",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*9
_class/
-+loc:@dcnn/embedding/embedding_lookup/461003*5
_output_shapes#
!:???????????????????*
dtype02!
dcnn/embedding/embedding_lookup?
(dcnn/embedding/embedding_lookup/IdentityIdentity(dcnn/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@dcnn/embedding/embedding_lookup/461003*5
_output_shapes#
!:???????????????????2*
(dcnn/embedding/embedding_lookup/Identity?
*dcnn/embedding/embedding_lookup/Identity_1Identity1dcnn/embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2,
*dcnn/embedding/embedding_lookup/Identity_1?
!dcnn/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!dcnn/conv1d/conv1d/ExpandDims/dim?
dcnn/conv1d/conv1d/ExpandDims
ExpandDims3dcnn/embedding/embedding_lookup/Identity_1:output:0*dcnn/conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dcnn/conv1d/conv1d/ExpandDims?
.dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp7dcnn_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype020
.dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp?
#dcnn/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dcnn/conv1d/conv1d/ExpandDims_1/dim?
dcnn/conv1d/conv1d/ExpandDims_1
ExpandDims6dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0,dcnn/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2!
dcnn/conv1d/conv1d/ExpandDims_1?
dcnn/conv1d/conv1dConv2D&dcnn/conv1d/conv1d/ExpandDims:output:0(dcnn/conv1d/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
dcnn/conv1d/conv1d?
dcnn/conv1d/conv1d/SqueezeSqueezedcnn/conv1d/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
dcnn/conv1d/conv1d/Squeeze?
"dcnn/conv1d/BiasAdd/ReadVariableOpReadVariableOp+dcnn_conv1d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02$
"dcnn/conv1d/BiasAdd/ReadVariableOp?
dcnn/conv1d/BiasAddBiasAdd#dcnn/conv1d/conv1d/Squeeze:output:0*dcnn/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d/BiasAdd?
dcnn/conv1d/ReluReludcnn/conv1d/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d/Relu?
/dcnn/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/dcnn/global_max_pooling1d/Max/reduction_indices?
dcnn/global_max_pooling1d/MaxMaxdcnn/conv1d/Relu:activations:08dcnn/global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
dcnn/global_max_pooling1d/Max?
#dcnn/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#dcnn/conv1d_1/conv1d/ExpandDims/dim?
dcnn/conv1d_1/conv1d/ExpandDims
ExpandDims3dcnn/embedding/embedding_lookup/Identity_1:output:0,dcnn/conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2!
dcnn/conv1d_1/conv1d/ExpandDims?
0dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype022
0dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?
%dcnn/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%dcnn/conv1d_1/conv1d/ExpandDims_1/dim?
!dcnn/conv1d_1/conv1d/ExpandDims_1
ExpandDims8dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2#
!dcnn/conv1d_1/conv1d/ExpandDims_1?
dcnn/conv1d_1/conv1dConv2D(dcnn/conv1d_1/conv1d/ExpandDims:output:0*dcnn/conv1d_1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
dcnn/conv1d_1/conv1d?
dcnn/conv1d_1/conv1d/SqueezeSqueezedcnn/conv1d_1/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
dcnn/conv1d_1/conv1d/Squeeze?
$dcnn/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$dcnn/conv1d_1/BiasAdd/ReadVariableOp?
dcnn/conv1d_1/BiasAddBiasAdd%dcnn/conv1d_1/conv1d/Squeeze:output:0,dcnn/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d_1/BiasAdd?
dcnn/conv1d_1/ReluReludcnn/conv1d_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d_1/Relu?
1dcnn/global_max_pooling1d/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1dcnn/global_max_pooling1d/Max_1/reduction_indices?
dcnn/global_max_pooling1d/Max_1Max dcnn/conv1d_1/Relu:activations:0:dcnn/global_max_pooling1d/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2!
dcnn/global_max_pooling1d/Max_1?
#dcnn/conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#dcnn/conv1d_2/conv1d/ExpandDims/dim?
dcnn/conv1d_2/conv1d/ExpandDims
ExpandDims3dcnn/embedding/embedding_lookup/Identity_1:output:0,dcnn/conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2!
dcnn/conv1d_2/conv1d/ExpandDims?
0dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype022
0dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
%dcnn/conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%dcnn/conv1d_2/conv1d/ExpandDims_1/dim?
!dcnn/conv1d_2/conv1d/ExpandDims_1
ExpandDims8dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2#
!dcnn/conv1d_2/conv1d/ExpandDims_1?
dcnn/conv1d_2/conv1dConv2D(dcnn/conv1d_2/conv1d/ExpandDims:output:0*dcnn/conv1d_2/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
dcnn/conv1d_2/conv1d?
dcnn/conv1d_2/conv1d/SqueezeSqueezedcnn/conv1d_2/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
dcnn/conv1d_2/conv1d/Squeeze?
$dcnn/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$dcnn/conv1d_2/BiasAdd/ReadVariableOp?
dcnn/conv1d_2/BiasAddBiasAdd%dcnn/conv1d_2/conv1d/Squeeze:output:0,dcnn/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d_2/BiasAdd?
dcnn/conv1d_2/ReluReludcnn/conv1d_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
dcnn/conv1d_2/Relu?
1dcnn/global_max_pooling1d/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1dcnn/global_max_pooling1d/Max_2/reduction_indices?
dcnn/global_max_pooling1d/Max_2Max dcnn/conv1d_2/Relu:activations:0:dcnn/global_max_pooling1d/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2!
dcnn/global_max_pooling1d/Max_2o
dcnn/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dcnn/concat/axis?
dcnn/concatConcatV2&dcnn/global_max_pooling1d/Max:output:0(dcnn/global_max_pooling1d/Max_1:output:0(dcnn/global_max_pooling1d/Max_2:output:0dcnn/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
dcnn/concat?
 dcnn/dense/MatMul/ReadVariableOpReadVariableOp)dcnn_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dcnn/dense/MatMul/ReadVariableOp?
dcnn/dense/MatMulMatMuldcnn/concat:output:0(dcnn/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dcnn/dense/MatMul?
!dcnn/dense/BiasAdd/ReadVariableOpReadVariableOp*dcnn_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!dcnn/dense/BiasAdd/ReadVariableOp?
dcnn/dense/BiasAddBiasAdddcnn/dense/MatMul:product:0)dcnn/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dcnn/dense/BiasAddz
dcnn/dense/ReluReludcnn/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dcnn/dense/Relu?
dcnn/dropout/IdentityIdentitydcnn/dense/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dcnn/dropout/Identity?
"dcnn/dense_1/MatMul/ReadVariableOpReadVariableOp+dcnn_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"dcnn/dense_1/MatMul/ReadVariableOp?
dcnn/dense_1/MatMulMatMuldcnn/dropout/Identity:output:0*dcnn/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dcnn/dense_1/MatMul?
#dcnn/dense_1/BiasAdd/ReadVariableOpReadVariableOp,dcnn_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dcnn/dense_1/BiasAdd/ReadVariableOp?
dcnn/dense_1/BiasAddBiasAdddcnn/dense_1/MatMul:product:0+dcnn/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dcnn/dense_1/BiasAdd?
dcnn/dense_1/SigmoidSigmoiddcnn/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dcnn/dense_1/Sigmoids
IdentityIdentitydcnn/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^dcnn/conv1d/BiasAdd/ReadVariableOp/^dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_1/BiasAdd/ReadVariableOp1^dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_2/BiasAdd/ReadVariableOp1^dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp"^dcnn/dense/BiasAdd/ReadVariableOp!^dcnn/dense/MatMul/ReadVariableOp$^dcnn/dense_1/BiasAdd/ReadVariableOp#^dcnn/dense_1/MatMul/ReadVariableOp ^dcnn/embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2H
"dcnn/conv1d/BiasAdd/ReadVariableOp"dcnn/conv1d/BiasAdd/ReadVariableOp2`
.dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp.dcnn/conv1d/conv1d/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_1/BiasAdd/ReadVariableOp$dcnn/conv1d_1/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp0dcnn/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_2/BiasAdd/ReadVariableOp$dcnn/conv1d_2/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp0dcnn/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2F
!dcnn/dense/BiasAdd/ReadVariableOp!dcnn/dense/BiasAdd/ReadVariableOp2D
 dcnn/dense/MatMul/ReadVariableOp dcnn/dense/MatMul/ReadVariableOp2J
#dcnn/dense_1/BiasAdd/ReadVariableOp#dcnn/dense_1/BiasAdd/ReadVariableOp2H
"dcnn/dense_1/MatMul/ReadVariableOp"dcnn/dense_1/MatMul/ReadVariableOp2B
dcnn/embedding/embedding_lookupdcnn/embedding/embedding_lookup:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
?
A__inference_dense_layer_call_and_return_conditional_losses_461200

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_conv1d_layer_call_fn_461810

inputs
unknown:?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_4611282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?^
?	
@__inference_dcnn_layer_call_and_return_conditional_losses_461640

inputs6
!embedding_embedding_lookup_461575:???I
2conv1d_conv1d_expanddims_1_readvariableop_resource:?d4
&conv1d_biasadd_readvariableop_resource:dK
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:?d6
(conv1d_1_biasadd_readvariableop_resource:dK
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:?d6
(conv1d_2_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/conv1d/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_461575inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/461575*5
_output_shapes#
!:???????????????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/461575*5
_output_shapes#
!:???????????????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2'
%embedding/embedding_lookup/Identity_1?
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/conv1d/ExpandDims/dim?
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d/conv1d/ExpandDims?
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp?
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim?
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d/conv1d/ExpandDims_1?
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d/conv1d?
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d/conv1d/Squeeze?
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
conv1d/BiasAdd/ReadVariableOp?
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d/BiasAddz
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d/Relu?
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indices?
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max?
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_1/conv1d/ExpandDims/dim?
conv1d_1/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d_1/conv1d/ExpandDims?
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim?
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d_1/conv1d/ExpandDims_1?
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d_1/conv1d?
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d_1/conv1d/Squeeze?
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp?
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_1/BiasAdd?
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_1/Relu?
,global_max_pooling1d/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d/Max_1/reduction_indices?
global_max_pooling1d/Max_1Maxconv1d_1/Relu:activations:05global_max_pooling1d/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max_1?
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_2/conv1d/ExpandDims/dim?
conv1d_2/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#???????????????????2
conv1d_2/conv1d/ExpandDims?
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?d*
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dim?
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?d2
conv1d_2/conv1d/ExpandDims_1?
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"??????????????????d*
paddingVALID*
strides
2
conv1d_2/conv1d?
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*4
_output_shapes"
 :??????????????????d*
squeeze_dims

?????????2
conv1d_2/conv1d/Squeeze?
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_2/BiasAdd/ReadVariableOp?
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_2/BiasAdd?
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????????????d2
conv1d_2/Relu?
,global_max_pooling1d/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d/Max_2/reduction_indices?
global_max_pooling1d/Max_2Maxconv1d_2/Relu:activations:05global_max_pooling1d/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:?????????d2
global_max_pooling1d/Max_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!global_max_pooling1d/Max:output:0#global_max_pooling1d/Max_1:output:0#global_max_pooling1d/Max_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concat?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulconcat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu}
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:??????????????????: : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
Q
5__inference_global_max_pooling1d_layer_call_fn_461882

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_4611392
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????d:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
D
input_19
serving_default_input_1:0??????????????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
	embedding

bigram
trigram
fourgram
pool
dense_1
dropout

last_dense
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_model
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
0	variables
1trainable_variables
2regularization_losses
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmymzm{ m|!m}*m~+m4m?5m?v?v?v?v?v? v?!v?*v?+v?4v?5v?"
	optimizer
n
0
1
2
3
4
 5
!6
*7
+8
49
510"
trackable_list_wrapper
n
0
1
2
3
4
 5
!6
*7
+8
49
510"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

	variables

@layers
trainable_variables
Ametrics
Blayer_regularization_losses
Clayer_metrics
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
.:,???2dcnn/embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables
	variables

Elayers
trainable_variables
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'?d2dcnn/conv1d/kernel
:d2dcnn/conv1d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables
	variables

Jlayers
trainable_variables
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?d2dcnn/conv1d_1/kernel
 :d2dcnn/conv1d_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables
	variables

Olayers
trainable_variables
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?d2dcnn/conv1d_2/kernel
 :d2dcnn/conv1d_2/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables
"	variables

Tlayers
#trainable_variables
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables
&	variables

Ylayers
'trainable_variables
Zmetrics
[layer_regularization_losses
\layer_metrics
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#
??2dcnn/dense/kernel
:?2dcnn/dense/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables
,	variables

^layers
-trainable_variables
_metrics
`layer_regularization_losses
alayer_metrics
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables
0	variables

clayers
1trainable_variables
dmetrics
elayer_regularization_losses
flayer_metrics
2regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$	?2dcnn/dense_1/kernel
:2dcnn/dense_1/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables
6	variables

hlayers
7trainable_variables
imetrics
jlayer_regularization_losses
klayer_metrics
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ntotal
	ocount
p	variables
q	keras_api"
_tf_keras_metric
^
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
r0
s1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
3:1???2 Adam/dcnn/embedding/embeddings/m
.:,?d2Adam/dcnn/conv1d/kernel/m
#:!d2Adam/dcnn/conv1d/bias/m
0:.?d2Adam/dcnn/conv1d_1/kernel/m
%:#d2Adam/dcnn/conv1d_1/bias/m
0:.?d2Adam/dcnn/conv1d_2/kernel/m
%:#d2Adam/dcnn/conv1d_2/bias/m
*:(
??2Adam/dcnn/dense/kernel/m
#:!?2Adam/dcnn/dense/bias/m
+:)	?2Adam/dcnn/dense_1/kernel/m
$:"2Adam/dcnn/dense_1/bias/m
3:1???2 Adam/dcnn/embedding/embeddings/v
.:,?d2Adam/dcnn/conv1d/kernel/v
#:!d2Adam/dcnn/conv1d/bias/v
0:.?d2Adam/dcnn/conv1d_1/kernel/v
%:#d2Adam/dcnn/conv1d_1/bias/v
0:.?d2Adam/dcnn/conv1d_2/kernel/v
%:#d2Adam/dcnn/conv1d_2/bias/v
*:(
??2Adam/dcnn/dense/kernel/v
#:!?2Adam/dcnn/dense/bias/v
+:)	?2Adam/dcnn/dense_1/kernel/v
$:"2Adam/dcnn/dense_1/bias/v
?2?
@__inference_dcnn_layer_call_and_return_conditional_losses_461640
@__inference_dcnn_layer_call_and_return_conditional_losses_461715
@__inference_dcnn_layer_call_and_return_conditional_losses_461499
@__inference_dcnn_layer_call_and_return_conditional_losses_461537?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_dcnn_layer_call_fn_461256
%__inference_dcnn_layer_call_fn_461742
%__inference_dcnn_layer_call_fn_461769
%__inference_dcnn_layer_call_fn_461461?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_461068input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_embedding_layer_call_and_return_conditional_losses_461778?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_layer_call_fn_461785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv1d_layer_call_and_return_conditional_losses_461801?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv1d_layer_call_fn_461810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_461826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv1d_1_layer_call_fn_461835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_461851?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv1d_2_layer_call_fn_461860?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461866
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_global_max_pooling1d_layer_call_fn_461877
5__inference_global_max_pooling1d_layer_call_fn_461882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_layer_call_and_return_conditional_losses_461893?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_461902?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dropout_layer_call_and_return_conditional_losses_461907
C__inference_dropout_layer_call_and_return_conditional_losses_461919?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dropout_layer_call_fn_461924
(__inference_dropout_layer_call_fn_461929?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dense_1_layer_call_and_return_conditional_losses_461940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_1_layer_call_fn_461949?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_461572input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_461068} !*+459?6
/?,
*?'
input_1??????????????????
? "3?0
.
output_1"?
output_1??????????
D__inference_conv1d_1_layer_call_and_return_conditional_losses_461826w=?:
3?0
.?+
inputs???????????????????
? "2?/
(?%
0??????????????????d
? ?
)__inference_conv1d_1_layer_call_fn_461835j=?:
3?0
.?+
inputs???????????????????
? "%?"??????????????????d?
D__inference_conv1d_2_layer_call_and_return_conditional_losses_461851w !=?:
3?0
.?+
inputs???????????????????
? "2?/
(?%
0??????????????????d
? ?
)__inference_conv1d_2_layer_call_fn_461860j !=?:
3?0
.?+
inputs???????????????????
? "%?"??????????????????d?
B__inference_conv1d_layer_call_and_return_conditional_losses_461801w=?:
3?0
.?+
inputs???????????????????
? "2?/
(?%
0??????????????????d
? ?
'__inference_conv1d_layer_call_fn_461810j=?:
3?0
.?+
inputs???????????????????
? "%?"??????????????????d?
@__inference_dcnn_layer_call_and_return_conditional_losses_461499s !*+45=?:
3?0
*?'
input_1??????????????????
p 
? "%?"
?
0?????????
? ?
@__inference_dcnn_layer_call_and_return_conditional_losses_461537s !*+45=?:
3?0
*?'
input_1??????????????????
p
? "%?"
?
0?????????
? ?
@__inference_dcnn_layer_call_and_return_conditional_losses_461640r !*+45<?9
2?/
)?&
inputs??????????????????
p 
? "%?"
?
0?????????
? ?
@__inference_dcnn_layer_call_and_return_conditional_losses_461715r !*+45<?9
2?/
)?&
inputs??????????????????
p
? "%?"
?
0?????????
? ?
%__inference_dcnn_layer_call_fn_461256f !*+45=?:
3?0
*?'
input_1??????????????????
p 
? "???????????
%__inference_dcnn_layer_call_fn_461461f !*+45=?:
3?0
*?'
input_1??????????????????
p
? "???????????
%__inference_dcnn_layer_call_fn_461742e !*+45<?9
2?/
)?&
inputs??????????????????
p 
? "???????????
%__inference_dcnn_layer_call_fn_461769e !*+45<?9
2?/
)?&
inputs??????????????????
p
? "???????????
C__inference_dense_1_layer_call_and_return_conditional_losses_461940]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_1_layer_call_fn_461949P450?-
&?#
!?
inputs??????????
? "???????????
A__inference_dense_layer_call_and_return_conditional_losses_461893^*+0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_layer_call_fn_461902Q*+0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dropout_layer_call_and_return_conditional_losses_461907^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_461919^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_dropout_layer_call_fn_461924Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_dropout_layer_call_fn_461929Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_embedding_layer_call_and_return_conditional_losses_461778r8?5
.?+
)?&
inputs??????????????????
? "3?0
)?&
0???????????????????
? ?
*__inference_embedding_layer_call_fn_461785e8?5
.?+
)?&
inputs??????????????????
? "&?#????????????????????
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461866wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_461872e<?9
2?/
-?*
inputs??????????????????d
? "%?"
?
0?????????d
? ?
5__inference_global_max_pooling1d_layer_call_fn_461877jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
5__inference_global_max_pooling1d_layer_call_fn_461882X<?9
2?/
-?*
inputs??????????????????d
? "??????????d?
$__inference_signature_wrapper_461572? !*+45D?A
? 
:?7
5
input_1*?'
input_1??????????????????"3?0
.
output_1"?
output_1?????????