// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xedada940 {}
.class ILGEN_0xedada940 {
.method static int32 Method_0x7f75() {
.maxstack	17

 .locals (int32 local_0x0,unsigned int64 local_0x1,float64[] local_0x2,unsigned int64[] local_0x3,int32 local_0x4,int32[] local_0x5,unsigned int64[] local_0x6)
 .try {
ldc.i4 0x133b7c1a 
stloc local_0x0
ldc.i8 0x46fa6f8d4e707118 
stloc local_0x1
ldc.i4 255
 newarr [mscorlib]System.Double 
 stloc local_0x2
ldc.i4 255
 newarr [mscorlib]System.UInt64 
 stloc local_0x3
ldc.i4 0x198b1dd6 
stloc local_0x4
ldc.i4 255
 newarr [mscorlib]System.Int32 
 stloc local_0x5


Start_Orphan_12:
 ldc.i4.5
 conv.u1
 newarr [mscorlib]System.UInt64
ldc.r4 float32(0x50045be1)
 ldc.i4.3
 conv.ovf.u2.un
 conv.r4
 clt.un
Start_Orphan_18:
 ldloc local_0x0
 conv.u1
 newarr [mscorlib]System.UInt64
 ldloc local_0x1
 conv.ovf.u4
 ldloc local_0x1
 stelem.i8
End_Orphan_18:
 ldc.i4.6
 conv.ovf.u1
 conv.ovf.i8
 stelem.i8
End_Orphan_12:
 ldloc local_0x2
 ldloc local_0x0
 ldelema [mscorlib]System.Double
 ldind.r8
 conv.ovf.i
 ldc.i8 0x7a821a31375b18a 
 conv.u2
 conv.i2
 ldc.r4 float32(0x500b70bd)
 conv.i
 cgt
 ldc.i4.s 82
 conv.r4
 conv.ovf.i
 sub.ovf
 conv.ovf.i.un
 div
 ldloc local_0x1
 conv.ovf.i1
 ceq
 pop
 leave the_end
 } catch [mscorlib]System.OverflowException {
 pop
 leave the_end
 }
 the_end:
 ldc.i4 0
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	2
 call int32 ILGEN_0xedada940::Method_0x7f75()
ldc.i4 100
add
ret
}

}

