// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.








.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:3600:0
}

.assembly foo {}
.module foo.exe


// We inline the call chain foo()->Throw(). This causes the DFS reader
//  to screw up when trying to maintain the operand stack between inlined
//  methods.



  .method public hidebysig static int32 Main() cil managed
  {
    .entrypoint
    
    ldc.i4 100
    ldstr "PASS"

    // Value is live across this call - entire call chain should be inlined
    call       void foo()


    call       void [mscorlib]System.Console::WriteLine(string)
    ret
  }



  // This call should be inlined.
  .field public static int32 x
  .method public hidebysig static void  foo() cil managed
  {
    ldsfld     int32 x
    brfalse.s   NO_THROW

    call       void Throw()

    NO_THROW:
    ret
  }



  // This call should be inlined.
  .method public hidebysig static void  Throw() cil managed
  {
    newobj     instance void [mscorlib]System.Exception::.ctor()
    throw
  }
