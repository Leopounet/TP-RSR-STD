
build/replace.32:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
_init():
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 b3 00 00 00       	call   10c0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 c3 2f 00 00    	add    $0x2fc3,%ebx
    1013:	8b 83 24 00 00 00    	mov    0x24(%ebx),%eax
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

00001070 <strnlen@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .plt.got:

00001080 <__cxa_finalize@plt>:
    1080:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001090 <_start>:
_start():
    1090:	f3 0f 1e fb          	endbr32 
    1094:	31 ed                	xor    %ebp,%ebp
    1096:	5e                   	pop    %esi
    1097:	89 e1                	mov    %esp,%ecx
    1099:	83 e4 f0             	and    $0xfffffff0,%esp
    109c:	50                   	push   %eax
    109d:	54                   	push   %esp
    109e:	52                   	push   %edx
    109f:	e8 18 00 00 00       	call   10bc <_start+0x2c>
    10a4:	81 c3 2c 2f 00 00    	add    $0x2f2c,%ebx
    10aa:	6a 00                	push   $0x0
    10ac:	6a 00                	push   $0x0
    10ae:	51                   	push   %ecx
    10af:	56                   	push   %esi
    10b0:	ff b3 28 00 00 00    	push   0x28(%ebx)
    10b6:	e8 85 ff ff ff       	call   1040 <__libc_start_main@plt>
    10bb:	f4                   	hlt    
    10bc:	8b 1c 24             	mov    (%esp),%ebx
    10bf:	c3                   	ret    

000010c0 <__x86.get_pc_thunk.bx>:
__x86.get_pc_thunk.bx():
    10c0:	8b 1c 24             	mov    (%esp),%ebx
    10c3:	c3                   	ret    
    10c4:	66 90                	xchg   %ax,%ax
    10c6:	66 90                	xchg   %ax,%ax
    10c8:	66 90                	xchg   %ax,%ax
    10ca:	66 90                	xchg   %ax,%ax
    10cc:	66 90                	xchg   %ax,%ax
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <deregister_tm_clones>:
deregister_tm_clones():
    10d0:	e8 e4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 fb 2e 00 00    	add    $0x2efb,%edx
    10db:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
    10e1:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
    10e7:	39 c8                	cmp    %ecx,%eax
    10e9:	74 1d                	je     1108 <deregister_tm_clones+0x38>
    10eb:	8b 82 1c 00 00 00    	mov    0x1c(%edx),%eax
    10f1:	85 c0                	test   %eax,%eax
    10f3:	74 13                	je     1108 <deregister_tm_clones+0x38>
    10f5:	55                   	push   %ebp
    10f6:	89 e5                	mov    %esp,%ebp
    10f8:	83 ec 14             	sub    $0x14,%esp
    10fb:	51                   	push   %ecx
    10fc:	ff d0                	call   *%eax
    10fe:	83 c4 10             	add    $0x10,%esp
    1101:	c9                   	leave  
    1102:	c3                   	ret    
    1103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1107:	90                   	nop
    1108:	c3                   	ret    
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001110 <register_tm_clones>:
register_tm_clones():
    1110:	e8 a4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    1115:	81 c2 bb 2e 00 00    	add    $0x2ebb,%edx
    111b:	55                   	push   %ebp
    111c:	89 e5                	mov    %esp,%ebp
    111e:	53                   	push   %ebx
    111f:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
    1125:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
    112b:	83 ec 04             	sub    $0x4,%esp
    112e:	29 c8                	sub    %ecx,%eax
    1130:	89 c3                	mov    %eax,%ebx
    1132:	c1 e8 1f             	shr    $0x1f,%eax
    1135:	c1 fb 02             	sar    $0x2,%ebx
    1138:	01 d8                	add    %ebx,%eax
    113a:	d1 f8                	sar    %eax
    113c:	74 14                	je     1152 <register_tm_clones+0x42>
    113e:	8b 92 2c 00 00 00    	mov    0x2c(%edx),%edx
    1144:	85 d2                	test   %edx,%edx
    1146:	74 0a                	je     1152 <register_tm_clones+0x42>
    1148:	83 ec 08             	sub    $0x8,%esp
    114b:	50                   	push   %eax
    114c:	51                   	push   %ecx
    114d:	ff d2                	call   *%edx
    114f:	83 c4 10             	add    $0x10,%esp
    1152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1155:	c9                   	leave  
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax

00001160 <__do_global_dtors_aux>:
__do_global_dtors_aux():
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   %ebp
    1165:	89 e5                	mov    %esp,%ebp
    1167:	53                   	push   %ebx
    1168:	e8 53 ff ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    116d:	81 c3 63 2e 00 00    	add    $0x2e63,%ebx
    1173:	83 ec 04             	sub    $0x4,%esp
    1176:	80 bb 38 00 00 00 00 	cmpb   $0x0,0x38(%ebx)
    117d:	75 27                	jne    11a6 <__do_global_dtors_aux+0x46>
    117f:	8b 83 20 00 00 00    	mov    0x20(%ebx),%eax
    1185:	85 c0                	test   %eax,%eax
    1187:	74 11                	je     119a <__do_global_dtors_aux+0x3a>
    1189:	83 ec 0c             	sub    $0xc,%esp
    118c:	ff b3 34 00 00 00    	push   0x34(%ebx)
    1192:	e8 e9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    1197:	83 c4 10             	add    $0x10,%esp
    119a:	e8 31 ff ff ff       	call   10d0 <deregister_tm_clones>
    119f:	c6 83 38 00 00 00 01 	movb   $0x1,0x38(%ebx)
    11a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11a9:	c9                   	leave  
    11aa:	c3                   	ret    
    11ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11af:	90                   	nop

000011b0 <frame_dummy>:
frame_dummy():
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	e9 57 ff ff ff       	jmp    1110 <register_tm_clones>

000011b9 <__x86.get_pc_thunk.dx>:
__x86.get_pc_thunk.dx():
    11b9:	8b 14 24             	mov    (%esp),%edx
    11bc:	c3                   	ret    

000011bd <fail>:
fail():
    11bd:	53                   	push   %ebx
    11be:	83 ec 0c             	sub    $0xc,%esp
    11c1:	e8 fa fe ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    11c6:	81 c3 0a 2e 00 00    	add    $0x2e0a,%ebx
    11cc:	ff 74 24 14          	push   0x14(%esp)
    11d0:	8d 83 38 e0 ff ff    	lea    -0x1fc8(%ebx),%eax
    11d6:	50                   	push   %eax
    11d7:	6a 01                	push   $0x1
    11d9:	e8 82 fe ff ff       	call   1060 <__printf_chk@plt>
    11de:	83 c4 18             	add    $0x18,%esp
    11e1:	5b                   	pop    %ebx
    11e2:	c3                   	ret    

000011e3 <valid_characters>:
valid_characters():
    11e3:	8b 54 24 04          	mov    0x4(%esp),%edx
    11e7:	0f b6 02             	movzbl (%edx),%eax
    11ea:	84 c0                	test   %al,%al
    11ec:	74 1b                	je     1209 <valid_characters+0x26>
    11ee:	83 c2 01             	add    $0x1,%edx
    11f1:	83 e8 30             	sub    $0x30,%eax
    11f4:	3c 4a                	cmp    $0x4a,%al
    11f6:	77 17                	ja     120f <valid_characters+0x2c>
    11f8:	83 c2 01             	add    $0x1,%edx
    11fb:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
    11ff:	84 c0                	test   %al,%al
    1201:	75 ee                	jne    11f1 <valid_characters+0xe>
    1203:	b8 00 00 00 00       	mov    $0x0,%eax
    1208:	c3                   	ret    
    1209:	b8 00 00 00 00       	mov    $0x0,%eax
    120e:	c3                   	ret    
    120f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1214:	c3                   	ret    

00001215 <main>:
main():
    1215:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1219:	83 e4 f0             	and    $0xfffffff0,%esp
    121c:	ff 71 fc             	push   -0x4(%ecx)
    121f:	55                   	push   %ebp
    1220:	89 e5                	mov    %esp,%ebp
    1222:	56                   	push   %esi
    1223:	53                   	push   %ebx
    1224:	51                   	push   %ecx
    1225:	83 ec 0c             	sub    $0xc,%esp
    1228:	e8 93 fe ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    122d:	81 c3 a3 2d 00 00    	add    $0x2da3,%ebx
    1233:	8b 41 04             	mov    0x4(%ecx),%eax
    1236:	83 39 02             	cmpl   $0x2,(%ecx)
    1239:	75 63                	jne    129e <main+0x89>
    123b:	8b 70 04             	mov    0x4(%eax),%esi
    123e:	83 ec 08             	sub    $0x8,%esp
    1241:	68 10 27 00 00       	push   $0x2710
    1246:	56                   	push   %esi
    1247:	e8 24 fe ff ff       	call   1070 <strnlen@plt>
    124c:	83 c4 10             	add    $0x10,%esp
    124f:	83 f8 11             	cmp    $0x11,%eax
    1252:	75 6c                	jne    12c0 <main+0xab>
    1254:	83 ec 0c             	sub    $0xc,%esp
    1257:	56                   	push   %esi
    1258:	e8 86 ff ff ff       	call   11e3 <valid_characters>
    125d:	83 c4 10             	add    $0x10,%esp
    1260:	89 c2                	mov    %eax,%edx
    1262:	b8 00 00 00 00       	mov    $0x0,%eax
    1267:	83 fa ff             	cmp    $0xffffffff,%edx
    126a:	74 67                	je     12d3 <main+0xbe>
    126c:	89 c2                	mov    %eax,%edx
    126e:	f7 da                	neg    %edx
    1270:	0f b6 54 16 0f       	movzbl 0xf(%esi,%edx,1),%edx
    1275:	38 14 06             	cmp    %dl,(%esi,%eax,1)
    1278:	75 6c                	jne    12e6 <main+0xd1>
    127a:	83 c0 01             	add    $0x1,%eax
    127d:	83 f8 08             	cmp    $0x8,%eax
    1280:	75 ea                	jne    126c <main+0x57>
    1282:	83 ec 04             	sub    $0x4,%esp
    1285:	56                   	push   %esi
    1286:	8d 83 50 e0 ff ff    	lea    -0x1fb0(%ebx),%eax
    128c:	50                   	push   %eax
    128d:	6a 01                	push   $0x1
    128f:	e8 cc fd ff ff       	call   1060 <__printf_chk@plt>
    1294:	83 c4 10             	add    $0x10,%esp
    1297:	b8 00 00 00 00       	mov    $0x0,%eax
    129c:	eb 17                	jmp    12b5 <main+0xa0>
    129e:	83 ec 0c             	sub    $0xc,%esp
    12a1:	8d 83 68 e0 ff ff    	lea    -0x1f98(%ebx),%eax
    12a7:	50                   	push   %eax
    12a8:	e8 a3 fd ff ff       	call   1050 <puts@plt>
    12ad:	83 c4 10             	add    $0x10,%esp
    12b0:	b8 01 00 00 00       	mov    $0x1,%eax
    12b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12b8:	59                   	pop    %ecx
    12b9:	5b                   	pop    %ebx
    12ba:	5e                   	pop    %esi
    12bb:	5d                   	pop    %ebp
    12bc:	8d 61 fc             	lea    -0x4(%ecx),%esp
    12bf:	c3                   	ret    
    12c0:	83 ec 0c             	sub    $0xc,%esp
    12c3:	56                   	push   %esi
    12c4:	e8 f4 fe ff ff       	call   11bd <fail>
    12c9:	83 c4 10             	add    $0x10,%esp
    12cc:	b8 01 00 00 00       	mov    $0x1,%eax
    12d1:	eb e2                	jmp    12b5 <main+0xa0>
    12d3:	83 ec 0c             	sub    $0xc,%esp
    12d6:	56                   	push   %esi
    12d7:	e8 e1 fe ff ff       	call   11bd <fail>
    12dc:	83 c4 10             	add    $0x10,%esp
    12df:	b8 01 00 00 00       	mov    $0x1,%eax
    12e4:	eb cf                	jmp    12b5 <main+0xa0>
    12e6:	83 ec 0c             	sub    $0xc,%esp
    12e9:	56                   	push   %esi
    12ea:	e8 ce fe ff ff       	call   11bd <fail>
    12ef:	83 c4 10             	add    $0x10,%esp
    12f2:	b8 01 00 00 00       	mov    $0x1,%eax
    12f7:	eb bc                	jmp    12b5 <main+0xa0>

Disassembly of section .fini:

000012fc <_fini>:
_fini():
    12fc:	f3 0f 1e fb          	endbr32 
    1300:	53                   	push   %ebx
    1301:	83 ec 08             	sub    $0x8,%esp
    1304:	e8 b7 fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1309:	81 c3 c7 2c 00 00    	add    $0x2cc7,%ebx
    130f:	83 c4 08             	add    $0x8,%esp
    1312:	5b                   	pop    %ebx
    1313:	c3                   	ret    
