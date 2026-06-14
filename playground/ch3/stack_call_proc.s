
a.out:     file format elf64-x86-64


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

0000000000001050 <__stack_chk_fail@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <__stack_chk_fail@GLIBC_2.4>
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
    1078:	48 8d 3d 7f 01 00 00 	lea    0x17f(%rip),%rdi        # 11fe <main>
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

0000000000001149 <proc>:
    1149:	f3 0f 1e fa          	endbr64
    114d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1152:	48 01 3e             	add    %rdi,(%rsi)
    1155:	01 11                	add    %edx,(%rcx)
    1157:	66 45 01 01          	add    %r8w,(%r9)
    115b:	8b 54 24 08          	mov    0x8(%rsp),%edx
    115f:	00 10                	add    %dl,(%rax)
    1161:	c3                   	ret

0000000000001162 <call_proc>:
    1162:	f3 0f 1e fa          	endbr64
    1166:	48 83 ec 28          	sub    $0x28,%rsp
    116a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1171:	00 00
    1173:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1178:	31 c0                	xor    %eax,%eax
    117a:	48 c7 44 24 10 01 00 	movq   $0x1,0x10(%rsp)
    1181:	00 00
    1183:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%rsp)
    118a:	00
    118b:	66 c7 44 24 0a 03 00 	movw   $0x3,0xa(%rsp)
    1192:	c6 44 24 09 04       	movb   $0x4,0x9(%rsp)
    1197:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    119c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    11a1:	48 8d 44 24 09       	lea    0x9(%rsp),%rax
    11a6:	50                   	push   %rax
    11a7:	6a 04                	push   $0x4
    11a9:	4c 8d 4c 24 1a       	lea    0x1a(%rsp),%r9
    11ae:	41 b8 03 00 00 00    	mov    $0x3,%r8d
    11b4:	ba 02 00 00 00       	mov    $0x2,%edx
    11b9:	bf 01 00 00 00       	mov    $0x1,%edi
    11be:	e8 86 ff ff ff       	call   1149 <proc>
    11c3:	48 63 44 24 1c       	movslq 0x1c(%rsp),%rax
    11c8:	48 03 44 24 20       	add    0x20(%rsp),%rax
    11cd:	0f bf 54 24 1a       	movswl 0x1a(%rsp),%edx
    11d2:	0f be 4c 24 19       	movsbl 0x19(%rsp),%ecx
    11d7:	01 ca                	add    %ecx,%edx
    11d9:	48 63 d2             	movslq %edx,%rdx
    11dc:	48 0f af c2          	imul   %rdx,%rax
    11e0:	48 83 c4 10          	add    $0x10,%rsp
    11e4:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    11e9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    11f0:	00 00
    11f2:	75 05                	jne    11f9 <call_proc+0x97>
    11f4:	48 83 c4 28          	add    $0x28,%rsp
    11f8:	c3                   	ret
    11f9:	e8 52 fe ff ff       	call   1050 <__stack_chk_fail@plt>

00000000000011fe <main>:
    11fe:	f3 0f 1e fa          	endbr64
    1202:	48 83 ec 08          	sub    $0x8,%rsp
    1206:	b8 00 00 00 00       	mov    $0x0,%eax
    120b:	e8 52 ff ff ff       	call   1162 <call_proc>
    1210:	48 83 c4 08          	add    $0x8,%rsp
    1214:	c3                   	ret

Disassembly of section .fini:

0000000000001218 <_fini>:
    1218:	f3 0f 1e fa          	endbr64
    121c:	48 83 ec 08          	sub    $0x8,%rsp
    1220:	48 83 c4 08          	add    $0x8,%rsp
    1224:	c3                   	ret
