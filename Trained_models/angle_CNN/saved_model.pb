��

��
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Í	
�
Adam/angle_cnn/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/angle_cnn/dense_10/bias/v
�
2Adam/angle_cnn/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_10/bias/v*
_output_shapes
:*
dtype0
�
 Adam/angle_cnn/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/angle_cnn/dense_10/kernel/v
�
4Adam/angle_cnn/dense_10/kernel/v/Read/ReadVariableOpReadVariableOp Adam/angle_cnn/dense_10/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/angle_cnn/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*.
shared_nameAdam/angle_cnn/dense_9/bias/v
�
1Adam/angle_cnn/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_9/bias/v*
_output_shapes
:2*
dtype0
�
Adam/angle_cnn/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*0
shared_name!Adam/angle_cnn/dense_9/kernel/v
�
3Adam/angle_cnn/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_9/kernel/v*
_output_shapes

:d2*
dtype0
�
Adam/angle_cnn/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*.
shared_nameAdam/angle_cnn/dense_8/bias/v
�
1Adam/angle_cnn/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_8/bias/v*
_output_shapes
:d*
dtype0
�
Adam/angle_cnn/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��#d*0
shared_name!Adam/angle_cnn/dense_8/kernel/v
�
3Adam/angle_cnn/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_8/kernel/v* 
_output_shapes
:
��#d*
dtype0
�
Adam/angle_cnn/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/angle_cnn/conv2d_14/bias/v
�
3Adam/angle_cnn/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_14/bias/v*
_output_shapes
:@*
dtype0
�
!Adam/angle_cnn/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/angle_cnn/conv2d_14/kernel/v
�
5Adam/angle_cnn/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_14/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/angle_cnn/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/angle_cnn/conv2d_13/bias/v
�
3Adam/angle_cnn/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_13/bias/v*
_output_shapes
:@*
dtype0
�
!Adam/angle_cnn/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*2
shared_name#!Adam/angle_cnn/conv2d_13/kernel/v
�
5Adam/angle_cnn/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_13/kernel/v*&
_output_shapes
:0@*
dtype0
�
Adam/angle_cnn/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/angle_cnn/conv2d_12/bias/v
�
3Adam/angle_cnn/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_12/bias/v*
_output_shapes
:0*
dtype0
�
!Adam/angle_cnn/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*2
shared_name#!Adam/angle_cnn/conv2d_12/kernel/v
�
5Adam/angle_cnn/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_12/kernel/v*&
_output_shapes
:$0*
dtype0
�
Adam/angle_cnn/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/angle_cnn/conv2d_11/bias/v
�
3Adam/angle_cnn/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_11/bias/v*
_output_shapes
:$*
dtype0
�
!Adam/angle_cnn/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*2
shared_name#!Adam/angle_cnn/conv2d_11/kernel/v
�
5Adam/angle_cnn/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_11/kernel/v*&
_output_shapes
:$*
dtype0
�
Adam/angle_cnn/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/angle_cnn/conv2d_10/bias/v
�
3Adam/angle_cnn/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_10/bias/v*
_output_shapes
:*
dtype0
�
!Adam/angle_cnn/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/angle_cnn/conv2d_10/kernel/v
�
5Adam/angle_cnn/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_10/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/angle_cnn/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/angle_cnn/dense_10/bias/m
�
2Adam/angle_cnn/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_10/bias/m*
_output_shapes
:*
dtype0
�
 Adam/angle_cnn/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*1
shared_name" Adam/angle_cnn/dense_10/kernel/m
�
4Adam/angle_cnn/dense_10/kernel/m/Read/ReadVariableOpReadVariableOp Adam/angle_cnn/dense_10/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/angle_cnn/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*.
shared_nameAdam/angle_cnn/dense_9/bias/m
�
1Adam/angle_cnn/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_9/bias/m*
_output_shapes
:2*
dtype0
�
Adam/angle_cnn/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*0
shared_name!Adam/angle_cnn/dense_9/kernel/m
�
3Adam/angle_cnn/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_9/kernel/m*
_output_shapes

:d2*
dtype0
�
Adam/angle_cnn/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*.
shared_nameAdam/angle_cnn/dense_8/bias/m
�
1Adam/angle_cnn/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_8/bias/m*
_output_shapes
:d*
dtype0
�
Adam/angle_cnn/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��#d*0
shared_name!Adam/angle_cnn/dense_8/kernel/m
�
3Adam/angle_cnn/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/dense_8/kernel/m* 
_output_shapes
:
��#d*
dtype0
�
Adam/angle_cnn/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/angle_cnn/conv2d_14/bias/m
�
3Adam/angle_cnn/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_14/bias/m*
_output_shapes
:@*
dtype0
�
!Adam/angle_cnn/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*2
shared_name#!Adam/angle_cnn/conv2d_14/kernel/m
�
5Adam/angle_cnn/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_14/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/angle_cnn/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/angle_cnn/conv2d_13/bias/m
�
3Adam/angle_cnn/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_13/bias/m*
_output_shapes
:@*
dtype0
�
!Adam/angle_cnn/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*2
shared_name#!Adam/angle_cnn/conv2d_13/kernel/m
�
5Adam/angle_cnn/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_13/kernel/m*&
_output_shapes
:0@*
dtype0
�
Adam/angle_cnn/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/angle_cnn/conv2d_12/bias/m
�
3Adam/angle_cnn/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_12/bias/m*
_output_shapes
:0*
dtype0
�
!Adam/angle_cnn/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*2
shared_name#!Adam/angle_cnn/conv2d_12/kernel/m
�
5Adam/angle_cnn/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_12/kernel/m*&
_output_shapes
:$0*
dtype0
�
Adam/angle_cnn/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*0
shared_name!Adam/angle_cnn/conv2d_11/bias/m
�
3Adam/angle_cnn/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_11/bias/m*
_output_shapes
:$*
dtype0
�
!Adam/angle_cnn/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*2
shared_name#!Adam/angle_cnn/conv2d_11/kernel/m
�
5Adam/angle_cnn/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_11/kernel/m*&
_output_shapes
:$*
dtype0
�
Adam/angle_cnn/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/angle_cnn/conv2d_10/bias/m
�
3Adam/angle_cnn/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/angle_cnn/conv2d_10/bias/m*
_output_shapes
:*
dtype0
�
!Adam/angle_cnn/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/angle_cnn/conv2d_10/kernel/m
�
5Adam/angle_cnn/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/angle_cnn/conv2d_10/kernel/m*&
_output_shapes
:*
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
angle_cnn/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameangle_cnn/dense_10/bias

+angle_cnn/dense_10/bias/Read/ReadVariableOpReadVariableOpangle_cnn/dense_10/bias*
_output_shapes
:*
dtype0
�
angle_cnn/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2**
shared_nameangle_cnn/dense_10/kernel
�
-angle_cnn/dense_10/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/dense_10/kernel*
_output_shapes

:2*
dtype0
�
angle_cnn/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*'
shared_nameangle_cnn/dense_9/bias
}
*angle_cnn/dense_9/bias/Read/ReadVariableOpReadVariableOpangle_cnn/dense_9/bias*
_output_shapes
:2*
dtype0
�
angle_cnn/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*)
shared_nameangle_cnn/dense_9/kernel
�
,angle_cnn/dense_9/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/dense_9/kernel*
_output_shapes

:d2*
dtype0
�
angle_cnn/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*'
shared_nameangle_cnn/dense_8/bias
}
*angle_cnn/dense_8/bias/Read/ReadVariableOpReadVariableOpangle_cnn/dense_8/bias*
_output_shapes
:d*
dtype0
�
angle_cnn/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��#d*)
shared_nameangle_cnn/dense_8/kernel
�
,angle_cnn/dense_8/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/dense_8/kernel* 
_output_shapes
:
��#d*
dtype0
�
angle_cnn/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameangle_cnn/conv2d_14/bias
�
,angle_cnn/conv2d_14/bias/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_14/bias*
_output_shapes
:@*
dtype0
�
angle_cnn/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*+
shared_nameangle_cnn/conv2d_14/kernel
�
.angle_cnn/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_14/kernel*&
_output_shapes
:@@*
dtype0
�
angle_cnn/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameangle_cnn/conv2d_13/bias
�
,angle_cnn/conv2d_13/bias/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_13/bias*
_output_shapes
:@*
dtype0
�
angle_cnn/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*+
shared_nameangle_cnn/conv2d_13/kernel
�
.angle_cnn/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_13/kernel*&
_output_shapes
:0@*
dtype0
�
angle_cnn/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameangle_cnn/conv2d_12/bias
�
,angle_cnn/conv2d_12/bias/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_12/bias*
_output_shapes
:0*
dtype0
�
angle_cnn/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$0*+
shared_nameangle_cnn/conv2d_12/kernel
�
.angle_cnn/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_12/kernel*&
_output_shapes
:$0*
dtype0
�
angle_cnn/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*)
shared_nameangle_cnn/conv2d_11/bias
�
,angle_cnn/conv2d_11/bias/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_11/bias*
_output_shapes
:$*
dtype0
�
angle_cnn/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*+
shared_nameangle_cnn/conv2d_11/kernel
�
.angle_cnn/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_11/kernel*&
_output_shapes
:$*
dtype0
�
angle_cnn/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameangle_cnn/conv2d_10/bias
�
,angle_cnn/conv2d_10/bias/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_10/bias*
_output_shapes
:*
dtype0
�
angle_cnn/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameangle_cnn/conv2d_10/kernel
�
.angle_cnn/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpangle_cnn/conv2d_10/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*0
_output_shapes
:����������B*
dtype0*%
shape:����������B
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1angle_cnn/conv2d_10/kernelangle_cnn/conv2d_10/biasangle_cnn/conv2d_11/kernelangle_cnn/conv2d_11/biasangle_cnn/conv2d_12/kernelangle_cnn/conv2d_12/biasangle_cnn/conv2d_13/kernelangle_cnn/conv2d_13/biasangle_cnn/conv2d_14/kernelangle_cnn/conv2d_14/biasangle_cnn/dense_8/kernelangle_cnn/dense_8/biasangle_cnn/dense_9/kernelangle_cnn/dense_9/biasangle_cnn/dense_10/kernelangle_cnn/dense_10/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_237830

NoOpNoOp
�f
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�f
value�fB�f B�f
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
D4
	optimizer

signatures*
z
0
1
2
3
4
5
6
7
8
9
10
11
12
 13
!14
"15*
z
0
1
2
3
4
5
6
7
8
9
10
11
12
 13
!14
"15*
* 
�
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

(trace_0
)trace_1* 

*trace_0
+trace_1* 
* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

kernel
bias*
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
�
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�*

lserving_default* 
ZT
VARIABLE_VALUEangle_cnn/conv2d_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/conv2d_10/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEangle_cnn/conv2d_11/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/conv2d_11/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEangle_cnn/conv2d_12/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/conv2d_12/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEangle_cnn/conv2d_13/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/conv2d_13/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEangle_cnn/conv2d_14/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/conv2d_14/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEangle_cnn/dense_8/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEangle_cnn/dense_8/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEangle_cnn/dense_9/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEangle_cnn/dense_9/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEangle_cnn/dense_10/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEangle_cnn/dense_10/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
	1

2
3
4
5
6
7
8*

m0
n1*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
* 

0
1*

0
1*
* 
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
* 

0
1*

0
1*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
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
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*
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
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
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
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
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
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
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
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
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
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_10/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_10/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_11/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_11/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_12/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_12/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_13/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_13/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_14/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_14/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/angle_cnn/dense_8/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/angle_cnn/dense_8/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/angle_cnn/dense_9/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/angle_cnn/dense_9/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/angle_cnn/dense_10/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/dense_10/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_10/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_10/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_11/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_11/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_12/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_12/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_13/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_13/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/angle_cnn/conv2d_14/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/conv2d_14/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/angle_cnn/dense_8/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/angle_cnn/dense_8/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/angle_cnn/dense_9/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/angle_cnn/dense_9/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/angle_cnn/dense_10/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/angle_cnn/dense_10/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.angle_cnn/conv2d_10/kernel/Read/ReadVariableOp,angle_cnn/conv2d_10/bias/Read/ReadVariableOp.angle_cnn/conv2d_11/kernel/Read/ReadVariableOp,angle_cnn/conv2d_11/bias/Read/ReadVariableOp.angle_cnn/conv2d_12/kernel/Read/ReadVariableOp,angle_cnn/conv2d_12/bias/Read/ReadVariableOp.angle_cnn/conv2d_13/kernel/Read/ReadVariableOp,angle_cnn/conv2d_13/bias/Read/ReadVariableOp.angle_cnn/conv2d_14/kernel/Read/ReadVariableOp,angle_cnn/conv2d_14/bias/Read/ReadVariableOp,angle_cnn/dense_8/kernel/Read/ReadVariableOp*angle_cnn/dense_8/bias/Read/ReadVariableOp,angle_cnn/dense_9/kernel/Read/ReadVariableOp*angle_cnn/dense_9/bias/Read/ReadVariableOp-angle_cnn/dense_10/kernel/Read/ReadVariableOp+angle_cnn/dense_10/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp5Adam/angle_cnn/conv2d_10/kernel/m/Read/ReadVariableOp3Adam/angle_cnn/conv2d_10/bias/m/Read/ReadVariableOp5Adam/angle_cnn/conv2d_11/kernel/m/Read/ReadVariableOp3Adam/angle_cnn/conv2d_11/bias/m/Read/ReadVariableOp5Adam/angle_cnn/conv2d_12/kernel/m/Read/ReadVariableOp3Adam/angle_cnn/conv2d_12/bias/m/Read/ReadVariableOp5Adam/angle_cnn/conv2d_13/kernel/m/Read/ReadVariableOp3Adam/angle_cnn/conv2d_13/bias/m/Read/ReadVariableOp5Adam/angle_cnn/conv2d_14/kernel/m/Read/ReadVariableOp3Adam/angle_cnn/conv2d_14/bias/m/Read/ReadVariableOp3Adam/angle_cnn/dense_8/kernel/m/Read/ReadVariableOp1Adam/angle_cnn/dense_8/bias/m/Read/ReadVariableOp3Adam/angle_cnn/dense_9/kernel/m/Read/ReadVariableOp1Adam/angle_cnn/dense_9/bias/m/Read/ReadVariableOp4Adam/angle_cnn/dense_10/kernel/m/Read/ReadVariableOp2Adam/angle_cnn/dense_10/bias/m/Read/ReadVariableOp5Adam/angle_cnn/conv2d_10/kernel/v/Read/ReadVariableOp3Adam/angle_cnn/conv2d_10/bias/v/Read/ReadVariableOp5Adam/angle_cnn/conv2d_11/kernel/v/Read/ReadVariableOp3Adam/angle_cnn/conv2d_11/bias/v/Read/ReadVariableOp5Adam/angle_cnn/conv2d_12/kernel/v/Read/ReadVariableOp3Adam/angle_cnn/conv2d_12/bias/v/Read/ReadVariableOp5Adam/angle_cnn/conv2d_13/kernel/v/Read/ReadVariableOp3Adam/angle_cnn/conv2d_13/bias/v/Read/ReadVariableOp5Adam/angle_cnn/conv2d_14/kernel/v/Read/ReadVariableOp3Adam/angle_cnn/conv2d_14/bias/v/Read/ReadVariableOp3Adam/angle_cnn/dense_8/kernel/v/Read/ReadVariableOp1Adam/angle_cnn/dense_8/bias/v/Read/ReadVariableOp3Adam/angle_cnn/dense_9/kernel/v/Read/ReadVariableOp1Adam/angle_cnn/dense_9/bias/v/Read/ReadVariableOp4Adam/angle_cnn/dense_10/kernel/v/Read/ReadVariableOp2Adam/angle_cnn/dense_10/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_238294
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameangle_cnn/conv2d_10/kernelangle_cnn/conv2d_10/biasangle_cnn/conv2d_11/kernelangle_cnn/conv2d_11/biasangle_cnn/conv2d_12/kernelangle_cnn/conv2d_12/biasangle_cnn/conv2d_13/kernelangle_cnn/conv2d_13/biasangle_cnn/conv2d_14/kernelangle_cnn/conv2d_14/biasangle_cnn/dense_8/kernelangle_cnn/dense_8/biasangle_cnn/dense_9/kernelangle_cnn/dense_9/biasangle_cnn/dense_10/kernelangle_cnn/dense_10/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount!Adam/angle_cnn/conv2d_10/kernel/mAdam/angle_cnn/conv2d_10/bias/m!Adam/angle_cnn/conv2d_11/kernel/mAdam/angle_cnn/conv2d_11/bias/m!Adam/angle_cnn/conv2d_12/kernel/mAdam/angle_cnn/conv2d_12/bias/m!Adam/angle_cnn/conv2d_13/kernel/mAdam/angle_cnn/conv2d_13/bias/m!Adam/angle_cnn/conv2d_14/kernel/mAdam/angle_cnn/conv2d_14/bias/mAdam/angle_cnn/dense_8/kernel/mAdam/angle_cnn/dense_8/bias/mAdam/angle_cnn/dense_9/kernel/mAdam/angle_cnn/dense_9/bias/m Adam/angle_cnn/dense_10/kernel/mAdam/angle_cnn/dense_10/bias/m!Adam/angle_cnn/conv2d_10/kernel/vAdam/angle_cnn/conv2d_10/bias/v!Adam/angle_cnn/conv2d_11/kernel/vAdam/angle_cnn/conv2d_11/bias/v!Adam/angle_cnn/conv2d_12/kernel/vAdam/angle_cnn/conv2d_12/bias/v!Adam/angle_cnn/conv2d_13/kernel/vAdam/angle_cnn/conv2d_13/bias/v!Adam/angle_cnn/conv2d_14/kernel/vAdam/angle_cnn/conv2d_14/bias/vAdam/angle_cnn/dense_8/kernel/vAdam/angle_cnn/dense_8/bias/vAdam/angle_cnn/dense_9/kernel/vAdam/angle_cnn/dense_9/bias/v Adam/angle_cnn/dense_10/kernel/vAdam/angle_cnn/dense_10/bias/v*E
Tin>
<2:*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_238475��
�

�
C__inference_dense_9_layer_call_and_return_conditional_losses_238080

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_238009

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������4@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������4@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������60: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������60
 
_user_specified_nameinputs
�-
�
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237582
x*
conv2d_10_237449:
conv2d_10_237451:*
conv2d_11_237466:$
conv2d_11_237468:$*
conv2d_12_237483:$0
conv2d_12_237485:0*
conv2d_13_237500:0@
conv2d_13_237502:@*
conv2d_14_237517:@@
conv2d_14_237519:@"
dense_8_237542:
��#d
dense_8_237544:d 
dense_9_237559:d2
dense_9_237561:2!
dense_10_237576:2
dense_10_237578:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallxconv2d_10_237449conv2d_10_237451*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237448�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_237466conv2d_11_237468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������:$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237465�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0conv2d_12_237483conv2d_12_237485*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������60*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237482�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_237500conv2d_13_237502*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������4@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_237499�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_237517conv2d_14_237519*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������2@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_237516�
flatten_2/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_237528�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_237542dense_8_237544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_237541�
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_237559dense_9_237561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_237558�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_237576dense_10_237578*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_237575x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
0
_output_shapes
:����������B

_user_specified_namex
�
�
)__inference_dense_10_layer_call_fn_238089

inputs
unknown:2
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_237575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_238029

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������4@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������4@
 
_user_specified_nameinputs
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_237575

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_237830
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
��#d

unknown_10:d

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_237430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:����������B
!
_user_specified_name	input_1
�
�
*__inference_conv2d_10_layer_call_fn_237938

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
 *0
_output_shapes
:����������>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237448x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������B: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������B
 
_user_specified_nameinputs
�
�
*__inference_conv2d_11_layer_call_fn_237958

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
 *0
_output_shapes
:����������:$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237465x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������:$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������>: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������>
 
_user_specified_nameinputs
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237482

inputs8
conv2d_readvariableop_resource:$0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������60j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������60w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������:$
 
_user_specified_nameinputs
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237448

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������>j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������B
 
_user_specified_nameinputs
�s
�
__inference__traced_save_238294
file_prefix9
5savev2_angle_cnn_conv2d_10_kernel_read_readvariableop7
3savev2_angle_cnn_conv2d_10_bias_read_readvariableop9
5savev2_angle_cnn_conv2d_11_kernel_read_readvariableop7
3savev2_angle_cnn_conv2d_11_bias_read_readvariableop9
5savev2_angle_cnn_conv2d_12_kernel_read_readvariableop7
3savev2_angle_cnn_conv2d_12_bias_read_readvariableop9
5savev2_angle_cnn_conv2d_13_kernel_read_readvariableop7
3savev2_angle_cnn_conv2d_13_bias_read_readvariableop9
5savev2_angle_cnn_conv2d_14_kernel_read_readvariableop7
3savev2_angle_cnn_conv2d_14_bias_read_readvariableop7
3savev2_angle_cnn_dense_8_kernel_read_readvariableop5
1savev2_angle_cnn_dense_8_bias_read_readvariableop7
3savev2_angle_cnn_dense_9_kernel_read_readvariableop5
1savev2_angle_cnn_dense_9_bias_read_readvariableop8
4savev2_angle_cnn_dense_10_kernel_read_readvariableop6
2savev2_angle_cnn_dense_10_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_10_kernel_m_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_10_bias_m_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_11_kernel_m_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_11_bias_m_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_12_kernel_m_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_12_bias_m_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_13_kernel_m_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_13_bias_m_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_14_kernel_m_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_14_bias_m_read_readvariableop>
:savev2_adam_angle_cnn_dense_8_kernel_m_read_readvariableop<
8savev2_adam_angle_cnn_dense_8_bias_m_read_readvariableop>
:savev2_adam_angle_cnn_dense_9_kernel_m_read_readvariableop<
8savev2_adam_angle_cnn_dense_9_bias_m_read_readvariableop?
;savev2_adam_angle_cnn_dense_10_kernel_m_read_readvariableop=
9savev2_adam_angle_cnn_dense_10_bias_m_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_10_kernel_v_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_10_bias_v_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_11_kernel_v_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_11_bias_v_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_12_kernel_v_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_12_bias_v_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_13_kernel_v_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_13_bias_v_read_readvariableop@
<savev2_adam_angle_cnn_conv2d_14_kernel_v_read_readvariableop>
:savev2_adam_angle_cnn_conv2d_14_bias_v_read_readvariableop>
:savev2_adam_angle_cnn_dense_8_kernel_v_read_readvariableop<
8savev2_adam_angle_cnn_dense_8_bias_v_read_readvariableop>
:savev2_adam_angle_cnn_dense_9_kernel_v_read_readvariableop<
8savev2_adam_angle_cnn_dense_9_bias_v_read_readvariableop?
;savev2_adam_angle_cnn_dense_10_kernel_v_read_readvariableop=
9savev2_adam_angle_cnn_dense_10_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_angle_cnn_conv2d_10_kernel_read_readvariableop3savev2_angle_cnn_conv2d_10_bias_read_readvariableop5savev2_angle_cnn_conv2d_11_kernel_read_readvariableop3savev2_angle_cnn_conv2d_11_bias_read_readvariableop5savev2_angle_cnn_conv2d_12_kernel_read_readvariableop3savev2_angle_cnn_conv2d_12_bias_read_readvariableop5savev2_angle_cnn_conv2d_13_kernel_read_readvariableop3savev2_angle_cnn_conv2d_13_bias_read_readvariableop5savev2_angle_cnn_conv2d_14_kernel_read_readvariableop3savev2_angle_cnn_conv2d_14_bias_read_readvariableop3savev2_angle_cnn_dense_8_kernel_read_readvariableop1savev2_angle_cnn_dense_8_bias_read_readvariableop3savev2_angle_cnn_dense_9_kernel_read_readvariableop1savev2_angle_cnn_dense_9_bias_read_readvariableop4savev2_angle_cnn_dense_10_kernel_read_readvariableop2savev2_angle_cnn_dense_10_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_adam_angle_cnn_conv2d_10_kernel_m_read_readvariableop:savev2_adam_angle_cnn_conv2d_10_bias_m_read_readvariableop<savev2_adam_angle_cnn_conv2d_11_kernel_m_read_readvariableop:savev2_adam_angle_cnn_conv2d_11_bias_m_read_readvariableop<savev2_adam_angle_cnn_conv2d_12_kernel_m_read_readvariableop:savev2_adam_angle_cnn_conv2d_12_bias_m_read_readvariableop<savev2_adam_angle_cnn_conv2d_13_kernel_m_read_readvariableop:savev2_adam_angle_cnn_conv2d_13_bias_m_read_readvariableop<savev2_adam_angle_cnn_conv2d_14_kernel_m_read_readvariableop:savev2_adam_angle_cnn_conv2d_14_bias_m_read_readvariableop:savev2_adam_angle_cnn_dense_8_kernel_m_read_readvariableop8savev2_adam_angle_cnn_dense_8_bias_m_read_readvariableop:savev2_adam_angle_cnn_dense_9_kernel_m_read_readvariableop8savev2_adam_angle_cnn_dense_9_bias_m_read_readvariableop;savev2_adam_angle_cnn_dense_10_kernel_m_read_readvariableop9savev2_adam_angle_cnn_dense_10_bias_m_read_readvariableop<savev2_adam_angle_cnn_conv2d_10_kernel_v_read_readvariableop:savev2_adam_angle_cnn_conv2d_10_bias_v_read_readvariableop<savev2_adam_angle_cnn_conv2d_11_kernel_v_read_readvariableop:savev2_adam_angle_cnn_conv2d_11_bias_v_read_readvariableop<savev2_adam_angle_cnn_conv2d_12_kernel_v_read_readvariableop:savev2_adam_angle_cnn_conv2d_12_bias_v_read_readvariableop<savev2_adam_angle_cnn_conv2d_13_kernel_v_read_readvariableop:savev2_adam_angle_cnn_conv2d_13_bias_v_read_readvariableop<savev2_adam_angle_cnn_conv2d_14_kernel_v_read_readvariableop:savev2_adam_angle_cnn_conv2d_14_bias_v_read_readvariableop:savev2_adam_angle_cnn_dense_8_kernel_v_read_readvariableop8savev2_adam_angle_cnn_dense_8_bias_v_read_readvariableop:savev2_adam_angle_cnn_dense_9_kernel_v_read_readvariableop8savev2_adam_angle_cnn_dense_9_bias_v_read_readvariableop;savev2_adam_angle_cnn_dense_10_kernel_v_read_readvariableop9savev2_adam_angle_cnn_dense_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::$:$:$0:0:0@:@:@@:@:
��#d:d:d2:2:2:: : : : : : : : : :::$:$:$0:0:0@:@:@@:@:
��#d:d:d2:2:2::::$:$:$0:0:0@:@:@@:@:
��#d:d:d2:2:2:: 2(
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
��#d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::
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
: :
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
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:$: 

_output_shapes
:$:,(
&
_output_shapes
:$0: 

_output_shapes
:0:, (
&
_output_shapes
:0@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:&$"
 
_output_shapes
:
��#d: %

_output_shapes
:d:$& 

_output_shapes

:d2: '

_output_shapes
:2:$( 

_output_shapes

:2: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:$: -

_output_shapes
:$:,.(
&
_output_shapes
:$0: /

_output_shapes
:0:,0(
&
_output_shapes
:0@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:&4"
 
_output_shapes
:
��#d: 5

_output_shapes
:d:$6 

_output_shapes

:d2: 7

_output_shapes
:2:$8 

_output_shapes

:2: 9

_output_shapes
:::

_output_shapes
: 
�
�
*__inference_angle_cnn_layer_call_fn_237617
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
��#d

unknown_10:d

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:����������B
!
_user_specified_name	input_1
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237969

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������:$j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������:$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������>
 
_user_specified_nameinputs
�
�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_237516

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������4@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������4@
 
_user_specified_nameinputs
�
�
*__inference_angle_cnn_layer_call_fn_237867
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
��#d

unknown_10:d

unknown_11:d2

unknown_12:2

unknown_13:2

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
0
_output_shapes
:����������B

_user_specified_namex
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_238100

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_conv2d_12_layer_call_fn_237978

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
 *0
_output_shapes
:����������60*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237482x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������60`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:$: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������:$
 
_user_specified_nameinputs
�
�
*__inference_conv2d_14_layer_call_fn_238018

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
 *0
_output_shapes
:����������2@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_237516x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������4@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������4@
 
_user_specified_nameinputs
�
�
(__inference_dense_9_layer_call_fn_238069

inputs
unknown:d2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_237558o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�'
"__inference__traced_restore_238475
file_prefixE
+assignvariableop_angle_cnn_conv2d_10_kernel:9
+assignvariableop_1_angle_cnn_conv2d_10_bias:G
-assignvariableop_2_angle_cnn_conv2d_11_kernel:$9
+assignvariableop_3_angle_cnn_conv2d_11_bias:$G
-assignvariableop_4_angle_cnn_conv2d_12_kernel:$09
+assignvariableop_5_angle_cnn_conv2d_12_bias:0G
-assignvariableop_6_angle_cnn_conv2d_13_kernel:0@9
+assignvariableop_7_angle_cnn_conv2d_13_bias:@G
-assignvariableop_8_angle_cnn_conv2d_14_kernel:@@9
+assignvariableop_9_angle_cnn_conv2d_14_bias:@@
,assignvariableop_10_angle_cnn_dense_8_kernel:
��#d8
*assignvariableop_11_angle_cnn_dense_8_bias:d>
,assignvariableop_12_angle_cnn_dense_9_kernel:d28
*assignvariableop_13_angle_cnn_dense_9_bias:2?
-assignvariableop_14_angle_cnn_dense_10_kernel:29
+assignvariableop_15_angle_cnn_dense_10_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: O
5assignvariableop_25_adam_angle_cnn_conv2d_10_kernel_m:A
3assignvariableop_26_adam_angle_cnn_conv2d_10_bias_m:O
5assignvariableop_27_adam_angle_cnn_conv2d_11_kernel_m:$A
3assignvariableop_28_adam_angle_cnn_conv2d_11_bias_m:$O
5assignvariableop_29_adam_angle_cnn_conv2d_12_kernel_m:$0A
3assignvariableop_30_adam_angle_cnn_conv2d_12_bias_m:0O
5assignvariableop_31_adam_angle_cnn_conv2d_13_kernel_m:0@A
3assignvariableop_32_adam_angle_cnn_conv2d_13_bias_m:@O
5assignvariableop_33_adam_angle_cnn_conv2d_14_kernel_m:@@A
3assignvariableop_34_adam_angle_cnn_conv2d_14_bias_m:@G
3assignvariableop_35_adam_angle_cnn_dense_8_kernel_m:
��#d?
1assignvariableop_36_adam_angle_cnn_dense_8_bias_m:dE
3assignvariableop_37_adam_angle_cnn_dense_9_kernel_m:d2?
1assignvariableop_38_adam_angle_cnn_dense_9_bias_m:2F
4assignvariableop_39_adam_angle_cnn_dense_10_kernel_m:2@
2assignvariableop_40_adam_angle_cnn_dense_10_bias_m:O
5assignvariableop_41_adam_angle_cnn_conv2d_10_kernel_v:A
3assignvariableop_42_adam_angle_cnn_conv2d_10_bias_v:O
5assignvariableop_43_adam_angle_cnn_conv2d_11_kernel_v:$A
3assignvariableop_44_adam_angle_cnn_conv2d_11_bias_v:$O
5assignvariableop_45_adam_angle_cnn_conv2d_12_kernel_v:$0A
3assignvariableop_46_adam_angle_cnn_conv2d_12_bias_v:0O
5assignvariableop_47_adam_angle_cnn_conv2d_13_kernel_v:0@A
3assignvariableop_48_adam_angle_cnn_conv2d_13_bias_v:@O
5assignvariableop_49_adam_angle_cnn_conv2d_14_kernel_v:@@A
3assignvariableop_50_adam_angle_cnn_conv2d_14_bias_v:@G
3assignvariableop_51_adam_angle_cnn_dense_8_kernel_v:
��#d?
1assignvariableop_52_adam_angle_cnn_dense_8_bias_v:dE
3assignvariableop_53_adam_angle_cnn_dense_9_kernel_v:d2?
1assignvariableop_54_adam_angle_cnn_dense_9_bias_v:2F
4assignvariableop_55_adam_angle_cnn_dense_10_kernel_v:2@
2assignvariableop_56_adam_angle_cnn_dense_10_bias_v:
identity_58��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp+assignvariableop_angle_cnn_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_angle_cnn_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp-assignvariableop_2_angle_cnn_conv2d_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_angle_cnn_conv2d_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp-assignvariableop_4_angle_cnn_conv2d_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp+assignvariableop_5_angle_cnn_conv2d_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp-assignvariableop_6_angle_cnn_conv2d_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_angle_cnn_conv2d_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp-assignvariableop_8_angle_cnn_conv2d_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_angle_cnn_conv2d_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp,assignvariableop_10_angle_cnn_dense_8_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_angle_cnn_dense_8_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp,assignvariableop_12_angle_cnn_dense_9_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_angle_cnn_dense_9_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_angle_cnn_dense_10_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_angle_cnn_dense_10_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_angle_cnn_conv2d_10_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_angle_cnn_conv2d_10_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adam_angle_cnn_conv2d_11_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp3assignvariableop_28_adam_angle_cnn_conv2d_11_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_angle_cnn_conv2d_12_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_angle_cnn_conv2d_12_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_angle_cnn_conv2d_13_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_angle_cnn_conv2d_13_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_angle_cnn_conv2d_14_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp3assignvariableop_34_adam_angle_cnn_conv2d_14_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp3assignvariableop_35_adam_angle_cnn_dense_8_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp1assignvariableop_36_adam_angle_cnn_dense_8_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_angle_cnn_dense_9_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp1assignvariableop_38_adam_angle_cnn_dense_9_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_angle_cnn_dense_10_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_angle_cnn_dense_10_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_angle_cnn_conv2d_10_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_angle_cnn_conv2d_10_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_angle_cnn_conv2d_11_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_angle_cnn_conv2d_11_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_angle_cnn_conv2d_12_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_angle_cnn_conv2d_12_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp5assignvariableop_47_adam_angle_cnn_conv2d_13_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_angle_cnn_conv2d_13_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_angle_cnn_conv2d_14_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp3assignvariableop_50_adam_angle_cnn_conv2d_14_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp3assignvariableop_51_adam_angle_cnn_dense_8_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp1assignvariableop_52_adam_angle_cnn_dense_8_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp3assignvariableop_53_adam_angle_cnn_dense_9_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp1assignvariableop_54_adam_angle_cnn_dense_9_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp4assignvariableop_55_adam_angle_cnn_dense_10_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp2assignvariableop_56_adam_angle_cnn_dense_10_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*�
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
C__inference_dense_9_layer_call_and_return_conditional_losses_237558

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_237541

inputs2
matmul_readvariableop_resource:
��#d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��#d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������#
 
_user_specified_nameinputs
�
�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237989

inputs8
conv2d_readvariableop_resource:$0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������60j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������60w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������:$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������:$
 
_user_specified_nameinputs
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237949

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������>j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������B
 
_user_specified_nameinputs
�
�
(__inference_dense_8_layer_call_fn_238049

inputs
unknown:
��#d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_237541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������#: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������#
 
_user_specified_nameinputs
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_238060

inputs2
matmul_readvariableop_resource:
��#d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��#d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������#
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_238040

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������#Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2@:X T
0
_output_shapes
:����������2@
 
_user_specified_nameinputs
�
F
*__inference_flatten_2_layer_call_fn_238034

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_237528b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2@:X T
0
_output_shapes
:����������2@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_237499

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������4@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������4@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������60: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������60
 
_user_specified_nameinputs
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237465

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������:$j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������:$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������>
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_237528

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������#Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2@:X T
0
_output_shapes
:����������2@
 
_user_specified_nameinputs
�.
�
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237785
input_1*
conv2d_10_237743:
conv2d_10_237745:*
conv2d_11_237748:$
conv2d_11_237750:$*
conv2d_12_237753:$0
conv2d_12_237755:0*
conv2d_13_237758:0@
conv2d_13_237760:@*
conv2d_14_237763:@@
conv2d_14_237765:@"
dense_8_237769:
��#d
dense_8_237771:d 
dense_9_237774:d2
dense_9_237776:2!
dense_10_237779:2
dense_10_237781:
identity��!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_10_237743conv2d_10_237745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237448�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_237748conv2d_11_237750*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������:$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237465�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0conv2d_12_237753conv2d_12_237755*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������60*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237482�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_237758conv2d_13_237760*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������4@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_237499�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_237763conv2d_14_237765*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������2@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_237516�
flatten_2/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_237528�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_8_237769dense_8_237771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_237541�
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_237774dense_9_237776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_237558�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_237779dense_10_237781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_237575x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
0
_output_shapes
:����������B
!
_user_specified_name	input_1
�
�
*__inference_conv2d_13_layer_call_fn_237998

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
 *0
_output_shapes
:����������4@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_237499x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������4@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������60: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������60
 
_user_specified_nameinputs
�Y
�
!__inference__wrapped_model_237430
input_1L
2angle_cnn_conv2d_10_conv2d_readvariableop_resource:A
3angle_cnn_conv2d_10_biasadd_readvariableop_resource:L
2angle_cnn_conv2d_11_conv2d_readvariableop_resource:$A
3angle_cnn_conv2d_11_biasadd_readvariableop_resource:$L
2angle_cnn_conv2d_12_conv2d_readvariableop_resource:$0A
3angle_cnn_conv2d_12_biasadd_readvariableop_resource:0L
2angle_cnn_conv2d_13_conv2d_readvariableop_resource:0@A
3angle_cnn_conv2d_13_biasadd_readvariableop_resource:@L
2angle_cnn_conv2d_14_conv2d_readvariableop_resource:@@A
3angle_cnn_conv2d_14_biasadd_readvariableop_resource:@D
0angle_cnn_dense_8_matmul_readvariableop_resource:
��#d?
1angle_cnn_dense_8_biasadd_readvariableop_resource:dB
0angle_cnn_dense_9_matmul_readvariableop_resource:d2?
1angle_cnn_dense_9_biasadd_readvariableop_resource:2C
1angle_cnn_dense_10_matmul_readvariableop_resource:2@
2angle_cnn_dense_10_biasadd_readvariableop_resource:
identity��*angle_cnn/conv2d_10/BiasAdd/ReadVariableOp�)angle_cnn/conv2d_10/Conv2D/ReadVariableOp�*angle_cnn/conv2d_11/BiasAdd/ReadVariableOp�)angle_cnn/conv2d_11/Conv2D/ReadVariableOp�*angle_cnn/conv2d_12/BiasAdd/ReadVariableOp�)angle_cnn/conv2d_12/Conv2D/ReadVariableOp�*angle_cnn/conv2d_13/BiasAdd/ReadVariableOp�)angle_cnn/conv2d_13/Conv2D/ReadVariableOp�*angle_cnn/conv2d_14/BiasAdd/ReadVariableOp�)angle_cnn/conv2d_14/Conv2D/ReadVariableOp�)angle_cnn/dense_10/BiasAdd/ReadVariableOp�(angle_cnn/dense_10/MatMul/ReadVariableOp�(angle_cnn/dense_8/BiasAdd/ReadVariableOp�'angle_cnn/dense_8/MatMul/ReadVariableOp�(angle_cnn/dense_9/BiasAdd/ReadVariableOp�'angle_cnn/dense_9/MatMul/ReadVariableOp�
)angle_cnn/conv2d_10/Conv2D/ReadVariableOpReadVariableOp2angle_cnn_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
angle_cnn/conv2d_10/Conv2DConv2Dinput_11angle_cnn/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>*
paddingVALID*
strides
�
*angle_cnn/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp3angle_cnn_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
angle_cnn/conv2d_10/BiasAddBiasAdd#angle_cnn/conv2d_10/Conv2D:output:02angle_cnn/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>�
angle_cnn/conv2d_10/ReluRelu$angle_cnn/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:����������>�
)angle_cnn/conv2d_11/Conv2D/ReadVariableOpReadVariableOp2angle_cnn_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
angle_cnn/conv2d_11/Conv2DConv2D&angle_cnn/conv2d_10/Relu:activations:01angle_cnn/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$*
paddingVALID*
strides
�
*angle_cnn/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp3angle_cnn_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
angle_cnn/conv2d_11/BiasAddBiasAdd#angle_cnn/conv2d_11/Conv2D:output:02angle_cnn/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$�
angle_cnn/conv2d_11/ReluRelu$angle_cnn/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������:$�
)angle_cnn/conv2d_12/Conv2D/ReadVariableOpReadVariableOp2angle_cnn_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
angle_cnn/conv2d_12/Conv2DConv2D&angle_cnn/conv2d_11/Relu:activations:01angle_cnn/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60*
paddingVALID*
strides
�
*angle_cnn/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp3angle_cnn_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
angle_cnn/conv2d_12/BiasAddBiasAdd#angle_cnn/conv2d_12/Conv2D:output:02angle_cnn/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60�
angle_cnn/conv2d_12/ReluRelu$angle_cnn/conv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:����������60�
)angle_cnn/conv2d_13/Conv2D/ReadVariableOpReadVariableOp2angle_cnn_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
angle_cnn/conv2d_13/Conv2DConv2D&angle_cnn/conv2d_12/Relu:activations:01angle_cnn/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@*
paddingVALID*
strides
�
*angle_cnn/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp3angle_cnn_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
angle_cnn/conv2d_13/BiasAddBiasAdd#angle_cnn/conv2d_13/Conv2D:output:02angle_cnn/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@�
angle_cnn/conv2d_13/ReluRelu$angle_cnn/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������4@�
)angle_cnn/conv2d_14/Conv2D/ReadVariableOpReadVariableOp2angle_cnn_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
angle_cnn/conv2d_14/Conv2DConv2D&angle_cnn/conv2d_13/Relu:activations:01angle_cnn/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@*
paddingVALID*
strides
�
*angle_cnn/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp3angle_cnn_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
angle_cnn/conv2d_14/BiasAddBiasAdd#angle_cnn/conv2d_14/Conv2D:output:02angle_cnn/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@�
angle_cnn/conv2d_14/ReluRelu$angle_cnn/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:����������2@j
angle_cnn/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � �
angle_cnn/flatten_2/ReshapeReshape&angle_cnn/conv2d_14/Relu:activations:0"angle_cnn/flatten_2/Const:output:0*
T0*)
_output_shapes
:�����������#�
'angle_cnn/dense_8/MatMul/ReadVariableOpReadVariableOp0angle_cnn_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
��#d*
dtype0�
angle_cnn/dense_8/MatMulMatMul$angle_cnn/flatten_2/Reshape:output:0/angle_cnn/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
(angle_cnn/dense_8/BiasAdd/ReadVariableOpReadVariableOp1angle_cnn_dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
angle_cnn/dense_8/BiasAddBiasAdd"angle_cnn/dense_8/MatMul:product:00angle_cnn/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dt
angle_cnn/dense_8/ReluRelu"angle_cnn/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
'angle_cnn/dense_9/MatMul/ReadVariableOpReadVariableOp0angle_cnn_dense_9_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0�
angle_cnn/dense_9/MatMulMatMul$angle_cnn/dense_8/Relu:activations:0/angle_cnn/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(angle_cnn/dense_9/BiasAdd/ReadVariableOpReadVariableOp1angle_cnn_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
angle_cnn/dense_9/BiasAddBiasAdd"angle_cnn/dense_9/MatMul:product:00angle_cnn/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2t
angle_cnn/dense_9/ReluRelu"angle_cnn/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(angle_cnn/dense_10/MatMul/ReadVariableOpReadVariableOp1angle_cnn_dense_10_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
angle_cnn/dense_10/MatMulMatMul$angle_cnn/dense_9/Relu:activations:00angle_cnn/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)angle_cnn/dense_10/BiasAdd/ReadVariableOpReadVariableOp2angle_cnn_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
angle_cnn/dense_10/BiasAddBiasAdd#angle_cnn/dense_10/MatMul:product:01angle_cnn/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
angle_cnn/dense_10/SoftmaxSoftmax#angle_cnn/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$angle_cnn/dense_10/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^angle_cnn/conv2d_10/BiasAdd/ReadVariableOp*^angle_cnn/conv2d_10/Conv2D/ReadVariableOp+^angle_cnn/conv2d_11/BiasAdd/ReadVariableOp*^angle_cnn/conv2d_11/Conv2D/ReadVariableOp+^angle_cnn/conv2d_12/BiasAdd/ReadVariableOp*^angle_cnn/conv2d_12/Conv2D/ReadVariableOp+^angle_cnn/conv2d_13/BiasAdd/ReadVariableOp*^angle_cnn/conv2d_13/Conv2D/ReadVariableOp+^angle_cnn/conv2d_14/BiasAdd/ReadVariableOp*^angle_cnn/conv2d_14/Conv2D/ReadVariableOp*^angle_cnn/dense_10/BiasAdd/ReadVariableOp)^angle_cnn/dense_10/MatMul/ReadVariableOp)^angle_cnn/dense_8/BiasAdd/ReadVariableOp(^angle_cnn/dense_8/MatMul/ReadVariableOp)^angle_cnn/dense_9/BiasAdd/ReadVariableOp(^angle_cnn/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 2X
*angle_cnn/conv2d_10/BiasAdd/ReadVariableOp*angle_cnn/conv2d_10/BiasAdd/ReadVariableOp2V
)angle_cnn/conv2d_10/Conv2D/ReadVariableOp)angle_cnn/conv2d_10/Conv2D/ReadVariableOp2X
*angle_cnn/conv2d_11/BiasAdd/ReadVariableOp*angle_cnn/conv2d_11/BiasAdd/ReadVariableOp2V
)angle_cnn/conv2d_11/Conv2D/ReadVariableOp)angle_cnn/conv2d_11/Conv2D/ReadVariableOp2X
*angle_cnn/conv2d_12/BiasAdd/ReadVariableOp*angle_cnn/conv2d_12/BiasAdd/ReadVariableOp2V
)angle_cnn/conv2d_12/Conv2D/ReadVariableOp)angle_cnn/conv2d_12/Conv2D/ReadVariableOp2X
*angle_cnn/conv2d_13/BiasAdd/ReadVariableOp*angle_cnn/conv2d_13/BiasAdd/ReadVariableOp2V
)angle_cnn/conv2d_13/Conv2D/ReadVariableOp)angle_cnn/conv2d_13/Conv2D/ReadVariableOp2X
*angle_cnn/conv2d_14/BiasAdd/ReadVariableOp*angle_cnn/conv2d_14/BiasAdd/ReadVariableOp2V
)angle_cnn/conv2d_14/Conv2D/ReadVariableOp)angle_cnn/conv2d_14/Conv2D/ReadVariableOp2V
)angle_cnn/dense_10/BiasAdd/ReadVariableOp)angle_cnn/dense_10/BiasAdd/ReadVariableOp2T
(angle_cnn/dense_10/MatMul/ReadVariableOp(angle_cnn/dense_10/MatMul/ReadVariableOp2T
(angle_cnn/dense_8/BiasAdd/ReadVariableOp(angle_cnn/dense_8/BiasAdd/ReadVariableOp2R
'angle_cnn/dense_8/MatMul/ReadVariableOp'angle_cnn/dense_8/MatMul/ReadVariableOp2T
(angle_cnn/dense_9/BiasAdd/ReadVariableOp(angle_cnn/dense_9/BiasAdd/ReadVariableOp2R
'angle_cnn/dense_9/MatMul/ReadVariableOp'angle_cnn/dense_9/MatMul/ReadVariableOp:Y U
0
_output_shapes
:����������B
!
_user_specified_name	input_1
�K
�
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237929
xB
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:B
(conv2d_11_conv2d_readvariableop_resource:$7
)conv2d_11_biasadd_readvariableop_resource:$B
(conv2d_12_conv2d_readvariableop_resource:$07
)conv2d_12_biasadd_readvariableop_resource:0B
(conv2d_13_conv2d_readvariableop_resource:0@7
)conv2d_13_biasadd_readvariableop_resource:@B
(conv2d_14_conv2d_readvariableop_resource:@@7
)conv2d_14_biasadd_readvariableop_resource:@:
&dense_8_matmul_readvariableop_resource:
��#d5
'dense_8_biasadd_readvariableop_resource:d8
&dense_9_matmul_readvariableop_resource:d25
'dense_9_biasadd_readvariableop_resource:29
'dense_10_matmul_readvariableop_resource:26
(dense_10_biasadd_readvariableop_resource:
identity�� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_10/Conv2DConv2Dx'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>*
paddingVALID*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������>m
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:����������>�
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0�
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$*
paddingVALID*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������:$m
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:����������:$�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:$0*
dtype0�
conv2d_12/Conv2DConv2Dconv2d_11/Relu:activations:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������60m
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*0
_output_shapes
:����������60�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
conv2d_13/Conv2DConv2Dconv2d_12/Relu:activations:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@*
paddingVALID*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������4@m
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:����������4@�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_14/Conv2DConv2Dconv2d_13/Relu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@*
paddingVALID*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2@m
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:����������2@`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � �
flatten_2/ReshapeReshapeconv2d_14/Relu:activations:0flatten_2/Const:output:0*
T0*)
_output_shapes
:�����������#�
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
��#d*
dtype0�
dense_8/MatMulMatMulflatten_2/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0�
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_10/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������B: : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
0
_output_shapes
:����������B

_user_specified_namex"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
D
input_19
serving_default_input_1:0����������B<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
D4
	optimizer

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
 13
!14
"15"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
 13
!14
"15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
(trace_0
)trace_12�
*__inference_angle_cnn_layer_call_fn_237617
*__inference_angle_cnn_layer_call_fn_237867�
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
 z(trace_0z)trace_1
�
*trace_0
+trace_12�
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237929
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237785�
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
 z*trace_0z+trace_1
�B�
!__inference__wrapped_model_237430input_1"�
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
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

kernel
bias"
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
�
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�"
	optimizer
,
lserving_default"
signature_map
4:22angle_cnn/conv2d_10/kernel
&:$2angle_cnn/conv2d_10/bias
4:2$2angle_cnn/conv2d_11/kernel
&:$$2angle_cnn/conv2d_11/bias
4:2$02angle_cnn/conv2d_12/kernel
&:$02angle_cnn/conv2d_12/bias
4:20@2angle_cnn/conv2d_13/kernel
&:$@2angle_cnn/conv2d_13/bias
4:2@@2angle_cnn/conv2d_14/kernel
&:$@2angle_cnn/conv2d_14/bias
,:*
��#d2angle_cnn/dense_8/kernel
$:"d2angle_cnn/dense_8/bias
*:(d22angle_cnn/dense_9/kernel
$:"22angle_cnn/dense_9/bias
+:)22angle_cnn/dense_10/kernel
%:#2angle_cnn/dense_10/bias
 "
trackable_list_wrapper
_
0
	1

2
3
4
5
6
7
8"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_angle_cnn_layer_call_fn_237617input_1"�
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
*__inference_angle_cnn_layer_call_fn_237867x"�
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
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237929x"�
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
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237785input_1"�
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
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_02�
*__inference_conv2d_10_layer_call_fn_237938�
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
 zttrace_0
�
utrace_02�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237949�
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
 zutrace_0
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
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
{trace_02�
*__inference_conv2d_11_layer_call_fn_237958�
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
 z{trace_0
�
|trace_02�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237969�
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
 z|trace_0
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
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_12_layer_call_fn_237978�
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237989�
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
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_13_layer_call_fn_237998�
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_238009�
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
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_14_layer_call_fn_238018�
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_238029�
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
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_2_layer_call_fn_238034�
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
E__inference_flatten_2_layer_call_and_return_conditional_losses_238040�
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
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_8_layer_call_fn_238049�
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
C__inference_dense_8_layer_call_and_return_conditional_losses_238060�
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
(__inference_dense_9_layer_call_fn_238069�
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
C__inference_dense_9_layer_call_and_return_conditional_losses_238080�
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
)__inference_dense_10_layer_call_fn_238089�
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
D__inference_dense_10_layer_call_and_return_conditional_losses_238100�
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
$__inference_signature_wrapper_237830input_1"�
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
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
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
*__inference_conv2d_10_layer_call_fn_237938inputs"�
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
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237949inputs"�
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
*__inference_conv2d_11_layer_call_fn_237958inputs"�
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
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237969inputs"�
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
*__inference_conv2d_12_layer_call_fn_237978inputs"�
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237989inputs"�
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
*__inference_conv2d_13_layer_call_fn_237998inputs"�
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_238009inputs"�
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
*__inference_conv2d_14_layer_call_fn_238018inputs"�
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_238029inputs"�
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
*__inference_flatten_2_layer_call_fn_238034inputs"�
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
E__inference_flatten_2_layer_call_and_return_conditional_losses_238040inputs"�
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
(__inference_dense_8_layer_call_fn_238049inputs"�
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
C__inference_dense_8_layer_call_and_return_conditional_losses_238060inputs"�
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
(__inference_dense_9_layer_call_fn_238069inputs"�
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
C__inference_dense_9_layer_call_and_return_conditional_losses_238080inputs"�
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
)__inference_dense_10_layer_call_fn_238089inputs"�
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
D__inference_dense_10_layer_call_and_return_conditional_losses_238100inputs"�
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
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
9:72!Adam/angle_cnn/conv2d_10/kernel/m
+:)2Adam/angle_cnn/conv2d_10/bias/m
9:7$2!Adam/angle_cnn/conv2d_11/kernel/m
+:)$2Adam/angle_cnn/conv2d_11/bias/m
9:7$02!Adam/angle_cnn/conv2d_12/kernel/m
+:)02Adam/angle_cnn/conv2d_12/bias/m
9:70@2!Adam/angle_cnn/conv2d_13/kernel/m
+:)@2Adam/angle_cnn/conv2d_13/bias/m
9:7@@2!Adam/angle_cnn/conv2d_14/kernel/m
+:)@2Adam/angle_cnn/conv2d_14/bias/m
1:/
��#d2Adam/angle_cnn/dense_8/kernel/m
):'d2Adam/angle_cnn/dense_8/bias/m
/:-d22Adam/angle_cnn/dense_9/kernel/m
):'22Adam/angle_cnn/dense_9/bias/m
0:.22 Adam/angle_cnn/dense_10/kernel/m
*:(2Adam/angle_cnn/dense_10/bias/m
9:72!Adam/angle_cnn/conv2d_10/kernel/v
+:)2Adam/angle_cnn/conv2d_10/bias/v
9:7$2!Adam/angle_cnn/conv2d_11/kernel/v
+:)$2Adam/angle_cnn/conv2d_11/bias/v
9:7$02!Adam/angle_cnn/conv2d_12/kernel/v
+:)02Adam/angle_cnn/conv2d_12/bias/v
9:70@2!Adam/angle_cnn/conv2d_13/kernel/v
+:)@2Adam/angle_cnn/conv2d_13/bias/v
9:7@@2!Adam/angle_cnn/conv2d_14/kernel/v
+:)@2Adam/angle_cnn/conv2d_14/bias/v
1:/
��#d2Adam/angle_cnn/dense_8/kernel/v
):'d2Adam/angle_cnn/dense_8/bias/v
/:-d22Adam/angle_cnn/dense_9/kernel/v
):'22Adam/angle_cnn/dense_9/bias/v
0:.22 Adam/angle_cnn/dense_10/kernel/v
*:(2Adam/angle_cnn/dense_10/bias/v�
!__inference__wrapped_model_237430� !"9�6
/�,
*�'
input_1����������B
� "3�0
.
output_1"�
output_1����������
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237785t !"9�6
/�,
*�'
input_1����������B
� "%�"
�
0���������
� �
E__inference_angle_cnn_layer_call_and_return_conditional_losses_237929n !"3�0
)�&
$�!
x����������B
� "%�"
�
0���������
� �
*__inference_angle_cnn_layer_call_fn_237617g !"9�6
/�,
*�'
input_1����������B
� "�����������
*__inference_angle_cnn_layer_call_fn_237867a !"3�0
)�&
$�!
x����������B
� "�����������
E__inference_conv2d_10_layer_call_and_return_conditional_losses_237949n8�5
.�+
)�&
inputs����������B
� ".�+
$�!
0����������>
� �
*__inference_conv2d_10_layer_call_fn_237938a8�5
.�+
)�&
inputs����������B
� "!�����������>�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_237969n8�5
.�+
)�&
inputs����������>
� ".�+
$�!
0����������:$
� �
*__inference_conv2d_11_layer_call_fn_237958a8�5
.�+
)�&
inputs����������>
� "!�����������:$�
E__inference_conv2d_12_layer_call_and_return_conditional_losses_237989n8�5
.�+
)�&
inputs����������:$
� ".�+
$�!
0����������60
� �
*__inference_conv2d_12_layer_call_fn_237978a8�5
.�+
)�&
inputs����������:$
� "!�����������60�
E__inference_conv2d_13_layer_call_and_return_conditional_losses_238009n8�5
.�+
)�&
inputs����������60
� ".�+
$�!
0����������4@
� �
*__inference_conv2d_13_layer_call_fn_237998a8�5
.�+
)�&
inputs����������60
� "!�����������4@�
E__inference_conv2d_14_layer_call_and_return_conditional_losses_238029n8�5
.�+
)�&
inputs����������4@
� ".�+
$�!
0����������2@
� �
*__inference_conv2d_14_layer_call_fn_238018a8�5
.�+
)�&
inputs����������4@
� "!�����������2@�
D__inference_dense_10_layer_call_and_return_conditional_losses_238100\!"/�,
%�"
 �
inputs���������2
� "%�"
�
0���������
� |
)__inference_dense_10_layer_call_fn_238089O!"/�,
%�"
 �
inputs���������2
� "�����������
C__inference_dense_8_layer_call_and_return_conditional_losses_238060^1�.
'�$
"�
inputs�����������#
� "%�"
�
0���������d
� }
(__inference_dense_8_layer_call_fn_238049Q1�.
'�$
"�
inputs�����������#
� "����������d�
C__inference_dense_9_layer_call_and_return_conditional_losses_238080\ /�,
%�"
 �
inputs���������d
� "%�"
�
0���������2
� {
(__inference_dense_9_layer_call_fn_238069O /�,
%�"
 �
inputs���������d
� "����������2�
E__inference_flatten_2_layer_call_and_return_conditional_losses_238040c8�5
.�+
)�&
inputs����������2@
� "'�$
�
0�����������#
� �
*__inference_flatten_2_layer_call_fn_238034V8�5
.�+
)�&
inputs����������2@
� "������������#�
$__inference_signature_wrapper_237830� !"D�A
� 
:�7
5
input_1*�'
input_1����������B"3�0
.
output_1"�
output_1���������