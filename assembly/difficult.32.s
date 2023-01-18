
build/difficult.32:     file format elf32-i386


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

000011ad <strnlen>:
strnlen():
    11ad:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    11b1:	8b 54 24 08          	mov    0x8(%esp),%edx
    11b5:	85 d2                	test   %edx,%edx
    11b7:	7e 15                	jle    11ce <strnlen+0x21>
    11b9:	b8 00 00 00 00       	mov    $0x0,%eax
    11be:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
    11c2:	74 0f                	je     11d3 <strnlen+0x26>
    11c4:	83 c0 01             	add    $0x1,%eax
    11c7:	39 c2                	cmp    %eax,%edx
    11c9:	75 f3                	jne    11be <strnlen+0x11>
    11cb:	89 d0                	mov    %edx,%eax
    11cd:	c3                   	ret    
    11ce:	b8 00 00 00 00       	mov    $0x0,%eax
    11d3:	c3                   	ret    

000011d4 <sum>:
sum():
    11d4:	53                   	push   %ebx
    11d5:	8b 44 24 0c          	mov    0xc(%esp),%eax
    11d9:	89 c2                	mov    %eax,%edx
    11db:	03 54 24 10          	add    0x10(%esp),%edx
    11df:	39 d0                	cmp    %edx,%eax
    11e1:	73 24                	jae    1207 <sum+0x33>
    11e3:	8b 54 24 08          	mov    0x8(%esp),%edx
    11e7:	8d 14 42             	lea    (%edx,%eax,2),%edx
    11ea:	89 d3                	mov    %edx,%ebx
    11ec:	03 5c 24 10          	add    0x10(%esp),%ebx
    11f0:	b8 00 00 00 00       	mov    $0x0,%eax
    11f5:	0f be 0a             	movsbl (%edx),%ecx
    11f8:	01 c8                	add    %ecx,%eax
    11fa:	83 c2 01             	add    $0x1,%edx
    11fd:	39 da                	cmp    %ebx,%edx
    11ff:	75 f4                	jne    11f5 <sum+0x21>
    1201:	2b 44 24 14          	sub    0x14(%esp),%eax
    1205:	5b                   	pop    %ebx
    1206:	c3                   	ret    
    1207:	b8 00 00 00 00       	mov    $0x0,%eax
    120c:	eb f3                	jmp    1201 <sum+0x2d>

0000120e <fail>:
fail():
    120e:	53                   	push   %ebx
    120f:	83 ec 0c             	sub    $0xc,%esp
    1212:	e8 99 fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    1217:	81 c3 bd 2d 00 00    	add    $0x2dbd,%ebx
    121d:	ff 74 24 14          	push   0x14(%esp)
    1221:	8d 83 34 e0 ff ff    	lea    -0x1fcc(%ebx),%eax
    1227:	50                   	push   %eax
    1228:	6a 01                	push   $0x1
    122a:	e8 31 fe ff ff       	call   1060 <__printf_chk@plt>
    122f:	83 c4 18             	add    $0x18,%esp
    1232:	5b                   	pop    %ebx
    1233:	c3                   	ret    

00001234 <valid_characters>:
valid_characters():
    1234:	8b 54 24 04          	mov    0x4(%esp),%edx
    1238:	0f b6 02             	movzbl (%edx),%eax
    123b:	84 c0                	test   %al,%al
    123d:	74 1b                	je     125a <valid_characters+0x26>
    123f:	83 c2 01             	add    $0x1,%edx
    1242:	83 e8 30             	sub    $0x30,%eax
    1245:	3c 4a                	cmp    $0x4a,%al
    1247:	77 17                	ja     1260 <valid_characters+0x2c>
    1249:	83 c2 01             	add    $0x1,%edx
    124c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
    1250:	84 c0                	test   %al,%al
    1252:	75 ee                	jne    1242 <valid_characters+0xe>
    1254:	b8 00 00 00 00       	mov    $0x0,%eax
    1259:	c3                   	ret    
    125a:	b8 00 00 00 00       	mov    $0x0,%eax
    125f:	c3                   	ret    
    1260:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1265:	c3                   	ret    

00001266 <main>:
main():
    1266:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    126a:	83 e4 f0             	and    $0xfffffff0,%esp
    126d:	ff 71 fc             	push   -0x4(%ecx)
    1270:	55                   	push   %ebp
    1271:	89 e5                	mov    %esp,%ebp
    1273:	56                   	push   %esi
    1274:	53                   	push   %ebx
    1275:	51                   	push   %ecx
    1276:	83 ec 0c             	sub    $0xc,%esp
    1279:	e8 32 fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    127e:	81 c3 56 2d 00 00    	add    $0x2d56,%ebx
    1284:	8b 41 04             	mov    0x4(%ecx),%eax
    1287:	83 39 02             	cmpl   $0x2,(%ecx)
    128a:	0f 85 9c 00 00 00    	jne    132c <main+0xc6>
    1290:	8b 70 04             	mov    0x4(%eax),%esi
    1293:	83 ec 08             	sub    $0x8,%esp
    1296:	68 10 27 00 00       	push   $0x2710
    129b:	56                   	push   %esi
    129c:	e8 0c ff ff ff       	call   11ad <strnlen>
    12a1:	83 c4 10             	add    $0x10,%esp
    12a4:	83 f8 0c             	cmp    $0xc,%eax
    12a7:	0f 85 a1 00 00 00    	jne    134e <main+0xe8>
    12ad:	83 ec 0c             	sub    $0xc,%esp
    12b0:	56                   	push   %esi
    12b1:	e8 7e ff ff ff       	call   1234 <valid_characters>
    12b6:	83 c4 10             	add    $0x10,%esp
    12b9:	83 f8 ff             	cmp    $0xffffffff,%eax
    12bc:	0f 84 9f 00 00 00    	je     1361 <main+0xfb>
    12c2:	68 d7 00 00 00       	push   $0xd7
    12c7:	6a 04                	push   $0x4
    12c9:	6a 00                	push   $0x0
    12cb:	56                   	push   %esi
    12cc:	e8 03 ff ff ff       	call   11d4 <sum>
    12d1:	83 c4 10             	add    $0x10,%esp
    12d4:	85 c0                	test   %eax,%eax
    12d6:	0f 8f 98 00 00 00    	jg     1374 <main+0x10e>
    12dc:	68 44 01 00 00       	push   $0x144
    12e1:	6a 04                	push   $0x4
    12e3:	6a 04                	push   $0x4
    12e5:	56                   	push   %esi
    12e6:	e8 e9 fe ff ff       	call   11d4 <sum>
    12eb:	83 c4 10             	add    $0x10,%esp
    12ee:	85 c0                	test   %eax,%eax
    12f0:	0f 8f 91 00 00 00    	jg     1387 <main+0x121>
    12f6:	68 1f 01 00 00       	push   $0x11f
    12fb:	6a 04                	push   $0x4
    12fd:	6a 08                	push   $0x8
    12ff:	56                   	push   %esi
    1300:	e8 cf fe ff ff       	call   11d4 <sum>
    1305:	83 c4 10             	add    $0x10,%esp
    1308:	85 c0                	test   %eax,%eax
    130a:	0f 8f 8a 00 00 00    	jg     139a <main+0x134>
    1310:	83 ec 04             	sub    $0x4,%esp
    1313:	56                   	push   %esi
    1314:	8d 83 63 e0 ff ff    	lea    -0x1f9d(%ebx),%eax
    131a:	50                   	push   %eax
    131b:	6a 01                	push   $0x1
    131d:	e8 3e fd ff ff       	call   1060 <__printf_chk@plt>
    1322:	83 c4 10             	add    $0x10,%esp
    1325:	b8 00 00 00 00       	mov    $0x0,%eax
    132a:	eb 17                	jmp    1343 <main+0xdd>
    132c:	83 ec 0c             	sub    $0xc,%esp
    132f:	8d 83 4c e0 ff ff    	lea    -0x1fb4(%ebx),%eax
    1335:	50                   	push   %eax
    1336:	e8 15 fd ff ff       	call   1050 <puts@plt>
    133b:	83 c4 10             	add    $0x10,%esp
    133e:	b8 01 00 00 00       	mov    $0x1,%eax
    1343:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1346:	59                   	pop    %ecx
    1347:	5b                   	pop    %ebx
    1348:	5e                   	pop    %esi
    1349:	5d                   	pop    %ebp
    134a:	8d 61 fc             	lea    -0x4(%ecx),%esp
    134d:	c3                   	ret    
    134e:	83 ec 0c             	sub    $0xc,%esp
    1351:	56                   	push   %esi
    1352:	e8 b7 fe ff ff       	call   120e <fail>
    1357:	83 c4 10             	add    $0x10,%esp
    135a:	b8 01 00 00 00       	mov    $0x1,%eax
    135f:	eb e2                	jmp    1343 <main+0xdd>
    1361:	83 ec 0c             	sub    $0xc,%esp
    1364:	56                   	push   %esi
    1365:	e8 a4 fe ff ff       	call   120e <fail>
    136a:	83 c4 10             	add    $0x10,%esp
    136d:	b8 01 00 00 00       	mov    $0x1,%eax
    1372:	eb cf                	jmp    1343 <main+0xdd>
    1374:	83 ec 0c             	sub    $0xc,%esp
    1377:	56                   	push   %esi
    1378:	e8 91 fe ff ff       	call   120e <fail>
    137d:	83 c4 10             	add    $0x10,%esp
    1380:	b8 01 00 00 00       	mov    $0x1,%eax
    1385:	eb bc                	jmp    1343 <main+0xdd>
    1387:	83 ec 0c             	sub    $0xc,%esp
    138a:	56                   	push   %esi
    138b:	e8 7e fe ff ff       	call   120e <fail>
    1390:	83 c4 10             	add    $0x10,%esp
    1393:	b8 01 00 00 00       	mov    $0x1,%eax
    1398:	eb a9                	jmp    1343 <main+0xdd>
    139a:	83 ec 0c             	sub    $0xc,%esp
    139d:	56                   	push   %esi
    139e:	e8 6b fe ff ff       	call   120e <fail>
    13a3:	83 c4 10             	add    $0x10,%esp
    13a6:	b8 01 00 00 00       	mov    $0x1,%eax
    13ab:	eb 96                	jmp    1343 <main+0xdd>

Disassembly of section .fini:

000013b0 <_fini>:
_fini():
    13b0:	f3 0f 1e fb          	endbr32 
    13b4:	53                   	push   %ebx
    13b5:	83 ec 08             	sub    $0x8,%esp
    13b8:	e8 f3 fc ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    13bd:	81 c3 17 2c 00 00    	add    $0x2c17,%ebx
    13c3:	83 c4 08             	add    $0x8,%esp
    13c6:	5b                   	pop    %ebx
    13c7:	c3                   	ret    
