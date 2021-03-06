//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbPerMesh
// {
//
//   float4x4 g_mConstBoneWorld[80];    // Offset:    0 Size:  5120
//
// }
//
// cbuffer cbPerFrame
// {
//
//   float4x4 g_mViewProjection;        // Offset:    0 Size:    64
//   float3 g_vCameraPosWorld;          // Offset:   64 Size:    12 [unused]
//   float g_fTessellationFactor;       // Offset:   76 Size:     4 [unused]
//   float g_fDisplacementHeight;       // Offset:   80 Size:     4 [unused]
//   float3 g_vSolidColor;              // Offset:   84 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbPerMesh                         cbuffer      NA          NA    1        1
// cbPerFrame                        cbuffer      NA          NA    2        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                 0   xy          1     NONE   float   xy  
// NORMAL                   0   xyz         2     NONE   float   xyz 
// TANGENT                  0   xyz         3     NONE   float   xyz 
// BONES                    0   xyzw        4     NONE    uint   xyzw
// WEIGHTS                  0   xyzw        5     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TANGENT                  0   xyz         3     NONE   float   xyz 
// BITANGENT                0   xyz         4     NONE   float   xyz 
// SV_POSITION              0   xyzw        5      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb1[319], dynamicIndexed
dcl_constantbuffer cb2[4], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xy
dcl_input v2.xyz
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_output o0.xyz
dcl_output o1.xyz
dcl_output o2.xy
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output_siv o5.xyzw, position
dcl_temps 5
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
ishl r1.xyzw, v4.xyzw, l(2, 2, 2, 2)
dp4 r2.x, r0.xyzw, cb1[r1.y + 0].xyzw
dp4 r2.y, r0.xyzw, cb1[r1.y + 1].xyzw
dp4 r2.z, r0.xyzw, cb1[r1.y + 2].xyzw
mul r2.xyz, r2.xyzx, v5.yyyy
dp4 r3.x, r0.xyzw, cb1[r1.x + 0].xyzw
dp4 r3.y, r0.xyzw, cb1[r1.x + 1].xyzw
dp4 r3.z, r0.xyzw, cb1[r1.x + 2].xyzw
mad r2.xyz, r3.xyzx, v5.xxxx, r2.xyzx
dp4 r3.x, r0.xyzw, cb1[r1.z + 0].xyzw
dp4 r3.y, r0.xyzw, cb1[r1.z + 1].xyzw
dp4 r3.z, r0.xyzw, cb1[r1.z + 2].xyzw
mad r2.xyz, r3.xyzx, v5.zzzz, r2.xyzx
dp4 r3.x, r0.xyzw, cb1[r1.w + 0].xyzw
dp4 r3.y, r0.xyzw, cb1[r1.w + 1].xyzw
dp4 r3.z, r0.xyzw, cb1[r1.w + 2].xyzw
mad r0.xyz, r3.xyzx, v5.wwww, r2.xyzx
mov o0.xyz, r0.xyzx
dp3 r2.x, v2.xyzx, cb1[r1.y + 0].xyzx
dp3 r2.y, v2.xyzx, cb1[r1.y + 1].xyzx
dp3 r2.z, v2.xyzx, cb1[r1.y + 2].xyzx
mul r2.xyz, r2.xyzx, v5.yyyy
dp3 r3.x, v2.xyzx, cb1[r1.x + 0].xyzx
dp3 r3.y, v2.xyzx, cb1[r1.x + 1].xyzx
dp3 r3.z, v2.xyzx, cb1[r1.x + 2].xyzx
mad r2.xyz, r3.xyzx, v5.xxxx, r2.xyzx
dp3 r3.x, v2.xyzx, cb1[r1.z + 0].xyzx
dp3 r3.y, v2.xyzx, cb1[r1.z + 1].xyzx
dp3 r3.z, v2.xyzx, cb1[r1.z + 2].xyzx
mad r2.xyz, r3.xyzx, v5.zzzz, r2.xyzx
dp3 r3.x, v2.xyzx, cb1[r1.w + 0].xyzx
dp3 r3.y, v2.xyzx, cb1[r1.w + 1].xyzx
dp3 r3.z, v2.xyzx, cb1[r1.w + 2].xyzx
mad r2.xyz, r3.xyzx, v5.wwww, r2.xyzx
mov o1.xyz, r2.xyzx
mov o2.xy, v1.xyxx
dp3 r3.x, v3.xyzx, cb1[r1.y + 0].xyzx
dp3 r3.y, v3.xyzx, cb1[r1.y + 1].xyzx
dp3 r3.z, v3.xyzx, cb1[r1.y + 2].xyzx
mul r3.xyz, r3.xyzx, v5.yyyy
dp3 r4.x, v3.xyzx, cb1[r1.x + 0].xyzx
dp3 r4.y, v3.xyzx, cb1[r1.x + 1].xyzx
dp3 r4.z, v3.xyzx, cb1[r1.x + 2].xyzx
mad r3.xyz, r4.xyzx, v5.xxxx, r3.xyzx
dp3 r4.x, v3.xyzx, cb1[r1.z + 0].xyzx
dp3 r4.y, v3.xyzx, cb1[r1.z + 1].xyzx
dp3 r4.z, v3.xyzx, cb1[r1.z + 2].xyzx
mad r1.xyz, r4.xyzx, v5.zzzz, r3.xyzx
dp3 r3.x, v3.xyzx, cb1[r1.w + 0].xyzx
dp3 r3.y, v3.xyzx, cb1[r1.w + 1].xyzx
dp3 r3.z, v3.xyzx, cb1[r1.w + 2].xyzx
mad r1.xyz, r3.xyzx, v5.wwww, r1.xyzx
mov o3.xyz, r1.xyzx
mul r3.xyz, r1.yzxy, r2.zxyz
mad o4.xyz, r2.yzxy, r1.zxyz, -r3.xyzx
mov r0.w, l(1.000000)
dp4 o5.x, r0.xyzw, cb2[0].xyzw
dp4 o5.y, r0.xyzw, cb2[1].xyzw
dp4 o5.z, r0.xyzw, cb2[2].xyzw
dp4 o5.w, r0.xyzw, cb2[3].xyzw
ret 
// Approximately 63 instruction slots used
