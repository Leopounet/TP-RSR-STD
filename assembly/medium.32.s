
build/medium.32:     file format elf32-i386


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

000011ad <strlen>:
strlen():
    11ad:	8b 54 24 04          	mov    0x4(%esp),%edx
    11b1:	80 3a 00             	cmpb   $0x0,(%edx)
    11b4:	74 0f                	je     11c5 <strlen+0x18>
    11b6:	b8 00 00 00 00       	mov    $0x0,%eax
    11bb:	83 c0 01             	add    $0x1,%eax
    11be:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    11c2:	75 f7                	jne    11bb <strlen+0xe>
    11c4:	c3                   	ret    
    11c5:	b8 00 00 00 00       	mov    $0x0,%eax
    11ca:	c3                   	ret    

000011cb <main>:
main():
    11cb:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11cf:	83 e4 f0             	and    $0xfffffff0,%esp
    11d2:	ff 71 fc             	push   -0x4(%ecx)
    11d5:	55                   	push   %ebp
    11d6:	89 e5                	mov    %esp,%ebp
    11d8:	56                   	push   %esi
    11d9:	53                   	push   %ebx
    11da:	51                   	push   %ecx
    11db:	83 ec 0c             	sub    $0xc,%esp
    11de:	e8 cd fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    11e3:	81 c3 f1 2d 00 00    	add    $0x2df1,%ebx
    11e9:	8b 41 04             	mov    0x4(%ecx),%eax
    11ec:	83 39 02             	cmpl   $0x2,(%ecx)
    11ef:	75 59                	jne    124a <main+0x7f>
    11f1:	8b 70 04             	mov    0x4(%eax),%esi
    11f4:	83 ec 0c             	sub    $0xc,%esp
    11f7:	56                   	push   %esi
    11f8:	e8 b0 ff ff ff       	call   11ad <strlen>
    11fd:	83 c4 10             	add    $0x10,%esp
    1200:	89 c1                	mov    %eax,%ecx
    1202:	ba 00 00 00 00       	mov    $0x0,%edx
    1207:	b8 48 00 00 00       	mov    $0x48,%eax
    120c:	83 f9 0a             	cmp    $0xa,%ecx
    120f:	75 5b                	jne    126c <main+0xa1>
    1211:	0f be c0             	movsbl %al,%eax
    1214:	83 e8 02             	sub    $0x2,%eax
    1217:	0f be 0c 16          	movsbl (%esi,%edx,1),%ecx
    121b:	39 c8                	cmp    %ecx,%eax
    121d:	75 69                	jne    1288 <main+0xbd>
    121f:	83 c2 01             	add    $0x1,%edx
    1222:	0f b6 84 1a 61 e0 ff 	movzbl -0x1f9f(%edx,%ebx,1),%eax
    1229:	ff 
    122a:	84 c0                	test   %al,%al
    122c:	75 e3                	jne    1211 <main+0x46>
    122e:	83 ec 04             	sub    $0x4,%esp
    1231:	56                   	push   %esi
    1232:	8d 83 6c e0 ff ff    	lea    -0x1f94(%ebx),%eax
    1238:	50                   	push   %eax
    1239:	6a 01                	push   $0x1
    123b:	e8 20 fe ff ff       	call   1060 <__printf_chk@plt>
    1240:	83 c4 10             	add    $0x10,%esp
    1243:	b8 00 00 00 00       	mov    $0x0,%eax
    1248:	eb 17                	jmp    1261 <main+0x96>
    124a:	83 ec 0c             	sub    $0xc,%esp
    124d:	8d 83 34 e0 ff ff    	lea    -0x1fcc(%ebx),%eax
    1253:	50                   	push   %eax
    1254:	e8 f7 fd ff ff       	call   1050 <puts@plt>
    1259:	83 c4 10             	add    $0x10,%esp
    125c:	b8 01 00 00 00       	mov    $0x1,%eax
    1261:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1264:	59                   	pop    %ecx
    1265:	5b                   	pop    %ebx
    1266:	5e                   	pop    %esi
    1267:	5d                   	pop    %ebp
    1268:	8d 61 fc             	lea    -0x4(%ecx),%esp
    126b:	c3                   	ret    
    126c:	83 ec 04             	sub    $0x4,%esp
    126f:	56                   	push   %esi
    1270:	8d 83 4b e0 ff ff    	lea    -0x1fb5(%ebx),%eax
    1276:	50                   	push   %eax
    1277:	6a 01                	push   $0x1
    1279:	e8 e2 fd ff ff       	call   1060 <__printf_chk@plt>
    127e:	83 c4 10             	add    $0x10,%esp
    1281:	b8 01 00 00 00       	mov    $0x1,%eax
    1286:	eb d9                	jmp    1261 <main+0x96>
    1288:	83 ec 04             	sub    $0x4,%esp
    128b:	56                   	push   %esi
    128c:	8d 83 4b e0 ff ff    	lea    -0x1fb5(%ebx),%eax
    1292:	50                   	push   %eax
    1293:	6a 01                	push   $0x1
    1295:	e8 c6 fd ff ff       	call   1060 <__printf_chk@plt>
    129a:	83 c4 10             	add    $0x10,%esp
    129d:	b8 01 00 00 00       	mov    $0x1,%eax
    12a2:	eb bd                	jmp    1261 <main+0x96>

Disassembly of section .fini:

000012a4 <_fini>:
_fini():
    12a4:	f3 0f 1e fb          	endbr32 
    12a8:	53                   	push   %ebx
    12a9:	83 ec 08             	sub    $0x8,%esp
    12ac:	e8 ff fd ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    12b1:	81 c3 23 2d 00 00    	add    $0x2d23,%ebx
    12b7:	83 c4 08             	add    $0x8,%esp
    12ba:	5b                   	pop    %ebx
    12bb:	c3                   	ret    
