
c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <putchar@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <putchar@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1149 <main>
    107f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <main>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	48 83 ec 10          	sub    $0x10,%rsp
    1155:	be 0a 00 00 00       	mov    $0xa,%esi
    115a:	48 8d 05 b7 2e 00 00 	lea    0x2eb7(%rip),%rax        # 4018 <buffer>
    1161:	48 89 c7             	mov    %rax,%rdi
    1164:	e8 10 02 00 00       	call   1379 <clear_all>
    1169:	48 8d 05 b0 2e 00 00 	lea    0x2eb0(%rip),%rax        # 4020 <buffer+0x8>
    1170:	ba 02 00 00 00       	mov    $0x2,%edx
    1175:	be 2b 00 00 00       	mov    $0x2b,%esi
    117a:	48 89 c7             	mov    %rax,%rdi
    117d:	e8 b1 01 00 00       	call   1333 <set_all>
    1182:	ba 61 00 00 00       	mov    $0x61,%edx
    1187:	be 00 00 00 00       	mov    $0x0,%esi
    118c:	48 8d 05 85 2e 00 00 	lea    0x2e85(%rip),%rax        # 4018 <buffer>
    1193:	48 89 c7             	mov    %rax,%rdi
    1196:	e8 27 01 00 00       	call   12c2 <set_value>
    119b:	be 09 00 00 00       	mov    $0x9,%esi
    11a0:	48 8d 05 71 2e 00 00 	lea    0x2e71(%rip),%rax        # 4018 <buffer>
    11a7:	48 89 c7             	mov    %rax,%rdi
    11aa:	e8 66 01 00 00       	call   1315 <get_value>
    11af:	88 45 fb             	mov    %al,-0x5(%rbp)
    11b2:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    11b6:	83 c0 27             	add    $0x27,%eax
    11b9:	0f be c0             	movsbl %al,%eax
    11bc:	89 c2                	mov    %eax,%edx
    11be:	be 09 00 00 00       	mov    $0x9,%esi
    11c3:	48 8d 05 4e 2e 00 00 	lea    0x2e4e(%rip),%rax        # 4018 <buffer>
    11ca:	48 89 c7             	mov    %rax,%rdi
    11cd:	e8 f0 00 00 00       	call   12c2 <set_value>
    11d2:	ba 37 00 00 00       	mov    $0x37,%edx
    11d7:	be 03 00 00 00       	mov    $0x3,%esi
    11dc:	48 8d 05 35 2e 00 00 	lea    0x2e35(%rip),%rax        # 4018 <buffer>
    11e3:	48 89 c7             	mov    %rax,%rdi
    11e6:	e8 d7 00 00 00       	call   12c2 <set_value>
    11eb:	ba 58 00 00 00       	mov    $0x58,%edx
    11f0:	be 01 00 00 00       	mov    $0x1,%esi
    11f5:	48 8d 05 1c 2e 00 00 	lea    0x2e1c(%rip),%rax        # 4018 <buffer>
    11fc:	48 89 c7             	mov    %rax,%rdi
    11ff:	e8 be 00 00 00       	call   12c2 <set_value>
    1204:	ba 32 00 00 00       	mov    $0x32,%edx
    1209:	be 04 00 00 00       	mov    $0x4,%esi
    120e:	48 8d 05 03 2e 00 00 	lea    0x2e03(%rip),%rax        # 4018 <buffer>
    1215:	48 89 c7             	mov    %rax,%rdi
    1218:	e8 a5 00 00 00       	call   12c2 <set_value>
    121d:	be 01 00 00 00       	mov    $0x1,%esi
    1222:	48 8d 05 ef 2d 00 00 	lea    0x2def(%rip),%rax        # 4018 <buffer>
    1229:	48 89 c7             	mov    %rax,%rdi
    122c:	e8 e4 00 00 00       	call   1315 <get_value>
    1231:	88 45 fb             	mov    %al,-0x5(%rbp)
    1234:	ba 79 00 00 00       	mov    $0x79,%edx
    1239:	be 02 00 00 00       	mov    $0x2,%esi
    123e:	48 8d 05 d3 2d 00 00 	lea    0x2dd3(%rip),%rax        # 4018 <buffer>
    1245:	48 89 c7             	mov    %rax,%rdi
    1248:	e8 75 00 00 00       	call   12c2 <set_value>
    124d:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    1251:	83 e8 0c             	sub    $0xc,%eax
    1254:	0f be c0             	movsbl %al,%eax
    1257:	89 c2                	mov    %eax,%edx
    1259:	be 07 00 00 00       	mov    $0x7,%esi
    125e:	48 8d 05 b3 2d 00 00 	lea    0x2db3(%rip),%rax        # 4018 <buffer>
    1265:	48 89 c7             	mov    %rax,%rdi
    1268:	e8 55 00 00 00       	call   12c2 <set_value>
    126d:	ba 5f 00 00 00       	mov    $0x5f,%edx
    1272:	be 05 00 00 00       	mov    $0x5,%esi
    1277:	48 8d 05 9a 2d 00 00 	lea    0x2d9a(%rip),%rax        # 4018 <buffer>
    127e:	48 89 c7             	mov    %rax,%rdi
    1281:	e8 3c 00 00 00       	call   12c2 <set_value>
    1286:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    128d:	eb 1c                	jmp    12ab <main+0x162>
    128f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1292:	48 8d 15 7f 2d 00 00 	lea    0x2d7f(%rip),%rdx        # 4018 <buffer>
    1299:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    129d:	0f be c0             	movsbl %al,%eax
    12a0:	89 c7                	mov    %eax,%edi
    12a2:	e8 a9 fd ff ff       	call   1050 <putchar@plt>
    12a7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12ab:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    12af:	76 de                	jbe    128f <main+0x146>
    12b1:	bf 0a 00 00 00       	mov    $0xa,%edi
    12b6:	e8 95 fd ff ff       	call   1050 <putchar@plt>
    12bb:	b8 00 00 00 00       	mov    $0x0,%eax
    12c0:	c9                   	leave  
    12c1:	c3                   	ret    

00000000000012c2 <set_value>:
    12c2:	f3 0f 1e fa          	endbr64 
    12c6:	55                   	push   %rbp
    12c7:	48 89 e5             	mov    %rsp,%rbp
    12ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12ce:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12d1:	89 d0                	mov    %edx,%eax
    12d3:	88 45 f0             	mov    %al,-0x10(%rbp)
    12d6:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12dd:	48 01 c2             	add    %rax,%rdx
    12e0:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    12e4:	88 02                	mov    %al,(%rdx)
    12e6:	90                   	nop
    12e7:	5d                   	pop    %rbp
    12e8:	c3                   	ret    

00000000000012e9 <clear_value>:
    12e9:	f3 0f 1e fa          	endbr64 
    12ed:	55                   	push   %rbp
    12ee:	48 89 e5             	mov    %rsp,%rbp
    12f1:	48 83 ec 10          	sub    $0x10,%rsp
    12f5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12f9:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12fc:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    12ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1303:	ba 00 00 00 00       	mov    $0x0,%edx
    1308:	89 ce                	mov    %ecx,%esi
    130a:	48 89 c7             	mov    %rax,%rdi
    130d:	e8 b0 ff ff ff       	call   12c2 <set_value>
    1312:	90                   	nop
    1313:	c9                   	leave  
    1314:	c3                   	ret    

0000000000001315 <get_value>:
    1315:	f3 0f 1e fa          	endbr64 
    1319:	55                   	push   %rbp
    131a:	48 89 e5             	mov    %rsp,%rbp
    131d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1321:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1324:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1327:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    132b:	48 01 d0             	add    %rdx,%rax
    132e:	0f b6 00             	movzbl (%rax),%eax
    1331:	5d                   	pop    %rbp
    1332:	c3                   	ret    

0000000000001333 <set_all>:
    1333:	f3 0f 1e fa          	endbr64 
    1337:	55                   	push   %rbp
    1338:	48 89 e5             	mov    %rsp,%rbp
    133b:	48 83 ec 20          	sub    $0x20,%rsp
    133f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1343:	89 f0                	mov    %esi,%eax
    1345:	89 55 e0             	mov    %edx,-0x20(%rbp)
    1348:	88 45 e4             	mov    %al,-0x1c(%rbp)
    134b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1352:	eb 19                	jmp    136d <set_all+0x3a>
    1354:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
    1358:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    135b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    135f:	89 ce                	mov    %ecx,%esi
    1361:	48 89 c7             	mov    %rax,%rdi
    1364:	e8 59 ff ff ff       	call   12c2 <set_value>
    1369:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    136d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1370:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    1373:	72 df                	jb     1354 <set_all+0x21>
    1375:	90                   	nop
    1376:	90                   	nop
    1377:	c9                   	leave  
    1378:	c3                   	ret    

0000000000001379 <clear_all>:
    1379:	f3 0f 1e fa          	endbr64 
    137d:	55                   	push   %rbp
    137e:	48 89 e5             	mov    %rsp,%rbp
    1381:	48 83 ec 10          	sub    $0x10,%rsp
    1385:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1389:	89 75 f4             	mov    %esi,-0xc(%rbp)
    138c:	8b 55 f4             	mov    -0xc(%rbp),%edx
    138f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1393:	be 00 00 00 00       	mov    $0x0,%esi
    1398:	48 89 c7             	mov    %rax,%rdi
    139b:	e8 93 ff ff ff       	call   1333 <set_all>
    13a0:	90                   	nop
    13a1:	c9                   	leave  
    13a2:	c3                   	ret    

Disassembly of section .fini:

00000000000013a4 <_fini>:
    13a4:	f3 0f 1e fa          	endbr64 
    13a8:	48 83 ec 08          	sub    $0x8,%rsp
    13ac:	48 83 c4 08          	add    $0x8,%rsp
    13b0:	c3                   	ret    
