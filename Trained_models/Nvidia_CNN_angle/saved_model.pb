��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8�
�
Adam/nvidia_cnn/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/nvidia_cnn/dense_4/bias/v
�
2Adam/nvidia_cnn/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_4/bias/v*
_output_shapes
:*
dtype0
�
 Adam/nvidia_cnn/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/nvidia_cnn/dense_4/kernel/v
�
4Adam/nvidia_cnn/dense_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_4/kernel/v*
_output_shapes

:*
dtype0
�
Adam/nvidia_cnn/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/nvidia_cnn/dense_3/bias/v
�
2Adam/nvidia_cnn/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_3/bias/v*
_output_shapes
:*
dtype0
�
 Adam/nvidia_cnn/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/nvidia_cnn/dense_3/kernel/v
�
4Adam/nvidia_cnn/dense_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_3/kernel/v*
_output_shapes

: *
dtype0
�
Adam/nvidia_cnn/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/nvidia_cnn/dense_2/bias/v
�
2Adam/nvidia_cnn/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_2/bias/v*
_output_shapes
: *
dtype0
�
 Adam/nvidia_cnn/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *1
shared_name" Adam/nvidia_cnn/dense_2/kernel/v
�
4Adam/nvidia_cnn/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_2/kernel/v*
_output_shapes

:@ *
dtype0
�
Adam/nvidia_cnn/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/nvidia_cnn/dense_1/bias/v
�
2Adam/nvidia_cnn/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_1/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/nvidia_cnn/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" Adam/nvidia_cnn/dense_1/kernel/v
�
4Adam/nvidia_cnn/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_1/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/nvidia_cnn/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/nvidia_cnn/dense/bias/v
�
0Adam/nvidia_cnn/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/nvidia_cnn/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*/
shared_name Adam/nvidia_cnn/dense/kernel/v
�
2Adam/nvidia_cnn/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/nvidia_cnn/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/nvidia_cnn/conv2d_4/bias/v
�
3Adam/nvidia_cnn/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_4/bias/v*
_output_shapes
:@*
dtype0
�
!Adam/nvidia_cnn/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/nvidia_cnn/conv2d_4/kernel/v
�
5Adam/nvidia_cnn/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_4/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/nvidia_cnn/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/nvidia_cnn/conv2d_3/bias/v
�
3Adam/nvidia_cnn/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
�
!Adam/nvidia_cnn/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*2
shared_name#!Adam/nvidia_cnn/conv2d_3/kernel/v
�
5Adam/nvidia_cnn/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_3/kernel/v*&
_output_shapes
:0@*
dtype0
�
Adam/nvidia_cnn/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/nvidia_cnn/conv2d_2/bias/v
�
3Adam/nvidia_cnn/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_2/bias/v*
_output_shapes
:0*
dtype0
�
!Adam/nvidia_cnn/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*2
shared_name#!Adam/nvidia_cnn/conv2d_2/kernel/v
�
5Adam/nvidia_cnn/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_2/kernel/v*&
_output_shapes
:$0*
dtype0
�
Adam/nvidia_cnn/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/nvidia_cnn/conv2d_1/bias/v
�
3Adam/nvidia_cnn/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_1/bias/v*
_output_shapes
:$*
dtype0
�
!Adam/nvidia_cnn/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*2
shared_name#!Adam/nvidia_cnn/conv2d_1/kernel/v
�
5Adam/nvidia_cnn/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_1/kernel/v*&
_output_shapes
:$*
dtype0
�
Adam/nvidia_cnn/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/nvidia_cnn/conv2d/bias/v
�
1Adam/nvidia_cnn/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d/bias/v*
_output_shapes
:*
dtype0
�
Adam/nvidia_cnn/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/nvidia_cnn/conv2d/kernel/v
�
3Adam/nvidia_cnn/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/nvidia_cnn/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/nvidia_cnn/dense_4/bias/m
�
2Adam/nvidia_cnn/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_4/bias/m*
_output_shapes
:*
dtype0
�
 Adam/nvidia_cnn/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/nvidia_cnn/dense_4/kernel/m
�
4Adam/nvidia_cnn/dense_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_4/kernel/m*
_output_shapes

:*
dtype0
�
Adam/nvidia_cnn/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/nvidia_cnn/dense_3/bias/m
�
2Adam/nvidia_cnn/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_3/bias/m*
_output_shapes
:*
dtype0
�
 Adam/nvidia_cnn/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/nvidia_cnn/dense_3/kernel/m
�
4Adam/nvidia_cnn/dense_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_3/kernel/m*
_output_shapes

: *
dtype0
�
Adam/nvidia_cnn/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/nvidia_cnn/dense_2/bias/m
�
2Adam/nvidia_cnn/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_2/bias/m*
_output_shapes
: *
dtype0
�
 Adam/nvidia_cnn/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *1
shared_name" Adam/nvidia_cnn/dense_2/kernel/m
�
4Adam/nvidia_cnn/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_2/kernel/m*
_output_shapes

:@ *
dtype0
�
Adam/nvidia_cnn/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/nvidia_cnn/dense_1/bias/m
�
2Adam/nvidia_cnn/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense_1/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/nvidia_cnn/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*1
shared_name" Adam/nvidia_cnn/dense_1/kernel/m
�
4Adam/nvidia_cnn/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/nvidia_cnn/dense_1/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/nvidia_cnn/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_nameAdam/nvidia_cnn/dense/bias/m
�
0Adam/nvidia_cnn/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/nvidia_cnn/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*/
shared_name Adam/nvidia_cnn/dense/kernel/m
�
2Adam/nvidia_cnn/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/dense/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/nvidia_cnn/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/nvidia_cnn/conv2d_4/bias/m
�
3Adam/nvidia_cnn/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_4/bias/m*
_output_shapes
:@*
dtype0
�
!Adam/nvidia_cnn/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/nvidia_cnn/conv2d_4/kernel/m
�
5Adam/nvidia_cnn/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_4/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/nvidia_cnn/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/nvidia_cnn/conv2d_3/bias/m
�
3Adam/nvidia_cnn/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
�
!Adam/nvidia_cnn/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*2
shared_name#!Adam/nvidia_cnn/conv2d_3/kernel/m
�
5Adam/nvidia_cnn/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_3/kernel/m*&
_output_shapes
:0@*
dtype0
�
Adam/nvidia_cnn/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/nvidia_cnn/conv2d_2/bias/m
�
3Adam/nvidia_cnn/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_2/bias/m*
_output_shapes
:0*
dtype0
�
!Adam/nvidia_cnn/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*2
shared_name#!Adam/nvidia_cnn/conv2d_2/kernel/m
�
5Adam/nvidia_cnn/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_2/kernel/m*&
_output_shapes
:$0*
dtype0
�
Adam/nvidia_cnn/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/nvidia_cnn/conv2d_1/bias/m
�
3Adam/nvidia_cnn/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d_1/bias/m*
_output_shapes
:$*
dtype0
�
!Adam/nvidia_cnn/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*2
shared_name#!Adam/nvidia_cnn/conv2d_1/kernel/m
�
5Adam/nvidia_cnn/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/nvidia_cnn/conv2d_1/kernel/m*&
_output_shapes
:$*
dtype0
�
Adam/nvidia_cnn/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/nvidia_cnn/conv2d/bias/m
�
1Adam/nvidia_cnn/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d/bias/m*
_output_shapes
:*
dtype0
�
Adam/nvidia_cnn/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/nvidia_cnn/conv2d/kernel/m
�
3Adam/nvidia_cnn/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/nvidia_cnn/conv2d/kernel/m*&
_output_shapes
:*
dtype0
b
countVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namecount
[
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
:*
dtype0
h
residualVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
residual
a
residual/Read/ReadVariableOpReadVariableOpresidual*
_output_shapes
:*
dtype0
^
sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namesum
W
sum/Read/ReadVariableOpReadVariableOpsum*
_output_shapes
:*
dtype0
n
squared_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namesquared_sum
g
squared_sum/Read/ReadVariableOpReadVariableOpsquared_sum*
_output_shapes
:*
dtype0
j
num_samplesVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namenum_samples
c
num_samples/Read/ReadVariableOpReadVariableOpnum_samples*
_output_shapes
: *
dtype0
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
�
nvidia_cnn/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namenvidia_cnn/dense_4/bias

+nvidia_cnn/dense_4/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_4/bias*
_output_shapes
:*
dtype0
�
nvidia_cnn/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_namenvidia_cnn/dense_4/kernel
�
-nvidia_cnn/dense_4/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_4/kernel*
_output_shapes

:*
dtype0
�
nvidia_cnn/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namenvidia_cnn/dense_3/bias

+nvidia_cnn/dense_3/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_3/bias*
_output_shapes
:*
dtype0
�
nvidia_cnn/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namenvidia_cnn/dense_3/kernel
�
-nvidia_cnn/dense_3/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_3/kernel*
_output_shapes

: *
dtype0
�
nvidia_cnn/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namenvidia_cnn/dense_2/bias

+nvidia_cnn/dense_2/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_2/bias*
_output_shapes
: *
dtype0
�
nvidia_cnn/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ **
shared_namenvidia_cnn/dense_2/kernel
�
-nvidia_cnn/dense_2/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_2/kernel*
_output_shapes

:@ *
dtype0
�
nvidia_cnn/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namenvidia_cnn/dense_1/bias

+nvidia_cnn/dense_1/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_1/bias*
_output_shapes
:@*
dtype0
�
nvidia_cnn/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@**
shared_namenvidia_cnn/dense_1/kernel
�
-nvidia_cnn/dense_1/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense_1/kernel*
_output_shapes
:	�@*
dtype0
�
nvidia_cnn/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_namenvidia_cnn/dense/bias
|
)nvidia_cnn/dense/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense/bias*
_output_shapes	
:�*
dtype0
�
nvidia_cnn/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_namenvidia_cnn/dense/kernel
�
+nvidia_cnn/dense/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/dense/kernel* 
_output_shapes
:
��*
dtype0
�
nvidia_cnn/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namenvidia_cnn/conv2d_4/bias
�
,nvidia_cnn/conv2d_4/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_4/bias*
_output_shapes
:@*
dtype0
�
nvidia_cnn/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_namenvidia_cnn/conv2d_4/kernel
�
.nvidia_cnn/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_4/kernel*&
_output_shapes
:@@*
dtype0
�
nvidia_cnn/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namenvidia_cnn/conv2d_3/bias
�
,nvidia_cnn/conv2d_3/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_3/bias*
_output_shapes
:@*
dtype0
�
nvidia_cnn/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*+
shared_namenvidia_cnn/conv2d_3/kernel
�
.nvidia_cnn/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_3/kernel*&
_output_shapes
:0@*
dtype0
�
nvidia_cnn/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_namenvidia_cnn/conv2d_2/bias
�
,nvidia_cnn/conv2d_2/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_2/bias*
_output_shapes
:0*
dtype0
�
nvidia_cnn/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*+
shared_namenvidia_cnn/conv2d_2/kernel
�
.nvidia_cnn/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_2/kernel*&
_output_shapes
:$0*
dtype0
�
nvidia_cnn/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*)
shared_namenvidia_cnn/conv2d_1/bias
�
,nvidia_cnn/conv2d_1/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_1/bias*
_output_shapes
:$*
dtype0
�
nvidia_cnn/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*+
shared_namenvidia_cnn/conv2d_1/kernel
�
.nvidia_cnn/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d_1/kernel*&
_output_shapes
:$*
dtype0
�
nvidia_cnn/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namenvidia_cnn/conv2d/bias
}
*nvidia_cnn/conv2d/bias/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d/bias*
_output_shapes
:*
dtype0
�
nvidia_cnn/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenvidia_cnn/conv2d/kernel
�
,nvidia_cnn/conv2d/kernel/Read/ReadVariableOpReadVariableOpnvidia_cnn/conv2d/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1nvidia_cnn/conv2d/kernelnvidia_cnn/conv2d/biasnvidia_cnn/conv2d_1/kernelnvidia_cnn/conv2d_1/biasnvidia_cnn/conv2d_2/kernelnvidia_cnn/conv2d_2/biasnvidia_cnn/conv2d_3/kernelnvidia_cnn/conv2d_3/biasnvidia_cnn/conv2d_4/kernelnvidia_cnn/conv2d_4/biasnvidia_cnn/dense/kernelnvidia_cnn/dense/biasnvidia_cnn/dense_1/kernelnvidia_cnn/dense_1/biasnvidia_cnn/dense_2/kernelnvidia_cnn/dense_2/biasnvidia_cnn/dense_3/kernelnvidia_cnn/dense_3/biasnvidia_cnn/dense_4/kernelnvidia_cnn/dense_4/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *,
f'R%
#__inference_signature_wrapper_87443

NoOpNoOp
�~
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�}
value�}B�} B�}
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4
	conv5
flatten
d1
d2
d3
d4
Y1
	optimizer

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17
'18
(19*
�
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17
'18
(19*
* 
�
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

.trace_0
/trace_1* 

0trace_0
1trace_1* 
* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

kernel
bias
 8_jit_compiled_convolution_op*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

kernel
bias
 ?_jit_compiled_convolution_op*
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

kernel
bias
 F_jit_compiled_convolution_op*
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias
 M_jit_compiled_convolution_op*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

kernel
bias
 T_jit_compiled_convolution_op*
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
 bias*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

!kernel
"bias*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

#kernel
$bias*
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

%kernel
&bias*
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

'kernel
(bias*
�
yiter

zbeta_1

{beta_2
	|decay
}learning_ratem�m�m�m�m�m�m�m�m�m�m� m�!m�"m�#m�$m�%m�&m�'m�(m�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�#v�$v�%v�&v�'v�(v�*

~serving_default* 
XR
VARIABLE_VALUEnvidia_cnn/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnvidia_cnn/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/conv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/conv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/conv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/conv2d_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/dense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnvidia_cnn/dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/dense_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/dense_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/dense_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/dense_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/dense_3/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/dense_3/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEnvidia_cnn/dense_4/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnvidia_cnn/dense_4/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
	1

2
3
4
5
6
7
8
9
10*

0
�1*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
 1*

0
 1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

!0
"1*

!0
"1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

#0
$1*

#0
$1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

%0
&1*

%0
&1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

'0
(1*

'0
(1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
�	variables
�	keras_api

�total

�count*
w
�	variables
�	keras_api
�num_samples
�squared_sum
�sum
�residual
�res

�count*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
,
�0
�1
�2
�3
�4*

�	variables*
_Y
VARIABLE_VALUEnum_samples:keras_api/metrics/1/num_samples/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsquared_sum:keras_api/metrics/1/squared_sum/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEsum2keras_api/metrics/1/sum/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEresidual7keras_api/metrics/1/residual/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/nvidia_cnn/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_4/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_4/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/nvidia_cnn/dense/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_1/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_1/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_2/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_2/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_3/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_3/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_4/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_4/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/nvidia_cnn/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/nvidia_cnn/conv2d_4/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/conv2d_4/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/nvidia_cnn/dense/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_1/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_1/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_2/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_2/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_3/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_3/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/nvidia_cnn/dense_4/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/nvidia_cnn/dense_4/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,nvidia_cnn/conv2d/kernel/Read/ReadVariableOp*nvidia_cnn/conv2d/bias/Read/ReadVariableOp.nvidia_cnn/conv2d_1/kernel/Read/ReadVariableOp,nvidia_cnn/conv2d_1/bias/Read/ReadVariableOp.nvidia_cnn/conv2d_2/kernel/Read/ReadVariableOp,nvidia_cnn/conv2d_2/bias/Read/ReadVariableOp.nvidia_cnn/conv2d_3/kernel/Read/ReadVariableOp,nvidia_cnn/conv2d_3/bias/Read/ReadVariableOp.nvidia_cnn/conv2d_4/kernel/Read/ReadVariableOp,nvidia_cnn/conv2d_4/bias/Read/ReadVariableOp+nvidia_cnn/dense/kernel/Read/ReadVariableOp)nvidia_cnn/dense/bias/Read/ReadVariableOp-nvidia_cnn/dense_1/kernel/Read/ReadVariableOp+nvidia_cnn/dense_1/bias/Read/ReadVariableOp-nvidia_cnn/dense_2/kernel/Read/ReadVariableOp+nvidia_cnn/dense_2/bias/Read/ReadVariableOp-nvidia_cnn/dense_3/kernel/Read/ReadVariableOp+nvidia_cnn/dense_3/bias/Read/ReadVariableOp-nvidia_cnn/dense_4/kernel/Read/ReadVariableOp+nvidia_cnn/dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOpnum_samples/Read/ReadVariableOpsquared_sum/Read/ReadVariableOpsum/Read/ReadVariableOpresidual/Read/ReadVariableOpcount/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d/kernel/m/Read/ReadVariableOp1Adam/nvidia_cnn/conv2d/bias/m/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_1/kernel/m/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_1/bias/m/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_2/kernel/m/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_2/bias/m/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_3/kernel/m/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_3/bias/m/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_4/kernel/m/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_4/bias/m/Read/ReadVariableOp2Adam/nvidia_cnn/dense/kernel/m/Read/ReadVariableOp0Adam/nvidia_cnn/dense/bias/m/Read/ReadVariableOp4Adam/nvidia_cnn/dense_1/kernel/m/Read/ReadVariableOp2Adam/nvidia_cnn/dense_1/bias/m/Read/ReadVariableOp4Adam/nvidia_cnn/dense_2/kernel/m/Read/ReadVariableOp2Adam/nvidia_cnn/dense_2/bias/m/Read/ReadVariableOp4Adam/nvidia_cnn/dense_3/kernel/m/Read/ReadVariableOp2Adam/nvidia_cnn/dense_3/bias/m/Read/ReadVariableOp4Adam/nvidia_cnn/dense_4/kernel/m/Read/ReadVariableOp2Adam/nvidia_cnn/dense_4/bias/m/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d/kernel/v/Read/ReadVariableOp1Adam/nvidia_cnn/conv2d/bias/v/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_1/kernel/v/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_1/bias/v/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_2/kernel/v/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_2/bias/v/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_3/kernel/v/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_3/bias/v/Read/ReadVariableOp5Adam/nvidia_cnn/conv2d_4/kernel/v/Read/ReadVariableOp3Adam/nvidia_cnn/conv2d_4/bias/v/Read/ReadVariableOp2Adam/nvidia_cnn/dense/kernel/v/Read/ReadVariableOp0Adam/nvidia_cnn/dense/bias/v/Read/ReadVariableOp4Adam/nvidia_cnn/dense_1/kernel/v/Read/ReadVariableOp2Adam/nvidia_cnn/dense_1/bias/v/Read/ReadVariableOp4Adam/nvidia_cnn/dense_2/kernel/v/Read/ReadVariableOp2Adam/nvidia_cnn/dense_2/bias/v/Read/ReadVariableOp4Adam/nvidia_cnn/dense_3/kernel/v/Read/ReadVariableOp2Adam/nvidia_cnn/dense_3/bias/v/Read/ReadVariableOp4Adam/nvidia_cnn/dense_4/kernel/v/Read/ReadVariableOp2Adam/nvidia_cnn/dense_4/bias/v/Read/ReadVariableOpConst*U
TinN
L2J	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *'
f"R 
__inference__traced_save_88014
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenvidia_cnn/conv2d/kernelnvidia_cnn/conv2d/biasnvidia_cnn/conv2d_1/kernelnvidia_cnn/conv2d_1/biasnvidia_cnn/conv2d_2/kernelnvidia_cnn/conv2d_2/biasnvidia_cnn/conv2d_3/kernelnvidia_cnn/conv2d_3/biasnvidia_cnn/conv2d_4/kernelnvidia_cnn/conv2d_4/biasnvidia_cnn/dense/kernelnvidia_cnn/dense/biasnvidia_cnn/dense_1/kernelnvidia_cnn/dense_1/biasnvidia_cnn/dense_2/kernelnvidia_cnn/dense_2/biasnvidia_cnn/dense_3/kernelnvidia_cnn/dense_3/biasnvidia_cnn/dense_4/kernelnvidia_cnn/dense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_1num_samplessquared_sumsumresidualcountAdam/nvidia_cnn/conv2d/kernel/mAdam/nvidia_cnn/conv2d/bias/m!Adam/nvidia_cnn/conv2d_1/kernel/mAdam/nvidia_cnn/conv2d_1/bias/m!Adam/nvidia_cnn/conv2d_2/kernel/mAdam/nvidia_cnn/conv2d_2/bias/m!Adam/nvidia_cnn/conv2d_3/kernel/mAdam/nvidia_cnn/conv2d_3/bias/m!Adam/nvidia_cnn/conv2d_4/kernel/mAdam/nvidia_cnn/conv2d_4/bias/mAdam/nvidia_cnn/dense/kernel/mAdam/nvidia_cnn/dense/bias/m Adam/nvidia_cnn/dense_1/kernel/mAdam/nvidia_cnn/dense_1/bias/m Adam/nvidia_cnn/dense_2/kernel/mAdam/nvidia_cnn/dense_2/bias/m Adam/nvidia_cnn/dense_3/kernel/mAdam/nvidia_cnn/dense_3/bias/m Adam/nvidia_cnn/dense_4/kernel/mAdam/nvidia_cnn/dense_4/bias/mAdam/nvidia_cnn/conv2d/kernel/vAdam/nvidia_cnn/conv2d/bias/v!Adam/nvidia_cnn/conv2d_1/kernel/vAdam/nvidia_cnn/conv2d_1/bias/v!Adam/nvidia_cnn/conv2d_2/kernel/vAdam/nvidia_cnn/conv2d_2/bias/v!Adam/nvidia_cnn/conv2d_3/kernel/vAdam/nvidia_cnn/conv2d_3/bias/v!Adam/nvidia_cnn/conv2d_4/kernel/vAdam/nvidia_cnn/conv2d_4/bias/vAdam/nvidia_cnn/dense/kernel/vAdam/nvidia_cnn/dense/bias/v Adam/nvidia_cnn/dense_1/kernel/vAdam/nvidia_cnn/dense_1/bias/v Adam/nvidia_cnn/dense_2/kernel/vAdam/nvidia_cnn/dense_2/bias/v Adam/nvidia_cnn/dense_3/kernel/vAdam/nvidia_cnn/dense_3/bias/v Adam/nvidia_cnn/dense_4/kernel/vAdam/nvidia_cnn/dense_4/bias/v*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  �E 8� **
f%R#
!__inference__traced_restore_88240��
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_87083

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�7
�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87141
x&
conv2d_86974:
conv2d_86976:(
conv2d_1_86991:$
conv2d_1_86993:$(
conv2d_2_87008:$0
conv2d_2_87010:0(
conv2d_3_87025:0@
conv2d_3_87027:@(
conv2d_4_87042:@@
conv2d_4_87044:@
dense_87067:
��
dense_87069:	� 
dense_1_87084:	�@
dense_1_87086:@
dense_2_87101:@ 
dense_2_87103: 
dense_3_87118: 
dense_3_87120:
dense_4_87135:
dense_4_87137:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallxconv2d_86974conv2d_86976*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������vv*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_86973�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_86991conv2d_1_86993*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99$*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_86990�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_87008conv2d_2_87010*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87007�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_87025conv2d_3_87027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87024�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_87042conv2d_4_87044*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87041�
flatten/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_87053�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_87067dense_87069*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_87066�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_87084dense_1_87086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_87083�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_87101dense_2_87103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_87100�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_87118dense_3_87120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_87117�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_87135dense_4_87137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_87134w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
(__inference_conv2d_1_layer_call_fn_87593

inputs!
unknown:$
	unknown_0:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99$*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_86990w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������99$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������vv: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������vv
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_87613

inputs!
unknown:$0
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87007w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������99$: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������99$
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87644

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_87584

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vv*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vvX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������vvi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������vvw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_87775

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87664

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�7
�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87390
input_1&
conv2d_87338:
conv2d_87340:(
conv2d_1_87343:$
conv2d_1_87345:$(
conv2d_2_87348:$0
conv2d_2_87350:0(
conv2d_3_87353:0@
conv2d_3_87355:@(
conv2d_4_87358:@@
conv2d_4_87360:@
dense_87364:
��
dense_87366:	� 
dense_1_87369:	�@
dense_1_87371:@
dense_2_87374:@ 
dense_2_87376: 
dense_3_87379: 
dense_3_87381:
dense_4_87384:
dense_4_87386:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_87338conv2d_87340*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������vv*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_86973�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_87343conv2d_1_87345*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99$*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_86990�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_87348conv2d_2_87350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87007�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_87353conv2d_3_87355*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87024�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_87358conv2d_4_87360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87041�
flatten/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_87053�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_87364dense_87366*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_87066�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_87369dense_1_87371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_87083�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_87374dense_2_87376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_87100�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_87379dense_3_87381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_87117�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_87384dense_4_87386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_87134w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_86990

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������99$i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������99$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������vv: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������vv
 
_user_specified_nameinputs
��
�!
__inference__traced_save_88014
file_prefix7
3savev2_nvidia_cnn_conv2d_kernel_read_readvariableop5
1savev2_nvidia_cnn_conv2d_bias_read_readvariableop9
5savev2_nvidia_cnn_conv2d_1_kernel_read_readvariableop7
3savev2_nvidia_cnn_conv2d_1_bias_read_readvariableop9
5savev2_nvidia_cnn_conv2d_2_kernel_read_readvariableop7
3savev2_nvidia_cnn_conv2d_2_bias_read_readvariableop9
5savev2_nvidia_cnn_conv2d_3_kernel_read_readvariableop7
3savev2_nvidia_cnn_conv2d_3_bias_read_readvariableop9
5savev2_nvidia_cnn_conv2d_4_kernel_read_readvariableop7
3savev2_nvidia_cnn_conv2d_4_bias_read_readvariableop6
2savev2_nvidia_cnn_dense_kernel_read_readvariableop4
0savev2_nvidia_cnn_dense_bias_read_readvariableop8
4savev2_nvidia_cnn_dense_1_kernel_read_readvariableop6
2savev2_nvidia_cnn_dense_1_bias_read_readvariableop8
4savev2_nvidia_cnn_dense_2_kernel_read_readvariableop6
2savev2_nvidia_cnn_dense_2_bias_read_readvariableop8
4savev2_nvidia_cnn_dense_3_kernel_read_readvariableop6
2savev2_nvidia_cnn_dense_3_bias_read_readvariableop8
4savev2_nvidia_cnn_dense_4_kernel_read_readvariableop6
2savev2_nvidia_cnn_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop*
&savev2_num_samples_read_readvariableop*
&savev2_squared_sum_read_readvariableop"
savev2_sum_read_readvariableop'
#savev2_residual_read_readvariableop$
 savev2_count_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_kernel_m_read_readvariableop<
8savev2_adam_nvidia_cnn_conv2d_bias_m_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_1_kernel_m_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_1_bias_m_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_2_kernel_m_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_2_bias_m_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_3_kernel_m_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_3_bias_m_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_4_kernel_m_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_4_bias_m_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_kernel_m_read_readvariableop;
7savev2_adam_nvidia_cnn_dense_bias_m_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_1_kernel_m_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_1_bias_m_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_2_kernel_m_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_2_bias_m_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_3_kernel_m_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_3_bias_m_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_4_kernel_m_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_4_bias_m_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_kernel_v_read_readvariableop<
8savev2_adam_nvidia_cnn_conv2d_bias_v_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_1_kernel_v_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_1_bias_v_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_2_kernel_v_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_2_bias_v_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_3_kernel_v_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_3_bias_v_read_readvariableop@
<savev2_adam_nvidia_cnn_conv2d_4_kernel_v_read_readvariableop>
:savev2_adam_nvidia_cnn_conv2d_4_bias_v_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_kernel_v_read_readvariableop;
7savev2_adam_nvidia_cnn_dense_bias_v_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_1_kernel_v_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_1_bias_v_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_2_kernel_v_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_2_bias_v_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_3_kernel_v_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_3_bias_v_read_readvariableop?
;savev2_adam_nvidia_cnn_dense_4_kernel_v_read_readvariableop=
9savev2_adam_nvidia_cnn_dense_4_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*� 
value� B� IB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/num_samples/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/squared_sum/.ATTRIBUTES/VARIABLE_VALUEB2keras_api/metrics/1/sum/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/1/residual/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B � 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_nvidia_cnn_conv2d_kernel_read_readvariableop1savev2_nvidia_cnn_conv2d_bias_read_readvariableop5savev2_nvidia_cnn_conv2d_1_kernel_read_readvariableop3savev2_nvidia_cnn_conv2d_1_bias_read_readvariableop5savev2_nvidia_cnn_conv2d_2_kernel_read_readvariableop3savev2_nvidia_cnn_conv2d_2_bias_read_readvariableop5savev2_nvidia_cnn_conv2d_3_kernel_read_readvariableop3savev2_nvidia_cnn_conv2d_3_bias_read_readvariableop5savev2_nvidia_cnn_conv2d_4_kernel_read_readvariableop3savev2_nvidia_cnn_conv2d_4_bias_read_readvariableop2savev2_nvidia_cnn_dense_kernel_read_readvariableop0savev2_nvidia_cnn_dense_bias_read_readvariableop4savev2_nvidia_cnn_dense_1_kernel_read_readvariableop2savev2_nvidia_cnn_dense_1_bias_read_readvariableop4savev2_nvidia_cnn_dense_2_kernel_read_readvariableop2savev2_nvidia_cnn_dense_2_bias_read_readvariableop4savev2_nvidia_cnn_dense_3_kernel_read_readvariableop2savev2_nvidia_cnn_dense_3_bias_read_readvariableop4savev2_nvidia_cnn_dense_4_kernel_read_readvariableop2savev2_nvidia_cnn_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop&savev2_num_samples_read_readvariableop&savev2_squared_sum_read_readvariableopsavev2_sum_read_readvariableop#savev2_residual_read_readvariableop savev2_count_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_kernel_m_read_readvariableop8savev2_adam_nvidia_cnn_conv2d_bias_m_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_1_kernel_m_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_1_bias_m_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_2_kernel_m_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_2_bias_m_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_3_kernel_m_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_3_bias_m_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_4_kernel_m_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_4_bias_m_read_readvariableop9savev2_adam_nvidia_cnn_dense_kernel_m_read_readvariableop7savev2_adam_nvidia_cnn_dense_bias_m_read_readvariableop;savev2_adam_nvidia_cnn_dense_1_kernel_m_read_readvariableop9savev2_adam_nvidia_cnn_dense_1_bias_m_read_readvariableop;savev2_adam_nvidia_cnn_dense_2_kernel_m_read_readvariableop9savev2_adam_nvidia_cnn_dense_2_bias_m_read_readvariableop;savev2_adam_nvidia_cnn_dense_3_kernel_m_read_readvariableop9savev2_adam_nvidia_cnn_dense_3_bias_m_read_readvariableop;savev2_adam_nvidia_cnn_dense_4_kernel_m_read_readvariableop9savev2_adam_nvidia_cnn_dense_4_bias_m_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_kernel_v_read_readvariableop8savev2_adam_nvidia_cnn_conv2d_bias_v_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_1_kernel_v_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_1_bias_v_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_2_kernel_v_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_2_bias_v_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_3_kernel_v_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_3_bias_v_read_readvariableop<savev2_adam_nvidia_cnn_conv2d_4_kernel_v_read_readvariableop:savev2_adam_nvidia_cnn_conv2d_4_bias_v_read_readvariableop9savev2_adam_nvidia_cnn_dense_kernel_v_read_readvariableop7savev2_adam_nvidia_cnn_dense_bias_v_read_readvariableop;savev2_adam_nvidia_cnn_dense_1_kernel_v_read_readvariableop9savev2_adam_nvidia_cnn_dense_1_bias_v_read_readvariableop;savev2_adam_nvidia_cnn_dense_2_kernel_v_read_readvariableop9savev2_adam_nvidia_cnn_dense_2_bias_v_read_readvariableop;savev2_adam_nvidia_cnn_dense_3_kernel_v_read_readvariableop9savev2_adam_nvidia_cnn_dense_3_bias_v_read_readvariableop;savev2_adam_nvidia_cnn_dense_4_kernel_v_read_readvariableop9savev2_adam_nvidia_cnn_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *W
dtypesM
K2I	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :::$:$:$0:0:0@:@:@@:@:
��:�:	�@:@:@ : : :::: : : : : : : : :::::::$:$:$0:0:0@:@:@@:@:
��:�:	�@:@:@ : : ::::::$:$:$0:0:0@:@:@@:@:
��:�:	�@:@:@ : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:$: 

_output_shapes
:$:,(
&
_output_shapes
:$0: 

_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
:$: $

_output_shapes
:$:,%(
&
_output_shapes
:$0: &

_output_shapes
:0:,'(
&
_output_shapes
:0@: (

_output_shapes
:@:,)(
&
_output_shapes
:@@: *

_output_shapes
:@:&+"
 
_output_shapes
:
��:!,

_output_shapes	
:�:%-!

_output_shapes
:	�@: .

_output_shapes
:@:$/ 

_output_shapes

:@ : 0

_output_shapes
: :$1 

_output_shapes

: : 2

_output_shapes
::$3 

_output_shapes

:: 4

_output_shapes
::,5(
&
_output_shapes
:: 6

_output_shapes
::,7(
&
_output_shapes
:$: 8

_output_shapes
:$:,9(
&
_output_shapes
:$0: :

_output_shapes
:0:,;(
&
_output_shapes
:0@: <

_output_shapes
:@:,=(
&
_output_shapes
:@@: >

_output_shapes
:@:&?"
 
_output_shapes
:
��:!@

_output_shapes	
:�:%A!

_output_shapes
:	�@: B

_output_shapes
:@:$C 

_output_shapes

:@ : D

_output_shapes
: :$E 

_output_shapes

: : F

_output_shapes
::$G 

_output_shapes

:: H

_output_shapes
::I

_output_shapes
: 
�
�
&__inference_conv2d_layer_call_fn_87573

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������vv*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_86973w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������vv`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_nvidia_cnn_layer_call_fn_87184
input_1!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$#
	unknown_3:$0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
��

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *N
fIRG
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_87735

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_87066

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_87100

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_87684

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_87066p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ϟ
�1
!__inference__traced_restore_88240
file_prefixC
)assignvariableop_nvidia_cnn_conv2d_kernel:7
)assignvariableop_1_nvidia_cnn_conv2d_bias:G
-assignvariableop_2_nvidia_cnn_conv2d_1_kernel:$9
+assignvariableop_3_nvidia_cnn_conv2d_1_bias:$G
-assignvariableop_4_nvidia_cnn_conv2d_2_kernel:$09
+assignvariableop_5_nvidia_cnn_conv2d_2_bias:0G
-assignvariableop_6_nvidia_cnn_conv2d_3_kernel:0@9
+assignvariableop_7_nvidia_cnn_conv2d_3_bias:@G
-assignvariableop_8_nvidia_cnn_conv2d_4_kernel:@@9
+assignvariableop_9_nvidia_cnn_conv2d_4_bias:@?
+assignvariableop_10_nvidia_cnn_dense_kernel:
��8
)assignvariableop_11_nvidia_cnn_dense_bias:	�@
-assignvariableop_12_nvidia_cnn_dense_1_kernel:	�@9
+assignvariableop_13_nvidia_cnn_dense_1_bias:@?
-assignvariableop_14_nvidia_cnn_dense_2_kernel:@ 9
+assignvariableop_15_nvidia_cnn_dense_2_bias: ?
-assignvariableop_16_nvidia_cnn_dense_3_kernel: 9
+assignvariableop_17_nvidia_cnn_dense_3_bias:?
-assignvariableop_18_nvidia_cnn_dense_4_kernel:9
+assignvariableop_19_nvidia_cnn_dense_4_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: #
assignvariableop_25_total: %
assignvariableop_26_count_1: )
assignvariableop_27_num_samples: -
assignvariableop_28_squared_sum:%
assignvariableop_29_sum:*
assignvariableop_30_residual:'
assignvariableop_31_count:M
3assignvariableop_32_adam_nvidia_cnn_conv2d_kernel_m:?
1assignvariableop_33_adam_nvidia_cnn_conv2d_bias_m:O
5assignvariableop_34_adam_nvidia_cnn_conv2d_1_kernel_m:$A
3assignvariableop_35_adam_nvidia_cnn_conv2d_1_bias_m:$O
5assignvariableop_36_adam_nvidia_cnn_conv2d_2_kernel_m:$0A
3assignvariableop_37_adam_nvidia_cnn_conv2d_2_bias_m:0O
5assignvariableop_38_adam_nvidia_cnn_conv2d_3_kernel_m:0@A
3assignvariableop_39_adam_nvidia_cnn_conv2d_3_bias_m:@O
5assignvariableop_40_adam_nvidia_cnn_conv2d_4_kernel_m:@@A
3assignvariableop_41_adam_nvidia_cnn_conv2d_4_bias_m:@F
2assignvariableop_42_adam_nvidia_cnn_dense_kernel_m:
��?
0assignvariableop_43_adam_nvidia_cnn_dense_bias_m:	�G
4assignvariableop_44_adam_nvidia_cnn_dense_1_kernel_m:	�@@
2assignvariableop_45_adam_nvidia_cnn_dense_1_bias_m:@F
4assignvariableop_46_adam_nvidia_cnn_dense_2_kernel_m:@ @
2assignvariableop_47_adam_nvidia_cnn_dense_2_bias_m: F
4assignvariableop_48_adam_nvidia_cnn_dense_3_kernel_m: @
2assignvariableop_49_adam_nvidia_cnn_dense_3_bias_m:F
4assignvariableop_50_adam_nvidia_cnn_dense_4_kernel_m:@
2assignvariableop_51_adam_nvidia_cnn_dense_4_bias_m:M
3assignvariableop_52_adam_nvidia_cnn_conv2d_kernel_v:?
1assignvariableop_53_adam_nvidia_cnn_conv2d_bias_v:O
5assignvariableop_54_adam_nvidia_cnn_conv2d_1_kernel_v:$A
3assignvariableop_55_adam_nvidia_cnn_conv2d_1_bias_v:$O
5assignvariableop_56_adam_nvidia_cnn_conv2d_2_kernel_v:$0A
3assignvariableop_57_adam_nvidia_cnn_conv2d_2_bias_v:0O
5assignvariableop_58_adam_nvidia_cnn_conv2d_3_kernel_v:0@A
3assignvariableop_59_adam_nvidia_cnn_conv2d_3_bias_v:@O
5assignvariableop_60_adam_nvidia_cnn_conv2d_4_kernel_v:@@A
3assignvariableop_61_adam_nvidia_cnn_conv2d_4_bias_v:@F
2assignvariableop_62_adam_nvidia_cnn_dense_kernel_v:
��?
0assignvariableop_63_adam_nvidia_cnn_dense_bias_v:	�G
4assignvariableop_64_adam_nvidia_cnn_dense_1_kernel_v:	�@@
2assignvariableop_65_adam_nvidia_cnn_dense_1_bias_v:@F
4assignvariableop_66_adam_nvidia_cnn_dense_2_kernel_v:@ @
2assignvariableop_67_adam_nvidia_cnn_dense_2_bias_v: F
4assignvariableop_68_adam_nvidia_cnn_dense_3_kernel_v: @
2assignvariableop_69_adam_nvidia_cnn_dense_3_bias_v:F
4assignvariableop_70_adam_nvidia_cnn_dense_4_kernel_v:@
2assignvariableop_71_adam_nvidia_cnn_dense_4_bias_v:
identity_73��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_8�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*� 
value� B� IB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/num_samples/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/squared_sum/.ATTRIBUTES/VARIABLE_VALUEB2keras_api/metrics/1/sum/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/1/residual/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*�
value�B�IB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*W
dtypesM
K2I	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp)assignvariableop_nvidia_cnn_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_nvidia_cnn_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp-assignvariableop_2_nvidia_cnn_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_nvidia_cnn_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp-assignvariableop_4_nvidia_cnn_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp+assignvariableop_5_nvidia_cnn_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp-assignvariableop_6_nvidia_cnn_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_nvidia_cnn_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp-assignvariableop_8_nvidia_cnn_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_nvidia_cnn_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp+assignvariableop_10_nvidia_cnn_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp)assignvariableop_11_nvidia_cnn_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_nvidia_cnn_dense_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_nvidia_cnn_dense_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_nvidia_cnn_dense_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_nvidia_cnn_dense_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp-assignvariableop_16_nvidia_cnn_dense_3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_nvidia_cnn_dense_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_nvidia_cnn_dense_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_nvidia_cnn_dense_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_num_samplesIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_squared_sumIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_sumIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_residualIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_nvidia_cnn_conv2d_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp1assignvariableop_33_adam_nvidia_cnn_conv2d_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_nvidia_cnn_conv2d_1_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp3assignvariableop_35_adam_nvidia_cnn_conv2d_1_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_nvidia_cnn_conv2d_2_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_nvidia_cnn_conv2d_2_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_nvidia_cnn_conv2d_3_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp3assignvariableop_39_adam_nvidia_cnn_conv2d_3_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_nvidia_cnn_conv2d_4_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp3assignvariableop_41_adam_nvidia_cnn_conv2d_4_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_nvidia_cnn_dense_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp0assignvariableop_43_adam_nvidia_cnn_dense_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp4assignvariableop_44_adam_nvidia_cnn_dense_1_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_nvidia_cnn_dense_1_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp4assignvariableop_46_adam_nvidia_cnn_dense_2_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp2assignvariableop_47_adam_nvidia_cnn_dense_2_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_nvidia_cnn_dense_3_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp2assignvariableop_49_adam_nvidia_cnn_dense_3_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_nvidia_cnn_dense_4_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp2assignvariableop_51_adam_nvidia_cnn_dense_4_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp3assignvariableop_52_adam_nvidia_cnn_conv2d_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp1assignvariableop_53_adam_nvidia_cnn_conv2d_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_nvidia_cnn_conv2d_1_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp3assignvariableop_55_adam_nvidia_cnn_conv2d_1_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_nvidia_cnn_conv2d_2_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp3assignvariableop_57_adam_nvidia_cnn_conv2d_2_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp5assignvariableop_58_adam_nvidia_cnn_conv2d_3_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_nvidia_cnn_conv2d_3_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_nvidia_cnn_conv2d_4_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp3assignvariableop_61_adam_nvidia_cnn_conv2d_4_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_nvidia_cnn_dense_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp0assignvariableop_63_adam_nvidia_cnn_dense_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp4assignvariableop_64_adam_nvidia_cnn_dense_1_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp2assignvariableop_65_adam_nvidia_cnn_dense_1_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp4assignvariableop_66_adam_nvidia_cnn_dense_2_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp2assignvariableop_67_adam_nvidia_cnn_dense_2_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp4assignvariableop_68_adam_nvidia_cnn_dense_3_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp2assignvariableop_69_adam_nvidia_cnn_dense_3_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp4assignvariableop_70_adam_nvidia_cnn_dense_4_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp2assignvariableop_71_adam_nvidia_cnn_dense_4_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_72Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_73IdentityIdentity_72:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
@__inference_dense_layer_call_and_return_conditional_losses_87695

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_87669

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_87053a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87624

inputs8
conv2d_readvariableop_resource:$0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������99$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������99$
 
_user_specified_nameinputs
�
�
'__inference_dense_4_layer_call_fn_87764

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_87134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87564
x?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:$6
(conv2d_1_biasadd_readvariableop_resource:$A
'conv2d_2_conv2d_readvariableop_resource:$06
(conv2d_2_biasadd_readvariableop_resource:0A
'conv2d_3_conv2d_readvariableop_resource:0@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@@6
(conv2d_4_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dx$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vv*
paddingVALID*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vvf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������vv�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$*
paddingVALID*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������99$�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingVALID*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
flatten/ReshapeReshapeconv2d_4/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_4/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
(__inference_conv2d_4_layer_call_fn_87653

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87041w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87024

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_87715

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_87704

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_87083o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_87604

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������99$i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������99$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������vv: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������vv
 
_user_specified_nameinputs
�
�
(__inference_conv2d_3_layer_call_fn_87633

inputs!
unknown:0@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87024w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
'__inference_dense_2_layer_call_fn_87724

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_87100o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�l
�
 __inference__wrapped_model_86955
input_1J
0nvidia_cnn_conv2d_conv2d_readvariableop_resource:?
1nvidia_cnn_conv2d_biasadd_readvariableop_resource:L
2nvidia_cnn_conv2d_1_conv2d_readvariableop_resource:$A
3nvidia_cnn_conv2d_1_biasadd_readvariableop_resource:$L
2nvidia_cnn_conv2d_2_conv2d_readvariableop_resource:$0A
3nvidia_cnn_conv2d_2_biasadd_readvariableop_resource:0L
2nvidia_cnn_conv2d_3_conv2d_readvariableop_resource:0@A
3nvidia_cnn_conv2d_3_biasadd_readvariableop_resource:@L
2nvidia_cnn_conv2d_4_conv2d_readvariableop_resource:@@A
3nvidia_cnn_conv2d_4_biasadd_readvariableop_resource:@C
/nvidia_cnn_dense_matmul_readvariableop_resource:
��?
0nvidia_cnn_dense_biasadd_readvariableop_resource:	�D
1nvidia_cnn_dense_1_matmul_readvariableop_resource:	�@@
2nvidia_cnn_dense_1_biasadd_readvariableop_resource:@C
1nvidia_cnn_dense_2_matmul_readvariableop_resource:@ @
2nvidia_cnn_dense_2_biasadd_readvariableop_resource: C
1nvidia_cnn_dense_3_matmul_readvariableop_resource: @
2nvidia_cnn_dense_3_biasadd_readvariableop_resource:C
1nvidia_cnn_dense_4_matmul_readvariableop_resource:@
2nvidia_cnn_dense_4_biasadd_readvariableop_resource:
identity��(nvidia_cnn/conv2d/BiasAdd/ReadVariableOp�'nvidia_cnn/conv2d/Conv2D/ReadVariableOp�*nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOp�)nvidia_cnn/conv2d_1/Conv2D/ReadVariableOp�*nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOp�)nvidia_cnn/conv2d_2/Conv2D/ReadVariableOp�*nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOp�)nvidia_cnn/conv2d_3/Conv2D/ReadVariableOp�*nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOp�)nvidia_cnn/conv2d_4/Conv2D/ReadVariableOp�'nvidia_cnn/dense/BiasAdd/ReadVariableOp�&nvidia_cnn/dense/MatMul/ReadVariableOp�)nvidia_cnn/dense_1/BiasAdd/ReadVariableOp�(nvidia_cnn/dense_1/MatMul/ReadVariableOp�)nvidia_cnn/dense_2/BiasAdd/ReadVariableOp�(nvidia_cnn/dense_2/MatMul/ReadVariableOp�)nvidia_cnn/dense_3/BiasAdd/ReadVariableOp�(nvidia_cnn/dense_3/MatMul/ReadVariableOp�)nvidia_cnn/dense_4/BiasAdd/ReadVariableOp�(nvidia_cnn/dense_4/MatMul/ReadVariableOp�
'nvidia_cnn/conv2d/Conv2D/ReadVariableOpReadVariableOp0nvidia_cnn_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
nvidia_cnn/conv2d/Conv2DConv2Dinput_1/nvidia_cnn/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vv*
paddingVALID*
strides
�
(nvidia_cnn/conv2d/BiasAdd/ReadVariableOpReadVariableOp1nvidia_cnn_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
nvidia_cnn/conv2d/BiasAddBiasAdd!nvidia_cnn/conv2d/Conv2D:output:00nvidia_cnn/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vv|
nvidia_cnn/conv2d/ReluRelu"nvidia_cnn/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������vv�
)nvidia_cnn/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2nvidia_cnn_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
nvidia_cnn/conv2d_1/Conv2DConv2D$nvidia_cnn/conv2d/Relu:activations:01nvidia_cnn/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$*
paddingVALID*
strides
�
*nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3nvidia_cnn_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
nvidia_cnn/conv2d_1/BiasAddBiasAdd#nvidia_cnn/conv2d_1/Conv2D:output:02nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99$�
nvidia_cnn/conv2d_1/ReluRelu$nvidia_cnn/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������99$�
)nvidia_cnn/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2nvidia_cnn_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
nvidia_cnn/conv2d_2/Conv2DConv2D&nvidia_cnn/conv2d_1/Relu:activations:01nvidia_cnn/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingVALID*
strides
�
*nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3nvidia_cnn_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
nvidia_cnn/conv2d_2/BiasAddBiasAdd#nvidia_cnn/conv2d_2/Conv2D:output:02nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
nvidia_cnn/conv2d_2/ReluRelu$nvidia_cnn/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
)nvidia_cnn/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2nvidia_cnn_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
nvidia_cnn/conv2d_3/Conv2DConv2D&nvidia_cnn/conv2d_2/Relu:activations:01nvidia_cnn/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
*nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3nvidia_cnn_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
nvidia_cnn/conv2d_3/BiasAddBiasAdd#nvidia_cnn/conv2d_3/Conv2D:output:02nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
nvidia_cnn/conv2d_3/ReluRelu$nvidia_cnn/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
)nvidia_cnn/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2nvidia_cnn_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
nvidia_cnn/conv2d_4/Conv2DConv2D&nvidia_cnn/conv2d_3/Relu:activations:01nvidia_cnn/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
*nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3nvidia_cnn_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
nvidia_cnn/conv2d_4/BiasAddBiasAdd#nvidia_cnn/conv2d_4/Conv2D:output:02nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
nvidia_cnn/conv2d_4/ReluRelu$nvidia_cnn/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������@i
nvidia_cnn/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
nvidia_cnn/flatten/ReshapeReshape&nvidia_cnn/conv2d_4/Relu:activations:0!nvidia_cnn/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
&nvidia_cnn/dense/MatMul/ReadVariableOpReadVariableOp/nvidia_cnn_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
nvidia_cnn/dense/MatMulMatMul#nvidia_cnn/flatten/Reshape:output:0.nvidia_cnn/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'nvidia_cnn/dense/BiasAdd/ReadVariableOpReadVariableOp0nvidia_cnn_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
nvidia_cnn/dense/BiasAddBiasAdd!nvidia_cnn/dense/MatMul:product:0/nvidia_cnn/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
nvidia_cnn/dense/ReluRelu!nvidia_cnn/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
(nvidia_cnn/dense_1/MatMul/ReadVariableOpReadVariableOp1nvidia_cnn_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
nvidia_cnn/dense_1/MatMulMatMul#nvidia_cnn/dense/Relu:activations:00nvidia_cnn/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)nvidia_cnn/dense_1/BiasAdd/ReadVariableOpReadVariableOp2nvidia_cnn_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
nvidia_cnn/dense_1/BiasAddBiasAdd#nvidia_cnn/dense_1/MatMul:product:01nvidia_cnn/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@v
nvidia_cnn/dense_1/ReluRelu#nvidia_cnn/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
(nvidia_cnn/dense_2/MatMul/ReadVariableOpReadVariableOp1nvidia_cnn_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
nvidia_cnn/dense_2/MatMulMatMul%nvidia_cnn/dense_1/Relu:activations:00nvidia_cnn/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)nvidia_cnn/dense_2/BiasAdd/ReadVariableOpReadVariableOp2nvidia_cnn_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
nvidia_cnn/dense_2/BiasAddBiasAdd#nvidia_cnn/dense_2/MatMul:product:01nvidia_cnn/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� v
nvidia_cnn/dense_2/ReluRelu#nvidia_cnn/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
(nvidia_cnn/dense_3/MatMul/ReadVariableOpReadVariableOp1nvidia_cnn_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
nvidia_cnn/dense_3/MatMulMatMul%nvidia_cnn/dense_2/Relu:activations:00nvidia_cnn/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)nvidia_cnn/dense_3/BiasAdd/ReadVariableOpReadVariableOp2nvidia_cnn_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
nvidia_cnn/dense_3/BiasAddBiasAdd#nvidia_cnn/dense_3/MatMul:product:01nvidia_cnn/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
nvidia_cnn/dense_3/ReluRelu#nvidia_cnn/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
(nvidia_cnn/dense_4/MatMul/ReadVariableOpReadVariableOp1nvidia_cnn_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
nvidia_cnn/dense_4/MatMulMatMul%nvidia_cnn/dense_3/Relu:activations:00nvidia_cnn/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)nvidia_cnn/dense_4/BiasAdd/ReadVariableOpReadVariableOp2nvidia_cnn_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
nvidia_cnn/dense_4/BiasAddBiasAdd#nvidia_cnn/dense_4/MatMul:product:01nvidia_cnn/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
nvidia_cnn/dense_4/ReluRelu#nvidia_cnn/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%nvidia_cnn/dense_4/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^nvidia_cnn/conv2d/BiasAdd/ReadVariableOp(^nvidia_cnn/conv2d/Conv2D/ReadVariableOp+^nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOp*^nvidia_cnn/conv2d_1/Conv2D/ReadVariableOp+^nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOp*^nvidia_cnn/conv2d_2/Conv2D/ReadVariableOp+^nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOp*^nvidia_cnn/conv2d_3/Conv2D/ReadVariableOp+^nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOp*^nvidia_cnn/conv2d_4/Conv2D/ReadVariableOp(^nvidia_cnn/dense/BiasAdd/ReadVariableOp'^nvidia_cnn/dense/MatMul/ReadVariableOp*^nvidia_cnn/dense_1/BiasAdd/ReadVariableOp)^nvidia_cnn/dense_1/MatMul/ReadVariableOp*^nvidia_cnn/dense_2/BiasAdd/ReadVariableOp)^nvidia_cnn/dense_2/MatMul/ReadVariableOp*^nvidia_cnn/dense_3/BiasAdd/ReadVariableOp)^nvidia_cnn/dense_3/MatMul/ReadVariableOp*^nvidia_cnn/dense_4/BiasAdd/ReadVariableOp)^nvidia_cnn/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2T
(nvidia_cnn/conv2d/BiasAdd/ReadVariableOp(nvidia_cnn/conv2d/BiasAdd/ReadVariableOp2R
'nvidia_cnn/conv2d/Conv2D/ReadVariableOp'nvidia_cnn/conv2d/Conv2D/ReadVariableOp2X
*nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOp*nvidia_cnn/conv2d_1/BiasAdd/ReadVariableOp2V
)nvidia_cnn/conv2d_1/Conv2D/ReadVariableOp)nvidia_cnn/conv2d_1/Conv2D/ReadVariableOp2X
*nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOp*nvidia_cnn/conv2d_2/BiasAdd/ReadVariableOp2V
)nvidia_cnn/conv2d_2/Conv2D/ReadVariableOp)nvidia_cnn/conv2d_2/Conv2D/ReadVariableOp2X
*nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOp*nvidia_cnn/conv2d_3/BiasAdd/ReadVariableOp2V
)nvidia_cnn/conv2d_3/Conv2D/ReadVariableOp)nvidia_cnn/conv2d_3/Conv2D/ReadVariableOp2X
*nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOp*nvidia_cnn/conv2d_4/BiasAdd/ReadVariableOp2V
)nvidia_cnn/conv2d_4/Conv2D/ReadVariableOp)nvidia_cnn/conv2d_4/Conv2D/ReadVariableOp2R
'nvidia_cnn/dense/BiasAdd/ReadVariableOp'nvidia_cnn/dense/BiasAdd/ReadVariableOp2P
&nvidia_cnn/dense/MatMul/ReadVariableOp&nvidia_cnn/dense/MatMul/ReadVariableOp2V
)nvidia_cnn/dense_1/BiasAdd/ReadVariableOp)nvidia_cnn/dense_1/BiasAdd/ReadVariableOp2T
(nvidia_cnn/dense_1/MatMul/ReadVariableOp(nvidia_cnn/dense_1/MatMul/ReadVariableOp2V
)nvidia_cnn/dense_2/BiasAdd/ReadVariableOp)nvidia_cnn/dense_2/BiasAdd/ReadVariableOp2T
(nvidia_cnn/dense_2/MatMul/ReadVariableOp(nvidia_cnn/dense_2/MatMul/ReadVariableOp2V
)nvidia_cnn/dense_3/BiasAdd/ReadVariableOp)nvidia_cnn/dense_3/BiasAdd/ReadVariableOp2T
(nvidia_cnn/dense_3/MatMul/ReadVariableOp(nvidia_cnn/dense_3/MatMul/ReadVariableOp2V
)nvidia_cnn/dense_4/BiasAdd/ReadVariableOp)nvidia_cnn/dense_4/BiasAdd/ReadVariableOp2T
(nvidia_cnn/dense_4/MatMul/ReadVariableOp(nvidia_cnn/dense_4/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87007

inputs8
conv2d_readvariableop_resource:$0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������99$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������99$
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_87443
input_1!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$#
	unknown_3:$0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
��

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *)
f$R"
 __inference__wrapped_model_86955o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
*__inference_nvidia_cnn_layer_call_fn_87488
x!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$#
	unknown_3:$0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
��

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@ 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *N
fIRG
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_87675

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
'__inference_dense_3_layer_call_fn_87744

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
  �E 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_87117o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_86973

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vv*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������vvX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������vvi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������vvw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_87053

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_87755

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_87117

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_87134

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87041

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4
	conv5
flatten
d1
d2
d3
d4
Y1
	optimizer

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17
'18
(19"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17
'18
(19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
.trace_0
/trace_12�
*__inference_nvidia_cnn_layer_call_fn_87184
*__inference_nvidia_cnn_layer_call_fn_87488�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z.trace_0z/trace_1
�
0trace_0
1trace_12�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87564
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87390�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z0trace_0z1trace_1
�B�
 __inference__wrapped_model_86955input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

kernel
bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

kernel
bias
 ?_jit_compiled_convolution_op"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

kernel
bias
 F_jit_compiled_convolution_op"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias
 M_jit_compiled_convolution_op"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

kernel
bias
 T_jit_compiled_convolution_op"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
�
yiter

zbeta_1

{beta_2
	|decay
}learning_ratem�m�m�m�m�m�m�m�m�m�m� m�!m�"m�#m�$m�%m�&m�'m�(m�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�#v�$v�%v�&v�'v�(v�"
	optimizer
,
~serving_default"
signature_map
2:02nvidia_cnn/conv2d/kernel
$:"2nvidia_cnn/conv2d/bias
4:2$2nvidia_cnn/conv2d_1/kernel
&:$$2nvidia_cnn/conv2d_1/bias
4:2$02nvidia_cnn/conv2d_2/kernel
&:$02nvidia_cnn/conv2d_2/bias
4:20@2nvidia_cnn/conv2d_3/kernel
&:$@2nvidia_cnn/conv2d_3/bias
4:2@@2nvidia_cnn/conv2d_4/kernel
&:$@2nvidia_cnn/conv2d_4/bias
+:)
��2nvidia_cnn/dense/kernel
$:"�2nvidia_cnn/dense/bias
,:*	�@2nvidia_cnn/dense_1/kernel
%:#@2nvidia_cnn/dense_1/bias
+:)@ 2nvidia_cnn/dense_2/kernel
%:# 2nvidia_cnn/dense_2/bias
+:) 2nvidia_cnn/dense_3/kernel
%:#2nvidia_cnn/dense_3/bias
+:)2nvidia_cnn/dense_4/kernel
%:#2nvidia_cnn/dense_4/bias
 "
trackable_list_wrapper
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_nvidia_cnn_layer_call_fn_87184input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_nvidia_cnn_layer_call_fn_87488x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87564x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87390input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_87573�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_87584�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_87593�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_87604�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_87613�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87624�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_3_layer_call_fn_87633�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87644�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_4_layer_call_fn_87653�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87664�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_87669�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_87675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_87684�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_87695�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_87704�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_87715�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_87724�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_87735�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_3_layer_call_fn_87744�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_87755�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_87764�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_87775�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_87443input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
�
�	variables
�	keras_api
�num_samples
�squared_sum
�sum
�residual
�res

�count"
_tf_keras_metric
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
�B�
&__inference_conv2d_layer_call_fn_87573inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_87584inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_conv2d_1_layer_call_fn_87593inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_87604inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_conv2d_2_layer_call_fn_87613inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87624inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_conv2d_3_layer_call_fn_87633inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87644inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_conv2d_4_layer_call_fn_87653inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87664inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_flatten_layer_call_fn_87669inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_87675inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_dense_layer_call_fn_87684inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_87695inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_1_layer_call_fn_87704inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_87715inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_2_layer_call_fn_87724inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_87735inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_3_layer_call_fn_87744inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_87755inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_4_layer_call_fn_87764inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_87775inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2num_samples
: (2squared_sum
: (2sum
: (2residual
: (2count
7:52Adam/nvidia_cnn/conv2d/kernel/m
):'2Adam/nvidia_cnn/conv2d/bias/m
9:7$2!Adam/nvidia_cnn/conv2d_1/kernel/m
+:)$2Adam/nvidia_cnn/conv2d_1/bias/m
9:7$02!Adam/nvidia_cnn/conv2d_2/kernel/m
+:)02Adam/nvidia_cnn/conv2d_2/bias/m
9:70@2!Adam/nvidia_cnn/conv2d_3/kernel/m
+:)@2Adam/nvidia_cnn/conv2d_3/bias/m
9:7@@2!Adam/nvidia_cnn/conv2d_4/kernel/m
+:)@2Adam/nvidia_cnn/conv2d_4/bias/m
0:.
��2Adam/nvidia_cnn/dense/kernel/m
):'�2Adam/nvidia_cnn/dense/bias/m
1:/	�@2 Adam/nvidia_cnn/dense_1/kernel/m
*:(@2Adam/nvidia_cnn/dense_1/bias/m
0:.@ 2 Adam/nvidia_cnn/dense_2/kernel/m
*:( 2Adam/nvidia_cnn/dense_2/bias/m
0:. 2 Adam/nvidia_cnn/dense_3/kernel/m
*:(2Adam/nvidia_cnn/dense_3/bias/m
0:.2 Adam/nvidia_cnn/dense_4/kernel/m
*:(2Adam/nvidia_cnn/dense_4/bias/m
7:52Adam/nvidia_cnn/conv2d/kernel/v
):'2Adam/nvidia_cnn/conv2d/bias/v
9:7$2!Adam/nvidia_cnn/conv2d_1/kernel/v
+:)$2Adam/nvidia_cnn/conv2d_1/bias/v
9:7$02!Adam/nvidia_cnn/conv2d_2/kernel/v
+:)02Adam/nvidia_cnn/conv2d_2/bias/v
9:70@2!Adam/nvidia_cnn/conv2d_3/kernel/v
+:)@2Adam/nvidia_cnn/conv2d_3/bias/v
9:7@@2!Adam/nvidia_cnn/conv2d_4/kernel/v
+:)@2Adam/nvidia_cnn/conv2d_4/bias/v
0:.
��2Adam/nvidia_cnn/dense/kernel/v
):'�2Adam/nvidia_cnn/dense/bias/v
1:/	�@2 Adam/nvidia_cnn/dense_1/kernel/v
*:(@2Adam/nvidia_cnn/dense_1/bias/v
0:.@ 2 Adam/nvidia_cnn/dense_2/kernel/v
*:( 2Adam/nvidia_cnn/dense_2/bias/v
0:. 2 Adam/nvidia_cnn/dense_3/kernel/v
*:(2Adam/nvidia_cnn/dense_3/bias/v
0:.2 Adam/nvidia_cnn/dense_4/kernel/v
*:(2Adam/nvidia_cnn/dense_4/bias/v�
 __inference__wrapped_model_86955� !"#$%&'(:�7
0�-
+�(
input_1�����������
� "3�0
.
output_1"�
output_1����������
C__inference_conv2d_1_layer_call_and_return_conditional_losses_87604l7�4
-�*
(�%
inputs���������vv
� "-�*
#� 
0���������99$
� �
(__inference_conv2d_1_layer_call_fn_87593_7�4
-�*
(�%
inputs���������vv
� " ����������99$�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_87624l7�4
-�*
(�%
inputs���������99$
� "-�*
#� 
0���������0
� �
(__inference_conv2d_2_layer_call_fn_87613_7�4
-�*
(�%
inputs���������99$
� " ����������0�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_87644l7�4
-�*
(�%
inputs���������0
� "-�*
#� 
0���������@
� �
(__inference_conv2d_3_layer_call_fn_87633_7�4
-�*
(�%
inputs���������0
� " ����������@�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_87664l7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
(__inference_conv2d_4_layer_call_fn_87653_7�4
-�*
(�%
inputs���������@
� " ����������@�
A__inference_conv2d_layer_call_and_return_conditional_losses_87584n9�6
/�,
*�'
inputs�����������
� "-�*
#� 
0���������vv
� �
&__inference_conv2d_layer_call_fn_87573a9�6
/�,
*�'
inputs�����������
� " ����������vv�
B__inference_dense_1_layer_call_and_return_conditional_losses_87715]!"0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� {
'__inference_dense_1_layer_call_fn_87704P!"0�-
&�#
!�
inputs����������
� "����������@�
B__inference_dense_2_layer_call_and_return_conditional_losses_87735\#$/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� z
'__inference_dense_2_layer_call_fn_87724O#$/�,
%�"
 �
inputs���������@
� "���������� �
B__inference_dense_3_layer_call_and_return_conditional_losses_87755\%&/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� z
'__inference_dense_3_layer_call_fn_87744O%&/�,
%�"
 �
inputs��������� 
� "�����������
B__inference_dense_4_layer_call_and_return_conditional_losses_87775\'(/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
'__inference_dense_4_layer_call_fn_87764O'(/�,
%�"
 �
inputs���������
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_87695^ 0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� z
%__inference_dense_layer_call_fn_87684Q 0�-
&�#
!�
inputs����������
� "������������
B__inference_flatten_layer_call_and_return_conditional_losses_87675a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� 
'__inference_flatten_layer_call_fn_87669T7�4
-�*
(�%
inputs���������@
� "������������
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87390y !"#$%&'(:�7
0�-
+�(
input_1�����������
� "%�"
�
0���������
� �
E__inference_nvidia_cnn_layer_call_and_return_conditional_losses_87564s !"#$%&'(4�1
*�'
%�"
x�����������
� "%�"
�
0���������
� �
*__inference_nvidia_cnn_layer_call_fn_87184l !"#$%&'(:�7
0�-
+�(
input_1�����������
� "�����������
*__inference_nvidia_cnn_layer_call_fn_87488f !"#$%&'(4�1
*�'
%�"
x�����������
� "�����������
#__inference_signature_wrapper_87443� !"#$%&'(E�B
� 
;�8
6
input_1+�(
input_1�����������"3�0
.
output_1"�
output_1���������