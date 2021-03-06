//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbMain
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64 [unused]
//   float4x4 g_mView;                  // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  192 Size:    64 [unused]
//   float4x4 g_mViewProjection;        // Offset:  256 Size:    64 [unused]
//   float4x4 g_mInvView;               // Offset:  320 Size:    64 [unused]
//   float4 g_vScreenResolution;        // Offset:  384 Size:    16 [unused]
//   float4 g_vMeshColor;               // Offset:  400 Size:    16 [unused]
//   float4 g_vTessellationFactor;      // Offset:  416 Size:    16 [unused]
//   float4 g_vDetailTessellationHeightScale;// Offset:  432 Size:    16 [unused]
//   float4 g_vGridSize;                // Offset:  448 Size:    16 [unused]
//   float4 g_vDebugColorMultiply;      // Offset:  464 Size:    16 [unused]
//   float4 g_vDebugColorAdd;           // Offset:  480 Size:    16 [unused]
//   float4 g_vFrustumPlaneEquation[4]; // Offset:  496 Size:    64 [unused]
//
// }
//
// cbuffer cbMaterial
// {
//
//   float4 g_materialAmbientColor;     // Offset:    0 Size:    16
//   float4 g_materialDiffuseColor;     // Offset:   16 Size:    16
//   float4 g_materialSpecularColor;    // Offset:   32 Size:    16 [unused]
//   float4 g_fSpecularExponent;        // Offset:   48 Size:    16 [unused]
//   float4 g_LightPosition;            // Offset:   64 Size:    16 [unused]
//   float4 g_LightDiffuse;             // Offset:   80 Size:    16 [unused]
//   float4 g_LightAmbient;             // Offset:   96 Size:    16 [unused]
//   float4 g_vEye;                     // Offset:  112 Size:    16 [unused]
//   float4 g_fBaseTextureRepeat;       // Offset:  128 Size:    16 [unused]
//   float4 g_fPOMHeightMapScale;       // Offset:  144 Size:    16 [unused]
//   float4 g_fShadowSoftening;         // Offset:  160 Size:    16 [unused]
//   int g_nMinSamples;                 // Offset:  176 Size:     4
//   int g_nMaxSamples;                 // Offset:  180 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samLinear                       sampler      NA          NA    0        1
// g_baseTexture                     texture  float4          2d    0        1
// g_nmhTexture                      texture  float4          2d    1        1
// cbMain                            cbuffer      NA          NA    0        1
// cbMaterial                        cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// TEXCOORD                 3     zw        0     NONE   float     zw
// TEXCOORD                 1   xyz         1     NONE   float   xyz 
// TEXCOORD                 2   xyz         2     NONE   float       
// TEXCOORD                 4   xyz         3     NONE   float   xyz 
// TEXCOORD                 5   xyz         4     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[1], immediateIndexed
dcl_constantbuffer cb1[12], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v0.xy
dcl_input_ps linear v0.zw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_output o0.xyzw
dcl_temps 7
dp3 r0.x, v4.xyzx, v4.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v4.xyzx
dp3 r0.w, v1.xyzx, v1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v1.xyzx
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, v3.xyzx
deriv_rtx r3.xy, v0.xyxx
deriv_rty r3.zw, v0.xxxy
itof r4.xy, cb1[11].yxyy
dp3 r0.x, r0.xyzx, r2.xyzx
add r0.y, -r4.x, r4.y
mad r0.x, r0.x, r0.y, r4.x
ftoi r0.y, r0.x
round_z r0.x, r0.x
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
iadd r0.z, r0.y, l(1)
mov r2.xy, v0.xyxx
mov r0.w, l(0)
mov r4.zw, l(0,0,1.000000,1.000000)
mov r5.xyzw, l(0,0,0,0)
loop 
  ige r1.w, r0.w, r0.y
  breakc_nz r1.w
  mad r2.xy, -r0.xxxx, v0.zwzz, r2.xyxx
  sample_d r6.xyzw, r2.xyxx, t1.xyzw, s0, r3.xyxx, r3.zwzz
  add r4.x, -r0.x, r4.z
  lt r1.w, r4.x, r6.w
  iadd r2.z, r0.w, l(1)
  movc r2.w, r1.w, r4.w, r6.w
  movc r0.w, r1.w, r0.z, r2.z
  mov r4.y, r6.w
  movc r5.xyzw, r1.wwww, r4.xyzw, r5.xyzw
  mov r4.w, r2.w
  mov r4.z, r4.x
endloop 
add r0.xy, -r5.wyww, r5.zxzz
add r0.z, -r0.y, r0.x
eq r0.w, r0.z, l(0.000000)
mul r0.y, r0.y, r5.z
mad r0.x, r5.x, r0.x, -r0.y
div r0.x, r0.x, r0.z
add r0.x, -r0.x, l(1.000000)
movc r0.x, r0.w, l(1.000000), r0.x
mad r0.xy, -v0.zwzz, r0.xxxx, v0.xyxx
sample r2.xyzw, r0.xyxx, t1.xyzw, s0
mad r2.xyzw, r2.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
dp4 r0.z, r2.xyzw, r2.xyzw
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
sample r0.xyzw, r0.xyxx, t0.xyzw, s0
dp3_sat r1.x, r2.xyzx, r1.xyzx
mad r1.xyzw, r1.xxxx, cb1[1].xyzw, cb1[0].xyzw
mul o0.xyzw, r0.xyzw, r1.xyzw
ret 
// Approximately 57 instruction slots used
