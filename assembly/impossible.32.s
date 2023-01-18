
build/impossible.32:     file format elf32-i386


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

00001060 <putchar@plt>:
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

000011ad <deadcode>:
deadcode():
    11ad:	56                   	push   %esi
    11ae:	53                   	push   %ebx
    11af:	83 ec 04             	sub    $0x4,%esp
    11b2:	e8 f9 fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    11b7:	81 c3 1d 2e 00 00    	add    $0x2e1d,%ebx
    11bd:	8d b3 35 e0 ff ff    	lea    -0x1fcb(%ebx),%esi
    11c3:	b8 53 00 00 00       	mov    $0x53,%eax
    11c8:	83 ec 0c             	sub    $0xc,%esp
    11cb:	0f be c0             	movsbl %al,%eax
    11ce:	83 e8 03             	sub    $0x3,%eax
    11d1:	50                   	push   %eax
    11d2:	e8 89 fe ff ff       	call   1060 <putchar@plt>
    11d7:	83 c6 01             	add    $0x1,%esi
    11da:	0f b6 46 ff          	movzbl -0x1(%esi),%eax
    11de:	83 c4 10             	add    $0x10,%esp
    11e1:	84 c0                	test   %al,%al
    11e3:	75 e3                	jne    11c8 <deadcode+0x1b>
    11e5:	83 ec 0c             	sub    $0xc,%esp
    11e8:	6a 0a                	push   $0xa
    11ea:	e8 71 fe ff ff       	call   1060 <putchar@plt>
    11ef:	83 c4 14             	add    $0x14,%esp
    11f2:	5b                   	pop    %ebx
    11f3:	5e                   	pop    %esi
    11f4:	c3                   	ret    

000011f5 <main>:
main():
    11f5:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11f9:	83 e4 f0             	and    $0xfffffff0,%esp
    11fc:	ff 71 fc             	push   -0x4(%ecx)
    11ff:	55                   	push   %ebp
    1200:	89 e5                	mov    %esp,%ebp
    1202:	53                   	push   %ebx
    1203:	51                   	push   %ecx
    1204:	e8 a7 fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    1209:	81 c3 cb 2d 00 00    	add    $0x2dcb,%ebx
    120f:	8b 41 04             	mov    0x4(%ecx),%eax
    1212:	83 39 02             	cmpl   $0x2,(%ecx)
    1215:	75 29                	jne    1240 <main+0x4b>
    1217:	8b 40 04             	mov    0x4(%eax),%eax
    121a:	80 38 30             	cmpb   $0x30,(%eax)
    121d:	75 35                	jne    1254 <main+0x5f>
    121f:	83 ec 0c             	sub    $0xc,%esp
    1222:	8d 83 73 e0 ff ff    	lea    -0x1f8d(%ebx),%eax
    1228:	50                   	push   %eax
    1229:	e8 22 fe ff ff       	call   1050 <puts@plt>
    122e:	83 c4 10             	add    $0x10,%esp
    1231:	b8 01 00 00 00       	mov    $0x1,%eax
    1236:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1239:	59                   	pop    %ecx
    123a:	5b                   	pop    %ebx
    123b:	5d                   	pop    %ebp
    123c:	8d 61 fc             	lea    -0x4(%ecx),%esp
    123f:	c3                   	ret    
    1240:	83 ec 0c             	sub    $0xc,%esp
    1243:	8d 83 5b e0 ff ff    	lea    -0x1fa5(%ebx),%eax
    1249:	50                   	push   %eax
    124a:	e8 01 fe ff ff       	call   1050 <puts@plt>
    124f:	83 c4 10             	add    $0x10,%esp
    1252:	eb dd                	jmp    1231 <main+0x3c>
    1254:	83 ec 0c             	sub    $0xc,%esp
    1257:	8d 83 73 e0 ff ff    	lea    -0x1f8d(%ebx),%eax
    125d:	50                   	push   %eax
    125e:	e8 ed fd ff ff       	call   1050 <puts@plt>
    1263:	83 c4 10             	add    $0x10,%esp
    1266:	eb c9                	jmp    1231 <main+0x3c>

Disassembly of section .fini:

00001268 <_fini>:
_fini():
    1268:	f3 0f 1e fb          	endbr32 
    126c:	53                   	push   %ebx
    126d:	83 ec 08             	sub    $0x8,%esp
    1270:	e8 3b fe ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    1275:	81 c3 5f 2d 00 00    	add    $0x2d5f,%ebx
    127b:	83 c4 08             	add    $0x8,%esp
    127e:	5b                   	pop    %ebx
    127f:	c3                   	ret    
