
build/easy.32:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
_init():
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 a3 00 00 00       	call   10b0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 c7 2f 00 00    	add    $0x2fc7,%ebx
    1013:	8b 83 20 00 00 00    	mov    0x20(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <__libc_start_main@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <__libc_start_main@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <puts@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

00001060 <__printf_chk@plt>:
    1060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1066:	68 10 00 00 00       	push   $0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .plt.got:

00001070 <__cxa_finalize@plt>:
    1070:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1076:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001080 <_start>:
_start():
    1080:	f3 0f 1e fb          	endbr32 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	5e                   	pop    %esi
    1087:	89 e1                	mov    %esp,%ecx
    1089:	83 e4 f0             	and    $0xfffffff0,%esp
    108c:	50                   	push   %eax
    108d:	54                   	push   %esp
    108e:	52                   	push   %edx
    108f:	e8 18 00 00 00       	call   10ac <_start+0x2c>
    1094:	81 c3 40 2f 00 00    	add    $0x2f40,%ebx
    109a:	6a 00                	push   $0x0
    109c:	6a 00                	push   $0x0
    109e:	51                   	push   %ecx
    109f:	56                   	push   %esi
    10a0:	ff b3 24 00 00 00    	push   0x24(%ebx)
    10a6:	e8 95 ff ff ff       	call   1040 <__libc_start_main@plt>
    10ab:	f4                   	hlt    
    10ac:	8b 1c 24             	mov    (%esp),%ebx
    10af:	c3                   	ret    

000010b0 <__x86.get_pc_thunk.bx>:
__x86.get_pc_thunk.bx():
    10b0:	8b 1c 24             	mov    (%esp),%ebx
    10b3:	c3                   	ret    
    10b4:	66 90                	xchg   %ax,%ax
    10b6:	66 90                	xchg   %ax,%ax
    10b8:	66 90                	xchg   %ax,%ax
    10ba:	66 90                	xchg   %ax,%ax
    10bc:	66 90                	xchg   %ax,%ax
    10be:	66 90                	xchg   %ax,%ax

000010c0 <deregister_tm_clones>:
deregister_tm_clones():
    10c0:	e8 e4 00 00 00       	call   11a9 <__x86.get_pc_thunk.dx>
    10c5:	81 c2 0f 2f 00 00    	add    $0x2f0f,%edx
    10cb:	8d 8a 34 00 00 00    	lea    0x34(%edx),%ecx
    10d1:	8d 82 34 00 00 00    	lea    0x34(%edx),%eax
    10d7:	39 c8                	cmp    %ecx,%eax
    10d9:	74 1d                	je     10f8 <deregister_tm_clones+0x38>
    10db:	8b 82 18 00 00 00    	mov    0x18(%edx),%eax
    10e1:	85 c0                	test   %eax,%eax
    10e3:	74 13                	je     10f8 <deregister_tm_clones+0x38>
    10e5:	55                   	push   %ebp
    10e6:	89 e5                	mov    %esp,%ebp
    10e8:	83 ec 14             	sub    $0x14,%esp
    10eb:	51                   	push   %ecx
    10ec:	ff d0                	call   *%eax
    10ee:	83 c4 10             	add    $0x10,%esp
    10f1:	c9                   	leave  
    10f2:	c3                   	ret    
    10f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10f7:	90                   	nop
    10f8:	c3                   	ret    
    10f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001100 <register_tm_clones>:
register_tm_clones():
    1100:	e8 a4 00 00 00       	call   11a9 <__x86.get_pc_thunk.dx>
    1105:	81 c2 cf 2e 00 00    	add    $0x2ecf,%edx
    110b:	55                   	push   %ebp
    110c:	89 e5                	mov    %esp,%ebp
    110e:	53                   	push   %ebx
    110f:	8d 8a 34 00 00 00    	lea    0x34(%edx),%ecx
    1115:	8d 82 34 00 00 00    	lea    0x34(%edx),%eax
    111b:	83 ec 04             	sub    $0x4,%esp
    111e:	29 c8                	sub    %ecx,%eax
    1120:	89 c3                	mov    %eax,%ebx
    1122:	c1 e8 1f             	shr    $0x1f,%eax
    1125:	c1 fb 02             	sar    $0x2,%ebx
    1128:	01 d8                	add    %ebx,%eax
    112a:	d1 f8                	sar    %eax
    112c:	74 14                	je     1142 <register_tm_clones+0x42>
    112e:	8b 92 28 00 00 00    	mov    0x28(%edx),%edx
    1134:	85 d2                	test   %edx,%edx
    1136:	74 0a                	je     1142 <register_tm_clones+0x42>
    1138:	83 ec 08             	sub    $0x8,%esp
    113b:	50                   	push   %eax
    113c:	51                   	push   %ecx
    113d:	ff d2                	call   *%edx
    113f:	83 c4 10             	add    $0x10,%esp
    1142:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1145:	c9                   	leave  
    1146:	c3                   	ret    
    1147:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    114e:	66 90                	xchg   %ax,%ax

00001150 <__do_global_dtors_aux>:
__do_global_dtors_aux():
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   %ebp
    1155:	89 e5                	mov    %esp,%ebp
    1157:	53                   	push   %ebx
    1158:	e8 53 ff ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    115d:	81 c3 77 2e 00 00    	add    $0x2e77,%ebx
    1163:	83 ec 04             	sub    $0x4,%esp
    1166:	80 bb 34 00 00 00 00 	cmpb   $0x0,0x34(%ebx)
    116d:	75 27                	jne    1196 <__do_global_dtors_aux+0x46>
    116f:	8b 83 1c 00 00 00    	mov    0x1c(%ebx),%eax
    1175:	85 c0                	test   %eax,%eax
    1177:	74 11                	je     118a <__do_global_dtors_aux+0x3a>
    1179:	83 ec 0c             	sub    $0xc,%esp
    117c:	ff b3 30 00 00 00    	push   0x30(%ebx)
    1182:	e8 e9 fe ff ff       	call   1070 <__cxa_finalize@plt>
    1187:	83 c4 10             	add    $0x10,%esp
    118a:	e8 31 ff ff ff       	call   10c0 <deregister_tm_clones>
    118f:	c6 83 34 00 00 00 01 	movb   $0x1,0x34(%ebx)
    1196:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1199:	c9                   	leave  
    119a:	c3                   	ret    
    119b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    119f:	90                   	nop

000011a0 <frame_dummy>:
frame_dummy():
    11a0:	f3 0f 1e fb          	endbr32 
    11a4:	e9 57 ff ff ff       	jmp    1100 <register_tm_clones>

000011a9 <__x86.get_pc_thunk.dx>:
__x86.get_pc_thunk.dx():
    11a9:	8b 14 24             	mov    (%esp),%edx
    11ac:	c3                   	ret    

000011ad <main>:
main():
    11ad:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11b1:	83 e4 f0             	and    $0xfffffff0,%esp
    11b4:	ff 71 fc             	push   -0x4(%ecx)
    11b7:	55                   	push   %ebp
    11b8:	89 e5                	mov    %esp,%ebp
    11ba:	57                   	push   %edi
    11bb:	56                   	push   %esi
    11bc:	53                   	push   %ebx
    11bd:	51                   	push   %ecx
    11be:	83 ec 18             	sub    $0x18,%esp
    11c1:	e8 ea fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    11c6:	81 c3 0e 2e 00 00    	add    $0x2e0e,%ebx
    11cc:	8b 41 04             	mov    0x4(%ecx),%eax
    11cf:	83 39 02             	cmpl   $0x2,(%ecx)
    11d2:	75 15                	jne    11e9 <main+0x3c>
    11d4:	8b 40 04             	mov    0x4(%eax),%eax
    11d7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    11da:	b8 00 00 00 00       	mov    $0x0,%eax
    11df:	ba 6d 00 00 00       	mov    $0x6d,%edx
    11e4:	e9 8c 00 00 00       	jmp    1275 <main+0xc8>
    11e9:	83 ec 0c             	sub    $0xc,%esp
    11ec:	8d 83 34 e0 ff ff    	lea    -0x1fcc(%ebx),%eax
    11f2:	50                   	push   %eax
    11f3:	e8 58 fe ff ff       	call   1050 <puts@plt>
    11f8:	83 c4 10             	add    $0x10,%esp
    11fb:	b8 01 00 00 00       	mov    $0x1,%eax
    1200:	eb 25                	jmp    1227 <main+0x7a>
    1202:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    1205:	80 3c 07 00          	cmpb   $0x0,(%edi,%eax,1)
    1209:	75 28                	jne    1233 <main+0x86>
    120b:	83 ec 04             	sub    $0x4,%esp
    120e:	ff 75 e4             	push   -0x1c(%ebp)
    1211:	8d 83 6f e0 ff ff    	lea    -0x1f91(%ebx),%eax
    1217:	50                   	push   %eax
    1218:	6a 01                	push   $0x1
    121a:	e8 41 fe ff ff       	call   1060 <__printf_chk@plt>
    121f:	83 c4 10             	add    $0x10,%esp
    1222:	b8 00 00 00 00       	mov    $0x0,%eax
    1227:	8d 65 f0             	lea    -0x10(%ebp),%esp
    122a:	59                   	pop    %ecx
    122b:	5b                   	pop    %ebx
    122c:	5e                   	pop    %esi
    122d:	5f                   	pop    %edi
    122e:	5d                   	pop    %ebp
    122f:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1232:	c3                   	ret    
    1233:	83 ec 04             	sub    $0x4,%esp
    1236:	57                   	push   %edi
    1237:	8d 83 52 e0 ff ff    	lea    -0x1fae(%ebx),%eax
    123d:	50                   	push   %eax
    123e:	6a 01                	push   $0x1
    1240:	e8 1b fe ff ff       	call   1060 <__printf_chk@plt>
    1245:	83 c4 10             	add    $0x10,%esp
    1248:	b8 01 00 00 00       	mov    $0x1,%eax
    124d:	eb d8                	jmp    1227 <main+0x7a>
    124f:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    1252:	0f b6 34 07          	movzbl (%edi,%eax,1),%esi
    1256:	8d 7e d1             	lea    -0x2f(%esi),%edi
    1259:	89 f9                	mov    %edi,%ecx
    125b:	80 f9 4b             	cmp    $0x4b,%cl
    125e:	77 3a                	ja     129a <main+0xed>
    1260:	89 f1                	mov    %esi,%ecx
    1262:	38 d1                	cmp    %dl,%cl
    1264:	75 55                	jne    12bb <main+0x10e>
    1266:	83 c0 01             	add    $0x1,%eax
    1269:	0f b6 94 18 a7 e0 ff 	movzbl -0x1f59(%eax,%ebx,1),%edx
    1270:	ff 
    1271:	84 d2                	test   %dl,%dl
    1273:	74 8d                	je     1202 <main+0x55>
    1275:	8b 75 e4             	mov    -0x1c(%ebp),%esi
    1278:	80 3c 06 00          	cmpb   $0x0,(%esi,%eax,1)
    127c:	75 d1                	jne    124f <main+0xa2>
    127e:	83 ec 04             	sub    $0x4,%esp
    1281:	56                   	push   %esi
    1282:	8d 83 52 e0 ff ff    	lea    -0x1fae(%ebx),%eax
    1288:	50                   	push   %eax
    1289:	6a 01                	push   $0x1
    128b:	e8 d0 fd ff ff       	call   1060 <__printf_chk@plt>
    1290:	83 c4 10             	add    $0x10,%esp
    1293:	b8 01 00 00 00       	mov    $0x1,%eax
    1298:	eb 8d                	jmp    1227 <main+0x7a>
    129a:	83 ec 04             	sub    $0x4,%esp
    129d:	ff 75 e4             	push   -0x1c(%ebp)
    12a0:	8d 83 52 e0 ff ff    	lea    -0x1fae(%ebx),%eax
    12a6:	50                   	push   %eax
    12a7:	6a 01                	push   $0x1
    12a9:	e8 b2 fd ff ff       	call   1060 <__printf_chk@plt>
    12ae:	83 c4 10             	add    $0x10,%esp
    12b1:	b8 01 00 00 00       	mov    $0x1,%eax
    12b6:	e9 6c ff ff ff       	jmp    1227 <main+0x7a>
    12bb:	83 ec 04             	sub    $0x4,%esp
    12be:	ff 75 e4             	push   -0x1c(%ebp)
    12c1:	8d 83 89 e0 ff ff    	lea    -0x1f77(%ebx),%eax
    12c7:	50                   	push   %eax
    12c8:	6a 01                	push   $0x1
    12ca:	e8 91 fd ff ff       	call   1060 <__printf_chk@plt>
    12cf:	83 c4 10             	add    $0x10,%esp
    12d2:	b8 01 00 00 00       	mov    $0x1,%eax
    12d7:	e9 4b ff ff ff       	jmp    1227 <main+0x7a>

Disassembly of section .fini:

000012dc <_fini>:
_fini():
    12dc:	f3 0f 1e fb          	endbr32 
    12e0:	53                   	push   %ebx
    12e1:	83 ec 08             	sub    $0x8,%esp
    12e4:	e8 c7 fd ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    12e9:	81 c3 eb 2c 00 00    	add    $0x2ceb,%ebx
    12ef:	83 c4 08             	add    $0x8,%esp
    12f2:	5b                   	pop    %ebx
    12f3:	c3                   	ret    
