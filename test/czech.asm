Resident data ends at 92c, program starts at 92c, file ends at 34e0

Starting analysis pass at address 92c

End of analysis pass, low address = 92c, high address = 2df6

[Start of code at 92c]

Main routine 92c, 0 locals

  92d:  e0 3f 09 66 ff          CALL_VS         2598 -> Gef
  932:  ba                      QUIT            

Routine 934, 3 locals

  935:  61 02 01 80 46          JE              L01,L00 [TRUE] 97e
  93a:  b2 ...                  PRINT           "

ERROR ["
  949:  e6 bf 11                PRINT_NUM       G01
  94c:  b2 ...                  PRINT           "] "
  951:  ff 7f 03 4a             CHECK_ARG_COUNT #03 [FALSE] 95d
  955:  b2 ...                  PRINT           "("
  958:  ad 03                   PRINT_PADDR     L02
  95a:  b2 ...                  PRINT           ")"
  95d:  8f 02 8f                CALL_1N         a3c
  960:  b2 ...                  PRINT           " Expected "
  969:  e6 bf 02                PRINT_NUM       L01
  96c:  b2 ...                  PRINT           "; got "
  973:  e6 bf 01                PRINT_NUM       L00
  976:  b2 ...                  PRINT           "

"
  97b:  8c 00 05                JUMP            981
  97e:  8f 02 8c                CALL_1N         a30
  981:  b0                      RTRUE           

Routine 984, 4 locals

  985:  2d 04 16                STORE           L03,G06
  988:  61 02 01 80 45          JE              L01,L00 [TRUE] 9d0
  98d:  8f 02 8f                CALL_1N         a3c
  990:  b2 ...                  PRINT           "

ERROR ["
  99f:  e6 bf 11                PRINT_NUM       G01
  9a2:  b2 ...                  PRINT           "] ("
  9a9:  ad 03                   PRINT_PADDR     L02
  9ab:  b2 ...                  PRINT           " "
  9ae:  e6 bf 04                PRINT_NUM       L03
  9b1:  b2 ...                  PRINT           ")"
  9b4:  b2 ...                  PRINT           " Expected "
  9bd:  e6 bf 02                PRINT_NUM       L01
  9c0:  b2 ...                  PRINT           "; got "
  9c7:  e6 bf 01                PRINT_NUM       L00
  9ca:  b2 ...                  PRINT           "
"
  9cd:  8c 00 05                JUMP            9d3
  9d0:  8f 02 8c                CALL_1N         a30
  9d3:  b0                      RTRUE           

Routine 9d4, 5 locals

  9d5:  2d 04 16                STORE           L03,G06
  9d8:  2d 05 17                STORE           L04,G07
  9db:  61 02 01 80 43          JE              L01,L00 [TRUE] a21
  9e0:  8f 02 8f                CALL_1N         a3c
  9e3:  b2 ...                  PRINT           "

["
  9ea:  e6 bf 11                PRINT_NUM       G01
  9ed:  b2 ...                  PRINT           "] ("
  9f4:  e6 bf 04                PRINT_NUM       L03
  9f7:  b2 ...                  PRINT           " "
  9fa:  ad 03                   PRINT_PADDR     L02
  9fc:  b2 ...                  PRINT           " "
  9ff:  e6 bf 05                PRINT_NUM       L04
  a02:  b2 ...                  PRINT           ")"
  a05:  b2 ...                  PRINT           " Expected "
  a0e:  e6 bf 02                PRINT_NUM       L01
  a11:  b2 ...                  PRINT           "; got "
  a18:  e6 bf 01                PRINT_NUM       L00
  a1b:  b2 ...                  PRINT           "
"
  a1e:  8c 00 05                JUMP            a24
  a21:  8f 02 8c                CALL_1N         a30
  a24:  b0                      RTRUE           

Routine a28, 0 locals

  a29:  95 11                   INC             G01
  a2b:  95 14                   INC             G04
  a2d:  b0                      RTRUE           

Routine a30, 0 locals

  a31:  b2 ...                  PRINT           "."
  a34:  95 11                   INC             G01
  a36:  95 12                   INC             G02
  a38:  b0                      RTRUE           

Routine a3c, 0 locals

  a3d:  95 11                   INC             G01
  a3f:  95 13                   INC             G03
  a41:  b0                      RTRUE           

Routine a44, 2 locals

  a45:  b2 ...                  PRINT           "Jumps"
  a4a:  a0 01 ca                JZ              L00 [TRUE] a55
  a4d:  b2 ...                  PRINT           " skipped"
  a54:  b1                      RFALSE          
  a55:  b2 ...                  PRINT           " ["
  a5a:  54 11 01 00             ADD             G01,#01 -> -(SP)
  a5e:  e6 bf 00                PRINT_NUM       (SP)+
  a61:  b2 ...                  PRINT           "]: "
  a68:  b2 ...                  PRINT           "jump"
  a6d:  8c 00 08                JUMP            a76
  a70:  b2 ...                  PRINT           "bad!"
  a75:  ba                      QUIT            
  a76:  8f 02 8c                CALL_1N         a30
  a79:  b2 ...                  PRINT           "je"
  a7c:  01 05 05 01 29          JE              #05,#05 [FALSE] ba8
  a81:  8f 02 8c                CALL_1N         a30
  a84:  c1 4f 05 ff fb 81 1f    JE              #05,#fffb [TRUE] ba8
  a8b:  8f 02 8c                CALL_1N         a30
  a8e:  c1 1f ff fb 05 81 15    JE              #fffb,#05 [TRUE] ba8
  a95:  8f 02 8c                CALL_1N         a30
  a98:  c1 0f ff fb ff fb 01 0a JE              #fffb,#fffb [FALSE] ba8
  aa0:  8f 02 8c                CALL_1N         a30
  aa3:  c1 0f 7f ff 80 00 80 ff JE              #7fff,#8000 [TRUE] ba8
  aab:  8f 02 8c                CALL_1N         a30
  aae:  c1 0f 80 00 80 00 00 f4 JE              #8000,#8000 [FALSE] ba8
  ab6:  8f 02 8c                CALL_1N         a30
  ab9:  c1 57 05 04 05 00 ea    JE              #05,#04,#05 [FALSE] ba8
  ac0:  8f 02 8c                CALL_1N         a30
  ac3:  c1 55 05 04 03 05 00 df JE              #05,#04,#03,#05 [FALSE] ba8
  acb:  8f 02 8c                CALL_1N         a30
  ace:  c1 55 05 04 05 03 00 d4 JE              #05,#04,#05,#03 [FALSE] ba8
  ad6:  8f 02 8c                CALL_1N         a30
  ad9:  c1 55 05 04 03 02 80 c9 JE              #05,#04,#03,#02 [TRUE] ba8
  ae1:  8f 02 8c                CALL_1N         a30
  ae4:  b2 ...                  PRINT           "jg"
  ae7:  03 05 05 80 be          JG              #05,#05 [TRUE] ba8
  aec:  8f 02 8c                CALL_1N         a30
  aef:  03 01 00 00 b6          JG              #01,#00 [FALSE] ba8
  af4:  8f 02 8c                CALL_1N         a30
  af7:  03 00 01 80 ae          JG              #00,#01 [TRUE] ba8
  afc:  8f 02 8c                CALL_1N         a30
  aff:  c3 0f ff ff ff fe 00 a3 JG              #ffff,#fffe [FALSE] ba8
  b07:  8f 02 8c                CALL_1N         a30
  b0a:  c3 0f ff fe ff ff 80 98 JG              #fffe,#ffff [TRUE] ba8
  b12:  8f 02 8c                CALL_1N         a30
  b15:  c3 4f 01 ff ff 00 8e    JG              #01,#ffff [FALSE] ba8
  b1c:  8f 02 8c                CALL_1N         a30
  b1f:  c3 1f ff ff 01 80 84    JG              #ffff,#01 [TRUE] ba8
  b26:  8f 02 8c                CALL_1N         a30
  b29:  b2 ...                  PRINT           "jl"
  b2c:  02 05 05 80 79          JL              #05,#05 [TRUE] ba8
  b31:  8f 02 8c                CALL_1N         a30
  b34:  02 01 00 80 71          JL              #01,#00 [TRUE] ba8
  b39:  8f 02 8c                CALL_1N         a30
  b3c:  02 00 01 00 69          JL              #00,#01 [FALSE] ba8
  b41:  8f 02 8c                CALL_1N         a30
  b44:  c2 0f ff ff ff fe 80 5e JL              #ffff,#fffe [TRUE] ba8
  b4c:  8f 02 8c                CALL_1N         a30
  b4f:  c2 0f ff fe ff ff 00 53 JL              #fffe,#ffff [FALSE] ba8
  b57:  8f 02 8c                CALL_1N         a30
  b5a:  c2 4f 01 ff ff 80 49    JL              #01,#ffff [TRUE] ba8
  b61:  8f 02 8c                CALL_1N         a30
  b64:  c2 1f ff ff 01 00 3f    JL              #ffff,#01 [FALSE] ba8
  b6b:  8f 02 8c                CALL_1N         a30
  b6e:  b2 ...                  PRINT           "jz"
  b71:  90 00 76                JZ              #00 [FALSE] ba8
  b74:  8f 02 8c                CALL_1N         a30
  b77:  90 01 f0                JZ              #01 [TRUE] ba8
  b7a:  8f 02 8c                CALL_1N         a30
  b7d:  80 ff fc e9             JZ              #fffc [TRUE] ba8
  b81:  8f 02 8c                CALL_1N         a30
  b84:  b2 ...                  PRINT           "offsets"
  b8b:  d9 1f 02 f7 00 02       CALL_2S         bdc (#00) -> L01
  b91:  f9 24 02 4d 02 00 0b 80 CALL_VN         934 (L01,#00,S002)
  b99:  d9 1f 02 f7 01 02       CALL_2S         bdc (#01) -> L01
  b9f:  f9 24 02 4d 02 01 0b 82 CALL_VN         934 (L01,#01,S003)
  ba7:  b0                      RTRUE           
  ba8:  b2 ...                  PRINT           "
bad ["
  bb1:  e6 bf 11                PRINT_NUM       G01
  bb4:  b2 ...                  PRINT           "]!
"
  bbb:  b2 ...                  PRINT           "Quitting tests because jumps
don't work!"
  bda:  ba                      QUIT            

Routine bdc, 1 local

  bdd:  41 01 00 47             JE              L00,#00 [FALSE] be6
  be1:  90 00 c0                JZ              #00 [TRUE] RFALSE
  be4:  9b 61                   RET             #61
  be6:  41 01 01 47             JE              L00,#01 [FALSE] bef
  bea:  90 00 c1                JZ              #00 [TRUE] RTRUE
  bed:  9b 62                   RET             #62
  bef:  9b 63                   RET             #63

Routine bf4, 3 locals

  bf5:  b2 ...                  PRINT           "Variables"
  bfe:  a0 01 ca                JZ              L00 [TRUE] c09
  c01:  b2 ...                  PRINT           " skipped"
  c08:  b1                      RFALSE          
  c09:  b2 ...                  PRINT           " ["
  c0e:  54 11 01 00             ADD             G01,#01 -> -(SP)
  c12:  e6 bf 00                PRINT_NUM       (SP)+
  c15:  b2 ...                  PRINT           "]: "
  c1c:  b2 ...                  PRINT           "push/pull"
  c25:  e8 7f 09                PUSH            #09
  c28:  e8 7f 08                PUSH            #08
  c2b:  e9 7f 02                PULL            L01
  c2e:  f9 24 02 4d 02 08 0b 84 CALL_VN         934 (L01,#08,S004)
  c36:  e9 7f 15                PULL            G05
  c39:  f9 24 02 4d 15 09 0b 87 CALL_VN         934 (G05,#09,S005)
  c41:  b2 ...                  PRINT           "store"
  c46:  0d 02 05                STORE           L01,#05
  c49:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
  c4f:  b2 ...                  PRINT           "load"
  c54:  0d 03 05                STORE           L02,#05
  c57:  0d 02 06                STORE           L01,#06
  c5a:  9e 02 00                LOAD            L01 -> -(SP)
  c5d:  e9 7f 03                PULL            L02
  c60:  f9 2b 02 4d 02 03       CALL_VN         934 (L01,L02)
  c66:  b2 ...                  PRINT           "dec"
  c69:  f9 17 03 84 05 04       CALL_VN         e10 (#05,#04)
  c6f:  f9 13 03 84 00 ff ff    CALL_VN         e10 (#00,#ffff)
  c76:  f9 03 03 84 ff f8 ff f7 CALL_VN         e10 (#fff8,#fff7)
  c7e:  f9 03 03 84 80 00 7f ff CALL_VN         e10 (#8000,#7fff)
  c86:  e8 7f 01                PUSH            #01
  c89:  e8 7f 0a                PUSH            #0a
  c8c:  96 00                   DEC             (SP)+
  c8e:  e9 7f 03                PULL            L02
  c91:  f9 24 02 4d 03 09 0b 8a CALL_VN         934 (L02,#09,S006)
  c99:  e9 7f 03                PULL            L02
  c9c:  f9 24 02 4d 03 01 0b 8b CALL_VN         934 (L02,#01,S007)
  ca4:  0d 10 03                STORE           G00,#03
  ca7:  96 10                   DEC             G00
  ca9:  f9 24 02 4d 10 02 0b 8c CALL_VN         934 (G00,#02,S008)
  cb1:  b2 ...                  PRINT           "inc"
  cb4:  f9 17 03 80 05 06       CALL_VN         e00 (#05,#06)
  cba:  f9 07 03 80 ff ff 00    CALL_VN         e00 (#ffff,#00)
  cc1:  f9 03 03 80 ff f8 ff f9 CALL_VN         e00 (#fff8,#fff9)
  cc9:  f9 03 03 80 7f ff 80 00 CALL_VN         e00 (#7fff,#8000)
  cd1:  e8 7f 01                PUSH            #01
  cd4:  e8 7f 0a                PUSH            #0a
  cd7:  95 00                   INC             (SP)+
  cd9:  e9 7f 03                PULL            L02
  cdc:  f9 24 02 4d 03 0b 0b 8e CALL_VN         934 (L02,#0b,S009)
  ce4:  e9 7f 03                PULL            L02
  ce7:  f9 24 02 4d 03 01 0b 8f CALL_VN         934 (L02,#01,S010)
  cef:  0d 10 03                STORE           G00,#03
  cf2:  95 10                   INC             G00
  cf4:  f9 24 02 4d 10 04 0b 90 CALL_VN         934 (G00,#04,S011)
  cfc:  b2 ...                  PRINT           "
    dec_chk"
  d07:  0d 03 03                STORE           L02,#03
  d0a:  c4 4f 03 03 e8 00 69    DEC_CHK         L02,#03e8 [FALSE] d78
  d11:  8f 02 8c                CALL_1N         a30
  d14:  04 03 01 80 61          DEC_CHK         L02,#01 [TRUE] d78
  d19:  8f 02 8c                CALL_1N         a30
  d1c:  04 03 01 00 59          DEC_CHK         L02,#01 [FALSE] d78
  d21:  8f 02 8c                CALL_1N         a30
  d24:  04 03 00 00 51          DEC_CHK         L02,#00 [FALSE] d78
  d29:  8f 02 8c                CALL_1N         a30
  d2c:  c4 4f 03 ff fe 80 47    DEC_CHK         L02,#fffe [TRUE] d78
  d33:  8f 02 8c                CALL_1N         a30
  d36:  c4 4f 03 ff fe 00 3d    DEC_CHK         L02,#fffe [FALSE] d78
  d3d:  8f 02 8c                CALL_1N         a30
  d40:  c4 4f 03 03 e8 74       DEC_CHK         L02,#03e8 [FALSE] d78
  d46:  8f 02 8c                CALL_1N         a30
  d49:  c4 4f 03 fe 0c eb       DEC_CHK         L02,#fe0c [TRUE] d78
  d4f:  8f 02 8c                CALL_1N         a30
  d52:  e8 7f 01                PUSH            #01
  d55:  e8 7f 0a                PUSH            #0a
  d58:  04 00 05 de             DEC_CHK         (SP)+,#05 [TRUE] d78
  d5c:  8f 02 8c                CALL_1N         a30
  d5f:  e9 7f 03                PULL            L02
  d62:  f9 24 02 4d 03 09 0b 92 CALL_VN         934 (L02,#09,S012)
  d6a:  e9 7f 03                PULL            L02
  d6d:  f9 24 02 4d 03 01 0b 94 CALL_VN         934 (L02,#01,S013)
  d75:  8c 00 16                JUMP            d8c
  d78:  b2 ...                  PRINT           "
bad ["
  d81:  e6 bf 11                PRINT_NUM       G01
  d84:  b2 ...                  PRINT           "]
"
  d89:  8f 02 8f                CALL_1N         a3c
  d8c:  b2 ...                  PRINT           "inc_chk"
  d93:  cd 4f 03 ff fa          STORE           L02,#fffa
  d98:  c5 4f 03 fe 0c 00 49    INC_CHK         L02,#fe0c [FALSE] de6
  d9f:  8f 02 8c                CALL_1N         a30
  da2:  c5 4f 03 03 e8 80 3f    INC_CHK         L02,#03e8 [TRUE] de6
  da9:  8f 02 8c                CALL_1N         a30
  dac:  c5 4f 03 ff fd f6       INC_CHK         L02,#fffd [TRUE] de6
  db2:  8f 02 8c                CALL_1N         a30
  db5:  c5 4f 03 ff fd 6d       INC_CHK         L02,#fffd [FALSE] de6
  dbb:  8f 02 8c                CALL_1N         a30
  dbe:  05 03 00 e6             INC_CHK         L02,#00 [TRUE] de6
  dc2:  8f 02 8c                CALL_1N         a30
  dc5:  05 03 01 df             INC_CHK         L02,#01 [TRUE] de6
  dc9:  8f 02 8c                CALL_1N         a30
  dcc:  05 03 01 d8             INC_CHK         L02,#01 [TRUE] de6
  dd0:  8f 02 8c                CALL_1N         a30
  dd3:  05 03 01 51             INC_CHK         L02,#01 [FALSE] de6
  dd7:  8f 02 8c                CALL_1N         a30
  dda:  c5 4f 03 03 e8 c8       INC_CHK         L02,#03e8 [TRUE] de6
  de0:  8f 02 8c                CALL_1N         a30
  de3:  8c 00 18                JUMP            dfc
  de6:  b2 ...                  PRINT           "
bad ["
  def:  e6 bf 11                PRINT_NUM       G01
  df2:  b2 ...                  PRINT           "]!
"
  df9:  8f 02 8f                CALL_1N         a3c
  dfc:  b0                      RTRUE           

Routine e00, 2 locals

  e01:  2d 16 01                STORE           G06,L00
  e04:  95 01                   INC             L00
  e06:  f9 28 02 61 01 02 0b 96 CALL_VN         984 (L00,L01,S014)
  e0e:  b0                      RTRUE           

Routine e10, 2 locals

  e11:  2d 16 01                STORE           G06,L00
  e14:  96 01                   DEC             L00
  e16:  f9 28 02 61 01 02 0b 98 CALL_VN         984 (L00,L01,S015)
  e1e:  b0                      RTRUE           

Routine e20, 1 local

  e21:  b2 ...                  PRINT           "Arithmetic ops"
  e2c:  a0 01 ca                JZ              L00 [TRUE] e37
  e2f:  b2 ...                  PRINT           " skipped"
  e36:  b1                      RFALSE          
  e37:  b2 ...                  PRINT           " ["
  e3c:  54 11 01 00             ADD             G01,#01 -> -(SP)
  e40:  e6 bf 00                PRINT_NUM       (SP)+
  e43:  b2 ...                  PRINT           "]: "
  e4a:  b2 ...                  PRINT           "add"
  e4d:  f9 15 03 f3 05 03 08    CALL_VN         fcc (#05,#03,#08)
  e54:  f9 15 03 f3 03 05 08    CALL_VN         fcc (#03,#05,#08)
  e5b:  f9 04 03 f3 ff fb 03 ff fe 
                               CALL_VN         fcc (#fffb,#03,#fffe)
  e64:  f9 00 03 f3 ff fb ff fd ff f8 
                               CALL_VN         fcc (#fffb,#fffd,#fff8)
  e6e:  f9 00 03 f3 ff fd ff fb ff f8 
                               CALL_VN         fcc (#fffd,#fffb,#fff8)
  e78:  f9 05 03 f3 ff fd 05 02 CALL_VN         fcc (#fffd,#05,#02)
  e80:  f9 04 03 f3 7f fd 06 80 03 
                               CALL_VN         fcc (#7ffd,#06,#8003)
  e89:  b2 ...                  PRINT           "sub"
  e8c:  f9 15 03 f8 08 05 03    CALL_VN         fe0 (#08,#05,#03)
  e93:  f9 15 03 f8 08 03 05    CALL_VN         fe0 (#08,#03,#05)
  e9a:  f9 01 03 f8 ff fe ff fb 03 
                               CALL_VN         fe0 (#fffe,#fffb,#03)
  ea3:  f9 00 03 f8 ff f8 ff fb ff fd 
                               CALL_VN         fe0 (#fff8,#fffb,#fffd)
  ead:  f9 00 03 f8 ff f8 ff fd ff fb 
                               CALL_VN         fe0 (#fff8,#fffd,#fffb)
  eb7:  f9 11 03 f8 02 ff fd 05 CALL_VN         fe0 (#02,#fffd,#05)
  ebf:  f9 01 03 f8 80 03 7f fd 06 
                               CALL_VN         fe0 (#8003,#7ffd,#06)
  ec8:  b2 ...                  PRINT           "
    mul"
  ecf:  f9 15 03 fd 00 7b 00    CALL_VN         ff4 (#00,#7b,#00)
  ed6:  f9 15 03 fd 7b 00 00    CALL_VN         ff4 (#7b,#00,#00)
  edd:  f9 15 03 fd 08 09 48    CALL_VN         ff4 (#08,#09,#48)
  ee4:  f9 15 03 fd 09 08 48    CALL_VN         ff4 (#09,#08,#48)
  eeb:  f9 10 03 fd 0b ff fb ff c9 
                               CALL_VN         ff4 (#0b,#fffb,#ffc9)
  ef4:  f9 04 03 fd ff f5 05 ff c9 
                               CALL_VN         ff4 (#fff5,#05,#ffc9)
  efd:  f9 01 03 fd ff f5 ff fb 37 
                               CALL_VN         ff4 (#fff5,#fffb,#37)
  f06:  f9 00 03 fd 80 00 ff ff 80 00 
                               CALL_VN         ff4 (#8000,#ffff,#8000)
  f10:  b2 ...                  PRINT           "div"
  f13:  f9 04 04 02 ff f5 02 ff fb 
                               CALL_VN         1008 (#fff5,#02,#fffb)
  f1c:  f9 01 04 02 ff f5 ff fe 05 
                               CALL_VN         1008 (#fff5,#fffe,#05)
  f25:  f9 10 04 02 0b ff fe ff fb 
                               CALL_VN         1008 (#0b,#fffe,#fffb)
  f2e:  f9 15 04 02 05 01 05    CALL_VN         1008 (#05,#01,#05)
  f35:  f9 15 04 02 05 02 02    CALL_VN         1008 (#05,#02,#02)
  f3c:  f9 15 04 02 05 03 01    CALL_VN         1008 (#05,#03,#01)
  f43:  f9 15 04 02 05 05 01    CALL_VN         1008 (#05,#05,#01)
  f4a:  f9 15 04 02 05 06 00    CALL_VN         1008 (#05,#06,#00)
  f51:  f9 11 04 02 05 7f ff 00 CALL_VN         1008 (#05,#7fff,#00)
  f59:  f9 01 04 02 7f ff 80 00 00 
                               CALL_VN         1008 (#7fff,#8000,#00)
  f62:  f9 00 04 02 80 00 7f ff ff ff 
                               CALL_VN         1008 (#8000,#7fff,#ffff)
  f6c:  b2 ...                  PRINT           "mod"
  f6f:  f9 04 04 07 ff f3 05 ff fd 
                               CALL_VN         101c (#fff3,#05,#fffd)
  f78:  f9 11 04 07 0d ff fb 03 CALL_VN         101c (#0d,#fffb,#03)
  f80:  f9 00 04 07 ff f3 ff fb ff fd 
                               CALL_VN         101c (#fff3,#fffb,#fffd)
  f8a:  f9 15 04 07 05 01 00    CALL_VN         101c (#05,#01,#00)
  f91:  f9 15 04 07 05 02 01    CALL_VN         101c (#05,#02,#01)
  f98:  f9 15 04 07 05 03 02    CALL_VN         101c (#05,#03,#02)
  f9f:  f9 15 04 07 05 05 00    CALL_VN         101c (#05,#05,#00)
  fa6:  f9 15 04 07 05 06 05    CALL_VN         101c (#05,#06,#05)
  fad:  f9 11 04 07 05 7f ff 05 CALL_VN         101c (#05,#7fff,#05)
  fb5:  f9 00 04 07 7f ff 80 00 7f ff 
                               CALL_VN         101c (#7fff,#8000,#7fff)
  fbf:  f9 00 04 07 80 00 7f ff ff ff 
                               CALL_VN         101c (#8000,#7fff,#ffff)
  fc9:  b0                      RTRUE           

Routine fcc, 4 locals

  fcd:  74 01 02 04             ADD             L00,L01 -> L03
  fd1:  2d 16 01                STORE           G06,L00
  fd4:  2d 17 02                STORE           G07,L01
  fd7:  f9 28 02 75 04 03 0b 99 CALL_VN         9d4 (L03,L02,S016)
  fdf:  b0                      RTRUE           

Routine fe0, 4 locals

  fe1:  75 01 02 04             SUB             L00,L01 -> L03
  fe5:  2d 16 01                STORE           G06,L00
  fe8:  2d 17 02                STORE           G07,L01
  feb:  f9 28 02 75 04 03 0b 9a CALL_VN         9d4 (L03,L02,S017)
  ff3:  b0                      RTRUE           

Routine ff4, 4 locals

  ff5:  76 01 02 04             MUL             L00,L01 -> L03
  ff9:  2d 16 01                STORE           G06,L00
  ffc:  2d 17 02                STORE           G07,L01
  fff:  f9 28 02 75 04 03 0b 9b CALL_VN         9d4 (L03,L02,S018)
 1007:  b0                      RTRUE           

Routine 1008, 4 locals

 1009:  77 01 02 04             DIV             L00,L01 -> L03
 100d:  2d 16 01                STORE           G06,L00
 1010:  2d 17 02                STORE           G07,L01
 1013:  f9 28 02 75 04 03 0b 9c CALL_VN         9d4 (L03,L02,S019)
 101b:  b0                      RTRUE           

Routine 101c, 4 locals

 101d:  78 01 02 04             MOD             L00,L01 -> L03
 1021:  2d 16 01                STORE           G06,L00
 1024:  2d 17 02                STORE           G07,L01
 1027:  f9 28 02 75 04 03 0b 9d CALL_VN         9d4 (L03,L02,S020)
 102f:  b0                      RTRUE           

Routine 1030, 1 local

 1031:  b2 ...                  PRINT           "Logical ops"
 103a:  a0 01 ca                JZ              L00 [TRUE] 1045
 103d:  b2 ...                  PRINT           " skipped"
 1044:  b1                      RFALSE          
 1045:  b2 ...                  PRINT           " ["
 104a:  54 11 01 00             ADD             G01,#01 -> -(SP)
 104e:  e6 bf 00                PRINT_NUM       (SP)+
 1051:  b2 ...                  PRINT           "]: "
 1058:  b2 ...                  PRINT           "not"
 105b:  f9 13 04 68 00 ff ff    CALL_VN         11a0 (#00,#ffff)
 1062:  f9 13 04 68 7b ff 84    CALL_VN         11a0 (#7b,#ff84)
 1069:  f9 03 04 68 55 55 aa aa CALL_VN         11a0 (#5555,#aaaa)
 1071:  f9 03 04 68 aa aa 55 55 CALL_VN         11a0 (#aaaa,#5555)
 1079:  b2 ...                  PRINT           "and"
 107c:  f9 15 04 6d 05 03 01    CALL_VN         11b4 (#05,#03,#01)
 1083:  f9 15 04 6d 03 05 01    CALL_VN         11b4 (#03,#05,#01)
 108a:  f9 00 04 6d ff fd ff fd ff fd 
                               CALL_VN         11b4 (#fffd,#fffd,#fffd)
 1094:  f9 05 04 6d ff fd 05 05 CALL_VN         11b4 (#fffd,#05,#05)
 109c:  f9 00 04 6d ff fd ff fb ff f9 
                               CALL_VN         11b4 (#fffd,#fffb,#fff9)
 10a6:  b2 ...                  PRINT           "or"
 10a9:  f9 00 04 72 12 34 43 21 53 35 
                               CALL_VN         11c8 (#1234,#4321,#5335)
 10b3:  f9 00 04 72 43 21 12 34 53 35 
                               CALL_VN         11c8 (#4321,#1234,#5335)
 10bd:  f9 04 04 72 12 34 00 12 34 
                               CALL_VN         11c8 (#1234,#00,#1234)
 10c6:  f9 00 04 72 10 30 ff ff ff ff 
                               CALL_VN         11c8 (#1030,#ffff,#ffff)
 10d0:  f9 00 04 72 ff ff 02 04 ff ff 
                               CALL_VN         11c8 (#ffff,#0204,#ffff)
 10da:  b2 ...                  PRINT           "art_shift"
 10e3:  f9 15 04 5c 00 01 00    CALL_VN         1170 (#00,#01,#00)
 10ea:  f9 11 04 5c 00 ff ff 00 CALL_VN         1170 (#00,#ffff,#00)
 10f2:  f9 15 04 5c 01 05 20    CALL_VN         1170 (#01,#05,#20)
 10f9:  f9 11 04 5c 01 ff ff 00 CALL_VN         1170 (#01,#ffff,#00)
 1101:  f9 15 04 5c 55 01 aa    CALL_VN         1170 (#55,#01,#aa)
 1108:  f9 11 04 5c 55 ff fe 15 CALL_VN         1170 (#55,#fffe,#15)
 1110:  f9 04 04 5c ff f7 05 fe e0 
                               CALL_VN         1170 (#fff7,#05,#fee0)
 1119:  f9 00 04 5c ff f7 ff fb ff ff 
                               CALL_VN         1170 (#fff7,#fffb,#ffff)
 1123:  b2 ...                  PRINT           "log_shift"
 112c:  f9 15 04 62 00 01 00    CALL_VN         1188 (#00,#01,#00)
 1133:  f9 11 04 62 00 ff ff 00 CALL_VN         1188 (#00,#ffff,#00)
 113b:  f9 15 04 62 01 05 20    CALL_VN         1188 (#01,#05,#20)
 1142:  f9 11 04 62 01 ff ff 00 CALL_VN         1188 (#01,#ffff,#00)
 114a:  f9 15 04 62 55 01 aa    CALL_VN         1188 (#55,#01,#aa)
 1151:  f9 11 04 62 55 ff fe 15 CALL_VN         1188 (#55,#fffe,#15)
 1159:  f9 04 04 62 ff f7 05 fe e0 
                               CALL_VN         1188 (#fff7,#05,#fee0)
 1162:  f9 00 04 62 ff f7 ff fb 07 ff 
                               CALL_VN         1188 (#fff7,#fffb,#07ff)
 116c:  b0                      RTRUE           

Routine 1170, 4 locals

 1171:  be 03 af 01 02 04       ART_SHIFT       L00,L01 -> L03
 1177:  2d 16 01                STORE           G06,L00
 117a:  2d 17 02                STORE           G07,L01
 117d:  f9 28 02 75 04 03 0b 9e CALL_VN         9d4 (L03,L02,S021)
 1185:  b0                      RTRUE           

Routine 1188, 4 locals

 1189:  be 02 af 01 02 04       LOG_SHIFT       L00,L01 -> L03
 118f:  2d 16 01                STORE           G06,L00
 1192:  2d 17 02                STORE           G07,L01
 1195:  f9 28 02 75 04 03 0b a0 CALL_VN         9d4 (L03,L02,S022)
 119d:  b0                      RTRUE           

Routine 11a0, 3 locals

 11a1:  f8 bf 01 03             NOT             L00 -> L02
 11a5:  2d 16 01                STORE           G06,L00
 11a8:  f9 28 02 61 03 02 0b a2 CALL_VN         984 (L02,L01,S023)
 11b0:  b0                      RTRUE           

Routine 11b4, 4 locals

 11b5:  69 01 02 04             AND             L00,L01 -> L03
 11b9:  2d 16 01                STORE           G06,L00
 11bc:  2d 17 02                STORE           G07,L01
 11bf:  f9 28 02 75 04 03 0b a3 CALL_VN         9d4 (L03,L02,S024)
 11c7:  b0                      RTRUE           

Routine 11c8, 4 locals

 11c9:  68 01 02 04             OR              L00,L01 -> L03
 11cd:  2d 16 01                STORE           G06,L00
 11d0:  2d 17 02                STORE           G07,L01
 11d3:  f9 28 02 75 04 03 0b a4 CALL_VN         9d4 (L03,L02,S025)
 11db:  b0                      RTRUE           

Routine 11dc, 5 locals

 11dd:  b2 ...                  PRINT           "Memory"
 11e4:  a0 01 ca                JZ              L00 [TRUE] 11ef
 11e7:  b2 ...                  PRINT           " skipped"
 11ee:  b1                      RFALSE          
 11ef:  b2 ...                  PRINT           " ["
 11f4:  54 11 01 00             ADD             G01,#01 -> -(SP)
 11f8:  e6 bf 00                PRINT_NUM       (SP)+
 11fb:  b2 ...                  PRINT           "]: "
 1202:  b2 ...                  PRINT           "loadw"
 1207:  0f 00 02 02             LOADW           #00,#02 -> L01
 120b:  0f 00 03 03             LOADW           #00,#03 -> L02
 120f:  54 02 01 04             ADD             L01,#01 -> L03
 1213:  f9 2b 02 4d 03 04       CALL_VN         934 (L02,L03)
 1219:  b2 ...                  PRINT           "loadb"
 121e:  10 00 04 03             LOADB           #00,#04 -> L02
 1222:  10 00 05 04             LOADB           #00,#05 -> L03
 1226:  d6 8f 03 01 00 00       MUL             L02,#0100 -> -(SP)
 122c:  74 00 04 04             ADD             (SP)+,L03 -> L03
 1230:  f9 2b 02 4d 02 04       CALL_VN         934 (L01,L03)
 1236:  d0 1f 08 22 00 05       LOADB           #0822,#00 -> L04
 123c:  f9 27 02 4d 05 00       CALL_VN         934 (L04,#00)
 1242:  b2 ...                  PRINT           "storeb"
 1247:  e2 17 08 22 00 7b       STOREB          #0822,#00,#7b
 124d:  d0 1f 08 22 00 05       LOADB           #0822,#00 -> L04
 1253:  f9 27 02 4d 05 7b       CALL_VN         934 (L04,#7b)
 1259:  cf 1f 08 22 00 05       LOADW           #0822,#00 -> L04
 125f:  f9 20 02 4d 05 7b 00 0b a5 
                               CALL_VN         934 (L04,#7b00,S026)
 1268:  b2 ...                  PRINT           "storew"
 126d:  e1 13 08 22 05 12 34    STOREW          #0822,#05,#1234
 1274:  cf 1f 08 22 05 05       LOADW           #0822,#05 -> L04
 127a:  f9 23 02 4d 05 12 34    CALL_VN         934 (L04,#1234)
 1281:  d0 1f 08 22 0a 05       LOADB           #0822,#0a -> L04
 1287:  f9 24 02 4d 05 12 0b a9 CALL_VN         934 (L04,#12,S027)
 128f:  d0 1f 08 22 0b 05       LOADB           #0822,#0b -> L04
 1295:  f9 24 02 4d 05 34 0b ae CALL_VN         934 (L04,#34,S028)
 129d:  b0                      RTRUE           

Routine 12a0, 2 locals

 12a1:  b2 ...                  PRINT           "


"
 12a6:  b2 ...                  PRINT           "Print opcodes"
 12b1:  a0 01 ca                JZ              L00 [TRUE] 12bc
 12b4:  b2 ...                  PRINT           " skipped"
 12bb:  b1                      RFALSE          
 12bc:  b2 ...                  PRINT           " ["
 12c1:  54 11 01 00             ADD             G01,#01 -> -(SP)
 12c5:  e6 bf 00                PRINT_NUM       (SP)+
 12c8:  b2 ...                  PRINT           "]: "
 12cf:  b2 ...                  PRINT           "Tests should look like...
'[Test] opcode (stuff): stuff'"
 1300:  b2 ...                  PRINT           "
print_num (0, 1, -1, 32767,-32768, -1): "
 132f:  8f 02 8a                CALL_1N         a28
 1332:  e6 7f 00                PRINT_NUM       #00
 1335:  b2 ...                  PRINT           ", "
 1338:  0d 02 01                STORE           L01,#01
 133b:  e6 bf 02                PRINT_NUM       L01
 133e:  b2 ...                  PRINT           ", "
 1341:  8f 02 8a                CALL_1N         a28
 1344:  e6 3f ff ff             PRINT_NUM       #ffff
 1348:  b2 ...                  PRINT           ", "
 134b:  8f 02 8a                CALL_1N         a28
 134e:  e6 3f 7f ff             PRINT_NUM       #7fff
 1352:  b2 ...                  PRINT           ", "
 1355:  8f 02 8a                CALL_1N         a28
 1358:  e6 3f 80 00             PRINT_NUM       #8000
 135c:  b2 ...                  PRINT           ", "
 135f:  8f 02 8a                CALL_1N         a28
 1362:  cd 4f 02 ff ff          STORE           L01,#ffff
 1367:  e6 bf 02                PRINT_NUM       L01
 136a:  8f 02 8a                CALL_1N         a28
 136d:  b2 ...                  PRINT           "
["
 1372:  54 11 01 00             ADD             G01,#01 -> -(SP)
 1376:  e6 bf 00                PRINT_NUM       (SP)+
 1379:  b2 ...                  PRINT           "] "
 137e:  b2 ...                  PRINT           "print_char (abcd): "
 138f:  e5 7f 61                PRINT_CHAR      'a'
 1392:  8f 02 8a                CALL_1N         a28
 1395:  e5 7f 62                PRINT_CHAR      'b'
 1398:  8f 02 8a                CALL_1N         a28
 139b:  0d 02 63                STORE           L01,#63
 139e:  e5 bf 02                PRINT_CHAR      L01
 13a1:  8f 02 8a                CALL_1N         a28
 13a4:  e8 7f 64                PUSH            #64
 13a7:  8f 02 8a                CALL_1N         a28
 13aa:  e5 bf 00                PRINT_CHAR      (SP)+
 13ad:  b2 ...                  PRINT           "
["
 13b2:  54 11 01 00             ADD             G01,#01 -> -(SP)
 13b6:  e6 bf 00                PRINT_NUM       (SP)+
 13b9:  b2 ...                  PRINT           "] "
 13be:  b2 ...                  PRINT           "new_line:
"
 13c9:  8f 02 8a                CALL_1N         a28
 13cc:  bb                      NEW_LINE        
 13cd:  b2 ...                  PRINT           "There should be an empty line
above this line.
"
 13f0:  88 05 f8 02             CALL_1S         17e0 -> L01
 13f4:  8f 02 8a                CALL_1N         a28
 13f7:  f9 27 02 4d 02 01       CALL_VN         934 (L01,#01)
 13fd:  b2 ...                  PRINT           "
print_addr (Hello.): "
 1412:  8f 02 8a                CALL_1N         a28
 1415:  e1 13 08 22 00 11 aa    STOREW          #0822,#00,#11aa
 141c:  e1 13 08 22 01 46 34    STOREW          #0822,#01,#4634
 1423:  e1 13 08 22 02 16 45    STOREW          #0822,#02,#1645
 142a:  e1 13 08 22 03 9c a5    STOREW          #0822,#03,#9ca5
 1431:  87 08 22                PRINT_ADDR      #0822
 1434:  b2 ...                  PRINT           "
print_paddr (A long string that Inform will put in high memory):
"
 1467:  8f 02 8a                CALL_1N         a28
 146a:  8d 0b b3                PRINT_PADDR     S029
 146d:  b2 ...                  PRINT           "
Abbreviations (I love 'xyz"
 1484:  b2 ...                  PRINT           "zy' [two times]): "
 1497:  8f 02 8a                CALL_1N         a28
 149a:  cd 4f 02 0b bc          STORE           L01,S030
 149f:  ad 02                   PRINT_PADDR     L01
 14a1:  8f 02 8a                CALL_1N         a28
 14a4:  b2 ...                  PRINT           " I love 'xyzzy'
"
 14b1:  b2 ...                  PRINT           "
["
 14b6:  54 11 01 00             ADD             G01,#01 -> -(SP)
 14ba:  e6 bf 00                PRINT_NUM       (SP)+
 14bd:  b2 ...                  PRINT           "] "
 14c2:  b2 ...                  PRINT           "print_obj (Test Object #1Test
Object #2): "
 14e7:  8f 02 8a                CALL_1N         a28
 14ea:  8a 00 05                PRINT_OBJ       "Test Object #1"
 14ed:  8f 02 8a                CALL_1N         a28
 14f0:  8a 00 06                PRINT_OBJ       "Test Object #2"
 14f3:  b0                      RTRUE           

Routine 14f4, 3 locals

 14f5:  b2 ...                  PRINT           "Subroutines"
 14fe:  a0 01 ca                JZ              L00 [TRUE] 1509
 1501:  b2 ...                  PRINT           " skipped"
 1508:  b1                      RFALSE          
 1509:  bb                      NEW_LINE        
 150a:  b2 ...                  PRINT           " ["
 150f:  54 11 01 00             ADD             G01,#01 -> -(SP)
 1513:  e6 bf 00                PRINT_NUM       (SP)+
 1516:  b2 ...                  PRINT           "]: "
 151d:  0d 02 00                STORE           L01,#00
 1520:  0d 15 00                STORE           G05,#00
 1523:  b2 ...                  PRINT           "call_1s"
 152a:  0d 15 02                STORE           G05,#02
 152d:  88 05 e4 02             CALL_1S         1790 -> L01
 1531:  f9 27 02 4d 15 03       CALL_VN         934 (G05,#03)
 1537:  b2 ...                  PRINT           "call_2s"
 153e:  d9 1f 05 e6 06 02       CALL_2S         1798 (#06) -> L01
 1544:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
 154a:  b2 ...                  PRINT           "call_vs2"
 1553:  0d 02 00                STORE           L01,#00
 1556:  ec 15 55 05 e9 01 02 03 04 05 06 07 02 
                               CALL_VS2        17a4
(#01,#02,#03,#04,#05,#06,#07) -> L01
 1563:  bb                      NEW_LINE        
 1564:  f9 27 02 4d 15 09       CALL_VN         934 (G05,#09)
 156a:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
 1570:  bb                      NEW_LINE        
 1571:  b2 ...                  PRINT           "call_vs"
 1578:  0d 02 00                STORE           L01,#00
 157b:  e0 15 05 f0 01 02 03 02 CALL_VS         17c0 (#01,#02,#03) -> L01
 1583:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
 1589:  f9 27 02 4d 15 07       CALL_VN         934 (G05,#07)
 158f:  b2 ...                  PRINT           "ret"
 1592:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
 1598:  b2 ...                  PRINT           "
    call_1n"
 15a3:  8f 05 d4                CALL_1N         1750
 15a6:  f9 27 02 4d 15 01       CALL_VN         934 (G05,#01)
 15ac:  b2 ...                  PRINT           "call_2n"
 15b3:  da 1f 05 d6 06          CALL_2N         1758 (#06)
 15b8:  f9 27 02 4d 15 05       CALL_VN         934 (G05,#05)
 15be:  b2 ...                  PRINT           "call_vn"
 15c5:  f9 15 05 d9 01 02 03    CALL_VN         1764 (#01,#02,#03)
 15cc:  f9 27 02 4d 15 0a       CALL_VN         934 (G05,#0a)
 15d2:  b2 ...                  PRINT           "call_vn2"
 15db:  fa 15 55 05 dd 01 02 03 04 05 06 07 
                               CALL_VN2        1774
(#01,#02,#03,#04,#05,#06,#07)
 15e7:  f9 27 02 4d 15 0b       CALL_VN         934 (G05,#0b)
 15ed:  b2 ...                  PRINT           "
    "
 15f2:  b2 ...                  PRINT           "rtrue"
 15f7:  0d 02 02                STORE           L01,#02
 15fa:  88 05 f6 02             CALL_1S         17d8 -> L01
 15fe:  f9 27 02 4d 02 01       CALL_VN         934 (L01,#01)
 1604:  0d 02 02                STORE           L01,#02
 1607:  b2 ...                  PRINT           "rfalse"
 160c:  88 05 f7 02             CALL_1S         17dc -> L01
 1610:  f9 27 02 4d 02 00       CALL_VN         934 (L01,#00)
 1616:  88 06 00 02             CALL_1S         1800 -> L01
 161a:  f9 24 02 4d 02 05 0b bf CALL_VN         934 (L01,#05,S031)
 1622:  b2 ...                  PRINT           "
    Computed call"
 1631:  0d 02 01                STORE           L01,#01
 1634:  cd 4f 03 06 04          STORE           L02,#0604
 1639:  a8 03 02                CALL_1S         L02 -> L01
 163c:  f9 27 02 4d 02 05       CALL_VN         934 (L01,#05)
 1642:  e8 7f 01                PUSH            #01
 1645:  e8 3f 06 05             PUSH            #0605
 1649:  a8 00 02                CALL_1S         (SP)+ -> L01
 164c:  f9 27 02 4d 02 06       CALL_VN         934 (L01,#06)
 1652:  e9 7f 02                PULL            L01
 1655:  f9 27 02 4d 02 01       CALL_VN         934 (L01,#01)
 165b:  b2 ...                  PRINT           "
    check_arg_count"
 166c:  0d 10 00                STORE           G00,#00
 166f:  8f 05 b1                CALL_1N         16c4
 1672:  0d 10 01                STORE           G00,#01
 1675:  da 1f 05 b1 01          CALL_2N         16c4 (#01)
 167a:  0d 10 02                STORE           G00,#02
 167d:  f9 17 05 b1 02 01       CALL_VN         16c4 (#02,#01)
 1683:  0d 10 03                STORE           G00,#03
 1686:  f9 15 05 b1 03 02 01    CALL_VN         16c4 (#03,#02,#01)
 168d:  0d 10 04                STORE           G00,#04
 1690:  fa 15 7f 05 b1 04 03 02 01 
                               CALL_VN2        16c4 (#04,#03,#02,#01)
 1699:  0d 10 05                STORE           G00,#05
 169c:  fa 15 5f 05 b1 05 04 03 02 01 
                               CALL_VN2        16c4 (#05,#04,#03,#02,#01)
 16a6:  0d 10 06                STORE           G00,#06
 16a9:  fa 15 57 05 b1 06 05 04 03 02 01 
                               CALL_VN2        16c4 (#06,#05,#04,#03,#02,#01)
 16b4:  0d 10 07                STORE           G00,#07
 16b7:  fa 15 55 05 b1 07 06 05 04 03 02 01 
                               CALL_VN2        16c4
(#07,#06,#05,#04,#03,#02,#01)
 16c3:  b0                      RTRUE           

Routine 16c4, 8 locals

 16c5:  0d 08 01                STORE           L07,#01
 16c8:  63 08 10 cb             JG              L07,G00 [TRUE] 16d5
 16cc:  ff bf 08 70             CHECK_ARG_COUNT L07 [FALSE] 16fe
 16d0:  95 08                   INC             L07
 16d2:  8c ff f5                JUMP            16c8
 16d5:  8f 02 8c                CALL_1N         a30
 16d8:  43 08 07 cb             JG              L07,#07 [TRUE] 16e5
 16dc:  ff bf 08 e0             CHECK_ARG_COUNT L07 [TRUE] 16fe
 16e0:  95 08                   INC             L07
 16e2:  8c ff f5                JUMP            16d8
 16e5:  8f 02 8c                CALL_1N         a30
 16e8:  0d 06 00                STORE           L05,#00
 16eb:  2d 07 06                STORE           L06,L05
 16ee:  2d 05 07                STORE           L04,L06
 16f1:  2d 04 05                STORE           L03,L04
 16f4:  2d 03 04                STORE           L02,L03
 16f7:  2d 02 03                STORE           L01,L02
 16fa:  2d 01 02                STORE           L00,L01
 16fd:  b0                      RTRUE           
 16fe:  8f 02 8f                CALL_1N         a3c
 1701:  b2 ...                  PRINT           "
["
 1706:  e6 bf 11                PRINT_NUM       G01
 1709:  b2 ...                  PRINT           "] claimed argument "
 171a:  e6 bf 08                PRINT_NUM       L07
 171d:  b2 ...                  PRINT           " was "
 1722:  63 08 10 d8             JG              L07,G00 [TRUE] 173c
 1726:  b2 ...                  PRINT           "not given when it was.
"
 1739:  8c 00 15                JUMP            174f
 173c:  b2 ...                  PRINT           "given when it was not.
"
 174f:  b0                      RTRUE           

Routine 1750, 0 locals

 1751:  0d 15 01                STORE           G05,#01
 1754:  b0                      RTRUE           

Routine 1758, 1 local

 1759:  f9 27 02 4d 01 06       CALL_VN         934 (L00,#06)
 175f:  0d 15 05                STORE           G05,#05
 1762:  b0                      RTRUE           

Routine 1764, 3 locals

 1765:  2d 01 02                STORE           L00,L01
 1768:  f9 27 02 4d 03 03       CALL_VN         934 (L02,#03)
 176e:  0d 15 0a                STORE           G05,#0a
 1771:  b0                      RTRUE           

Routine 1774, 7 locals

 1775:  2d 05 06                STORE           L04,L05
 1778:  2d 04 05                STORE           L03,L04
 177b:  2d 03 04                STORE           L02,L03
 177e:  2d 02 03                STORE           L01,L02
 1781:  2d 01 02                STORE           L00,L01
 1784:  f9 27 02 4d 07 07       CALL_VN         934 (L06,#07)
 178a:  0d 15 0b                STORE           G05,#0b
 178d:  b0                      RTRUE           

Routine 1790, 0 locals

 1791:  0d 15 03                STORE           G05,#03
 1794:  9b 05                   RET             #05

Routine 1798, 1 local

 1799:  f9 27 02 4d 01 06       CALL_VN         934 (L00,#06)
 179f:  9b 05                   RET             #05

Routine 17a4, 7 locals

 17a5:  2d 05 06                STORE           L04,L05
 17a8:  2d 04 05                STORE           L03,L04
 17ab:  2d 03 04                STORE           L02,L03
 17ae:  2d 02 03                STORE           L01,L02
 17b1:  2d 01 02                STORE           L00,L01
 17b4:  f9 27 02 4d 07 07       CALL_VN         934 (L06,#07)
 17ba:  0d 15 09                STORE           G05,#09
 17bd:  9b 05                   RET             #05

Routine 17c0, 3 locals

 17c1:  f9 27 02 4d 01 01       CALL_VN         934 (L00,#01)
 17c7:  f9 27 02 4d 02 02       CALL_VN         934 (L01,#02)
 17cd:  f9 27 02 4d 03 03       CALL_VN         934 (L02,#03)
 17d3:  0d 15 07                STORE           G05,#07
 17d6:  9b 05                   RET             #05

Routine 17d8, 0 locals

 17d9:  b0                      RTRUE           

Routine 17dc, 0 locals

 17dd:  b1                      RFALSE          

Routine 17e0, 0 locals

 17e1:  b3 ...                  PRINT_RET       "print_ret (should have newline
after this)"

Routine 1800, 0 locals

 1801:  e8 7f 05                PUSH            #05
 1804:  b2 ...                  PRINT           "ret_popped"
 180d:  b8                      RET_POPPED      

Routine 1810, 0 locals

 1811:  9b 05                   RET             #05

Routine 1814, 0 locals

 1815:  9b 06                   RET             #06

Routine 1818, 1 local

 1819:  b2 ...                  PRINT           "Objects"
 1820:  a0 01 ca                JZ              L00 [TRUE] 182b
 1823:  b2 ...                  PRINT           " skipped"
 182a:  b1                      RFALSE          
 182b:  b2 ...                  PRINT           " ["
 1830:  54 11 01 00             ADD             G01,#01 -> -(SP)
 1834:  e6 bf 00                PRINT_NUM       (SP)+
 1837:  b2 ...                  PRINT           "]: "
 183e:  b2 ...                  PRINT           "get_parent"
 1847:  f9 17 06 ce 05 00       CALL_VN         1b38 (#05,#00)
 184d:  f9 17 06 ce 06 05       CALL_VN         1b38 (#06,#05)
 1853:  f9 17 06 ce 07 05       CALL_VN         1b38 (#07,#05)
 1859:  f9 17 06 ce 08 07       CALL_VN         1b38 (#08,#07)
 185f:  b2 ...                  PRINT           "get_sibling"
 1868:  f9 17 06 d1 05 00       CALL_VN         1b44 (#05,#00)
 186e:  f9 17 06 d1 06 07       CALL_VN         1b44 (#06,#07)
 1874:  f9 17 06 d1 07 00       CALL_VN         1b44 (#07,#00)
 187a:  f9 17 06 d1 08 00       CALL_VN         1b44 (#08,#00)
 1880:  b2 ...                  PRINT           "get_child"
 1889:  f9 17 06 d6 05 06       CALL_VN         1b58 (#05,#06)
 188f:  f9 17 06 d6 06 00       CALL_VN         1b58 (#06,#00)
 1895:  f9 17 06 d6 07 08       CALL_VN         1b58 (#07,#08)
 189b:  f9 17 06 d6 08 00       CALL_VN         1b58 (#08,#00)
 18a1:  b2 ...                  PRINT           "jin"
 18a4:  f9 15 06 db 05 06 00    CALL_VN         1b6c (#05,#06,#00)
 18ab:  f9 15 06 db 05 05 00    CALL_VN         1b6c (#05,#05,#00)
 18b2:  f9 15 06 db 06 05 01    CALL_VN         1b6c (#06,#05,#01)
 18b9:  f9 15 06 db 06 07 00    CALL_VN         1b6c (#06,#07,#00)
 18c0:  f9 15 06 db 07 05 01    CALL_VN         1b6c (#07,#05,#01)
 18c7:  f9 15 06 db 08 07 01    CALL_VN         1b6c (#08,#07,#01)
 18ce:  f9 15 06 db 08 05 00    CALL_VN         1b6c (#08,#05,#00)
 18d5:  b2 ...                  PRINT           "
    test_attr"
 18e2:  f9 15 06 e0 05 00 01    CALL_VN         1b80 (#05,#00,#01)
 18e9:  f9 15 06 e0 05 01 01    CALL_VN         1b80 (#05,#01,#01)
 18f0:  f9 15 06 e0 05 02 00    CALL_VN         1b80 (#05,#02,#00)
 18f7:  f9 15 06 e0 05 03 00    CALL_VN         1b80 (#05,#03,#00)
 18fe:  f9 15 06 e0 06 00 00    CALL_VN         1b80 (#06,#00,#00)
 1905:  f9 15 06 e0 06 02 01    CALL_VN         1b80 (#06,#02,#01)
 190c:  b2 ...                  PRINT           "set_attr"
 1913:  f9 17 06 e5 05 02       CALL_VN         1b94 (#05,#02)
 1919:  f9 17 06 e5 05 03       CALL_VN         1b94 (#05,#03)
 191f:  f9 17 06 e5 05 00       CALL_VN         1b94 (#05,#00)
 1925:  f9 17 06 e5 05 01       CALL_VN         1b94 (#05,#01)
 192b:  b2 ...                  PRINT           "clear_attr"
 1934:  f9 17 06 ea 06 02       CALL_VN         1ba8 (#06,#02)
 193a:  f9 17 06 ea 06 03       CALL_VN         1ba8 (#06,#03)
 1940:  f9 17 06 ea 06 00       CALL_VN         1ba8 (#06,#00)
 1946:  f9 17 06 ea 06 01       CALL_VN         1ba8 (#06,#01)
 194c:  b2 ...                  PRINT           "set/clear/test_attr"
 195d:  da 1f 06 ef 07          CALL_2N         1bbc (#07)
 1962:  b2 ...                  PRINT           "
    get_next_prop"
 1971:  f9 15 07 06 05 00 07    CALL_VN         1c18 (#05,#00,#07)
 1978:  f9 15 07 06 05 07 05    CALL_VN         1c18 (#05,#07,#05)
 197f:  f9 15 07 06 05 05 04    CALL_VN         1c18 (#05,#05,#04)
 1986:  f9 15 07 06 05 04 00    CALL_VN         1c18 (#05,#04,#00)
 198d:  f9 15 07 06 0a 00 08    CALL_VN         1c18 (#0a,#00,#08)
 1994:  f9 15 07 06 0a 08 00    CALL_VN         1c18 (#0a,#08,#00)
 199b:  b2 ...                  PRINT           "get_prop_len/get_prop_addr"
 19b2:  f9 15 07 0b 05 04 02    CALL_VN         1c2c (#05,#04,#02)
 19b9:  f9 15 07 0b 05 05 02    CALL_VN         1c2c (#05,#05,#02)
 19c0:  f9 15 07 0b 05 07 06    CALL_VN         1c2c (#05,#07,#06)
 19c7:  f9 15 07 0b 0a 08 02    CALL_VN         1c2c (#0a,#08,#02)
 19ce:  b2 ...                  PRINT           "
    get_prop"
 19d9:  f9 15 07 01 05 04 01    CALL_VN         1c04 (#05,#04,#01)
 19e0:  f9 15 07 01 05 05 02    CALL_VN         1c04 (#05,#05,#02)
 19e7:  f9 15 07 01 05 06 0d    CALL_VN         1c04 (#05,#06,#0d)
 19ee:  f9 15 07 01 06 07 04    CALL_VN         1c04 (#06,#07,#04)
 19f5:  f9 15 07 01 05 08 0f    CALL_VN         1c04 (#05,#08,#0f)
 19fc:  f9 15 07 01 0a 04 0b    CALL_VN         1c04 (#0a,#04,#0b)
 1a03:  f9 15 07 01 0a 05 0c    CALL_VN         1c04 (#0a,#05,#0c)
 1a0a:  f9 15 07 01 0a 06 0d    CALL_VN         1c04 (#0a,#06,#0d)
 1a11:  f9 15 07 01 0a 07 0e    CALL_VN         1c04 (#0a,#07,#0e)
 1a18:  f9 14 07 01 0a 08 27 10 CALL_VN         1c04 (#0a,#08,#2710)
 1a20:  b2 ...                  PRINT           "put_prop "
 1a29:  e3 57 05 04 02          PUT_PROP        "Test Object #1",#04,#02
 1a2e:  f9 15 07 01 05 04 02    CALL_VN         1c04 (#05,#04,#02)
 1a35:  e3 57 05 05 04          PUT_PROP        "Test Object #1",#05,#04
 1a3a:  f9 15 07 01 05 05 04    CALL_VN         1c04 (#05,#05,#04)
 1a41:  e3 57 06 07 08          PUT_PROP        "Test Object #2",#07,#08
 1a46:  f9 15 07 01 06 07 08    CALL_VN         1c04 (#06,#07,#08)
 1a4d:  e3 53 0a 08 13 88       PUT_PROP        "test of an object with a
shortname which is about as long as they get these days even though this one
only uses the first alphabet which means this is destined to be a runon
sentence since i am not using any punctuation or uppercase well i guess that
means this is more boring than it need be but it makes the size calculation
easier on me when i am writing this program and this mostly assumes your
zmachine is capabable of outputting text with correct zscii decoding because
after all if it could not then you probably would not even be running this
program because it would definitely be too boring to run something which cannot
even communicate its results to you when you really want to know what they are
abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrs the end",#08,#1388
 1a53:  f9 14 07 01 0a 08 13 88 CALL_VN         1c04 (#0a,#08,#1388)
 1a5b:  f9 15 07 01 05 06 0d    CALL_VN         1c04 (#05,#06,#0d)
 1a62:  f9 15 07 01 05 08 0f    CALL_VN         1c04 (#05,#08,#0f)
 1a69:  f9 15 07 01 0a 04 0b    CALL_VN         1c04 (#0a,#04,#0b)
 1a70:  f9 15 07 01 0a 05 0c    CALL_VN         1c04 (#0a,#05,#0c)
 1a77:  f9 15 07 01 0a 06 0d    CALL_VN         1c04 (#0a,#06,#0d)
 1a7e:  f9 15 07 01 0a 07 0e    CALL_VN         1c04 (#0a,#07,#0e)
 1a85:  b2 ...                  PRINT           "
    remove"
 1a8e:  99 07                   REMOVE_OBJ      "Test Object #3"
 1a90:  f9 17 06 ce 07 00       CALL_VN         1b38 (#07,#00)
 1a96:  f9 17 06 ce 08 07       CALL_VN         1b38 (#08,#07)
 1a9c:  b2 ...                  PRINT           "insert"
 1aa1:  0e 08 05                INSERT_OBJ      "Test Object #4","Test Object
#1"
 1aa4:  f9 17 06 ce 08 05       CALL_VN         1b38 (#08,#05)
 1aaa:  f9 17 06 d1 08 06       CALL_VN         1b44 (#08,#06)
 1ab0:  f9 17 06 d1 06 00       CALL_VN         1b44 (#06,#00)
 1ab6:  f9 17 06 d6 05 08       CALL_VN         1b58 (#05,#08)
 1abc:  0e 07 08                INSERT_OBJ      "Test Object #3","Test Object
#4"
 1abf:  f9 17 06 d6 08 07       CALL_VN         1b58 (#08,#07)
 1ac5:  f9 17 06 ce 07 08       CALL_VN         1b38 (#07,#08)
 1acb:  b2 ...                  PRINT           "
    Spec1.0 length-64 props"
 1ae4:  f9 15 07 06 09 00 08    CALL_VN         1c18 (#09,#00,#08)
 1aeb:  f9 15 07 06 09 08 06    CALL_VN         1c18 (#09,#08,#06)
 1af2:  f9 15 07 06 09 06 05    CALL_VN         1c18 (#09,#06,#05)
 1af9:  f9 15 07 06 09 05 04    CALL_VN         1c18 (#09,#05,#04)
 1b00:  f9 15 07 06 09 04 00    CALL_VN         1c18 (#09,#04,#00)
 1b07:  f9 15 07 0b 09 04 02    CALL_VN         1c2c (#09,#04,#02)
 1b0e:  f9 15 07 0b 09 05 06    CALL_VN         1c2c (#09,#05,#06)
 1b15:  f9 15 07 0b 09 06 3a    CALL_VN         1c2c (#09,#06,#3a)
 1b1c:  f9 15 07 0b 09 08 40    CALL_VN         1c2c (#09,#08,#40)
 1b23:  f9 15 07 01 09 04 01    CALL_VN         1c04 (#09,#04,#01)
 1b2a:  e3 57 09 04 03          PUT_PROP        "",#04,#03
 1b2f:  f9 15 07 01 09 04 03    CALL_VN         1c04 (#09,#04,#03)
 1b36:  b0                      RTRUE           

Routine 1b38, 3 locals

 1b39:  a3 01 03                GET_PARENT      L00 -> L02
 1b3c:  f9 2b 02 4d 03 02       CALL_VN         934 (L02,L01)
 1b42:  b0                      RTRUE           

Routine 1b44, 3 locals

 1b45:  a1 01 03 c8             GET_SIBLING     L00 -> L02 [TRUE] 1b4f
 1b49:  f9 27 02 4d 03 00       CALL_VN         934 (L02,#00)
 1b4f:  f9 2b 02 4d 03 02       CALL_VN         934 (L02,L01)
 1b55:  b0                      RTRUE           

Routine 1b58, 3 locals

 1b59:  a2 01 03 c8             GET_CHILD       L00 -> L02 [TRUE] 1b63
 1b5d:  f9 27 02 4d 03 00       CALL_VN         934 (L02,#00)
 1b63:  f9 2b 02 4d 03 02       CALL_VN         934 (L02,L01)
 1b69:  b0                      RTRUE           

Routine 1b6c, 3 locals

 1b6d:  66 01 02 c9             JIN             L00,L01 [TRUE] 1b78
 1b71:  f9 27 02 4d 03 00       CALL_VN         934 (L02,#00)
 1b77:  b0                      RTRUE           
 1b78:  f9 27 02 4d 03 01       CALL_VN         934 (L02,#01)
 1b7e:  b0                      RTRUE           

Routine 1b80, 3 locals

 1b81:  6a 01 02 c9             TEST_ATTR       L00,L01 [TRUE] 1b8c
 1b85:  f9 27 02 4d 03 00       CALL_VN         934 (L02,#00)
 1b8b:  b0                      RTRUE           
 1b8c:  f9 27 02 4d 03 01       CALL_VN         934 (L02,#01)
 1b92:  b0                      RTRUE           

Routine 1b94, 2 locals

 1b95:  6b 01 02                SET_ATTR        L00,L01
 1b98:  6a 01 02 c9             TEST_ATTR       L00,L01 [TRUE] 1ba3
 1b9c:  f9 17 02 4d 00 01       CALL_VN         934 (#00,#01)
 1ba2:  b0                      RTRUE           
 1ba3:  8f 02 8c                CALL_1N         a30
 1ba6:  b0                      RTRUE           

Routine 1ba8, 2 locals

 1ba9:  6c 01 02                CLEAR_ATTR      L00,L01
 1bac:  6a 01 02 49             TEST_ATTR       L00,L01 [FALSE] 1bb7
 1bb0:  f9 17 02 4d 01 00       CALL_VN         934 (#01,#00)
 1bb6:  b0                      RTRUE           
 1bb7:  8f 02 8c                CALL_1N         a30
 1bba:  b0                      RTRUE           

Routine 1bbc, 4 locals

 1bbd:  0d 04 30                STORE           L03,#30
 1bc0:  0d 03 00                STORE           L02,#00
 1bc3:  0d 02 00                STORE           L01,#00
 1bc6:  62 02 04 50             JL              L01,L03 [FALSE] 1bd8
 1bca:  6b 01 02                SET_ATTR        L00,L01
 1bcd:  6a 01 02 c4             TEST_ATTR       L00,L01 [TRUE] 1bd3
 1bd1:  95 03                   INC             L02
 1bd3:  95 02                   INC             L01
 1bd5:  8c ff f0                JUMP            1bc6
 1bd8:  f9 24 02 4d 03 00 0b c3 CALL_VN         934 (L02,#00,S032)
 1be0:  0d 03 00                STORE           L02,#00
 1be3:  0d 02 00                STORE           L01,#00
 1be6:  62 02 04 50             JL              L01,L03 [FALSE] 1bf8
 1bea:  6c 01 02                CLEAR_ATTR      L00,L01
 1bed:  6a 01 02 44             TEST_ATTR       L00,L01 [FALSE] 1bf3
 1bf1:  95 03                   INC             L02
 1bf3:  95 02                   INC             L01
 1bf5:  8c ff f0                JUMP            1be6
 1bf8:  f9 24 02 4d 03 00 0b c7 CALL_VN         934 (L02,#00,S033)
 1c00:  b0                      RTRUE           

Routine 1c04, 4 locals

 1c05:  71 01 02 04             GET_PROP        L00,L01 -> L03
 1c09:  2d 16 01                STORE           G06,L00
 1c0c:  2d 17 02                STORE           G07,L01
 1c0f:  f9 28 02 75 04 03 0b cb CALL_VN         9d4 (L03,L02,S034)
 1c17:  b0                      RTRUE           

Routine 1c18, 4 locals

 1c19:  73 01 02 04             GET_NEXT_PROP   L00,L01 -> L03
 1c1d:  2d 16 01                STORE           G06,L00
 1c20:  2d 17 02                STORE           G07,L01
 1c23:  f9 28 02 75 04 03 0b cc CALL_VN         9d4 (L03,L02,S035)
 1c2b:  b0                      RTRUE           

Routine 1c2c, 5 locals

 1c2d:  72 01 02 04             GET_PROP_ADDR   L00,L01 -> L03
 1c31:  a4 04 05                GET_PROP_LEN    L03 -> L04
 1c34:  2d 16 01                STORE           G06,L00
 1c37:  2d 17 02                STORE           G07,L01
 1c3a:  f9 28 02 75 05 03 0b cd CALL_VN         9d4 (L04,L02,S036)
 1c42:  b0                      RTRUE           

Routine 1c44, 2 locals

 1c45:  b2 ...                  PRINT           "Indirect Opcodes"
 1c52:  a0 01 ca                JZ              L00 [TRUE] 1c5d
 1c55:  b2 ...                  PRINT           " skipped"
 1c5c:  b1                      RFALSE          
 1c5d:  b2 ...                  PRINT           " ["
 1c62:  54 11 01 00             ADD             G01,#01 -> -(SP)
 1c66:  e6 bf 00                PRINT_NUM       (SP)+
 1c69:  b2 ...                  PRINT           "]: "
 1c70:  0d 02 00                STORE           L01,#00
 1c73:  42 02 64 4c             JL              L01,#64 [FALSE] 1c81
 1c77:  da 2f 07 21 02          CALL_2N         1c84 (L01)
 1c7c:  95 02                   INC             L01
 1c7e:  8c ff f4                JUMP            1c73
 1c81:  b0                      RTRUE           

Routine 1c84, 12 locals

 1c85:  0d 03 33                STORE           L02,#33
 1c88:  0d 15 3d                STORE           G05,#3d
 1c8b:  0d 02 47                STORE           L01,#47
 1c8e:  0d 04 00                STORE           L03,#00
 1c91:  0d 07 02                STORE           L06,#02
 1c94:  0d 05 03                STORE           L04,#03
 1c97:  0d 06 15                STORE           L05,#15
 1c9a:  cd 4f 0a 03 e7          STORE           L09,#03e7
 1c9f:  e8 7f 29                PUSH            #29
 1ca2:  e8 7f 2a                PUSH            #2a
 1ca5:  e8 7f 2b                PUSH            #2b
 1ca8:  e8 7f 2c                PUSH            #2c
 1cab:  e8 7f 2d                PUSH            #2d
 1cae:  2d ff 01                STORE           Gef,L00
 1cb1:  41 ff 00 5b             JE              Gef,#00 [FALSE] 1cce
 1cb5:  b2 ...                  PRINT           "load"
 1cba:  9e 00 02                LOAD            (SP)+ -> L01
 1cbd:  0d 0a 2d                STORE           L09,#2d
 1cc0:  0d 0b 2d                STORE           L0a,#2d
 1cc3:  0d 0c 2c                STORE           L0b,#2c
 1cc6:  cd 4f 09 0b ce          STORE           L08,S037
 1ccb:  8c 04 75                JUMP            2141
 1cce:  41 ff 01 56             JE              Gef,#01 [FALSE] 1ce6
 1cd2:  ae 04 02                LOAD            [L03] -> L01
 1cd5:  0d 0a 2d                STORE           L09,#2d
 1cd8:  0d 0b 2d                STORE           L0a,#2d
 1cdb:  0d 0c 2c                STORE           L0b,#2c
 1cde:  cd 4f 09 0b d2          STORE           L08,S038
 1ce3:  8c 04 5d                JUMP            2141
 1ce6:  41 ff 02 59             JE              Gef,#02 [FALSE] 1d01
 1cea:  e8 bf 05                PUSH            L04
 1ced:  ae 00 02                LOAD            [(SP)+] -> L01
 1cf0:  0d 0a 33                STORE           L09,#33
 1cf3:  0d 0b 2d                STORE           L0a,#2d
 1cf6:  0d 0c 2c                STORE           L0b,#2c
 1cf9:  cd 4f 09 0b d8          STORE           L08,S039
 1cfe:  8c 04 42                JUMP            2141
 1d01:  41 ff 03 59             JE              Gef,#03 [FALSE] 1d1c
 1d05:  e8 bf 04                PUSH            L03
 1d08:  ae 00 02                LOAD            [(SP)+] -> L01
 1d0b:  0d 0a 2d                STORE           L09,#2d
 1d0e:  0d 0b 2d                STORE           L0a,#2d
 1d11:  0d 0c 2c                STORE           L0b,#2c
 1d14:  cd 4f 09 0b df          STORE           L08,S040
 1d19:  8c 04 27                JUMP            2141
 1d1c:  41 ff 04 53             JE              Gef,#04 [FALSE] 1d31
 1d20:  9e 00 00                LOAD            (SP)+ -> -(SP)
 1d23:  0d 0b 2d                STORE           L0a,#2d
 1d26:  0d 0c 2d                STORE           L0b,#2d
 1d29:  cd 4f 09 0b e6          STORE           L08,S041
 1d2e:  8c 04 12                JUMP            2141
 1d31:  41 ff 05 56             JE              Gef,#05 [FALSE] 1d49
 1d35:  e8 bf 05                PUSH            L04
 1d38:  ae 00 00                LOAD            [(SP)+] -> -(SP)
 1d3b:  0d 0b 33                STORE           L0a,#33
 1d3e:  0d 0c 2d                STORE           L0b,#2d
 1d41:  cd 4f 09 0b e9          STORE           L08,S042
 1d46:  8c 03 fa                JUMP            2141
 1d49:  41 ff 06 56             JE              Gef,#06 [FALSE] 1d61
 1d4d:  e8 bf 04                PUSH            L03
 1d50:  ae 00 00                LOAD            [(SP)+] -> -(SP)
 1d53:  0d 0b 2d                STORE           L0a,#2d
 1d56:  0d 0c 2d                STORE           L0b,#2d
 1d59:  cd 4f 09 0b f0          STORE           L08,S043
 1d5e:  8c 03 e2                JUMP            2141
 1d61:  41 ff 0a 58             JE              Gef,#0a [FALSE] 1d7b
 1d65:  b2 ...                  PRINT           "store"
 1d6a:  0d 00 53                STORE           (SP)+,#53
 1d6d:  0d 0b 53                STORE           L0a,#53
 1d70:  0d 0c 2c                STORE           L0b,#2c
 1d73:  cd 4f 09 0b f7          STORE           L08,S044
 1d78:  8c 03 c8                JUMP            2141
 1d7b:  41 ff 0b 53             JE              Gef,#0b [FALSE] 1d90
 1d7f:  4d 04 53                STORE           [L03],#53
 1d82:  0d 0b 53                STORE           L0a,#53
 1d85:  0d 0c 2c                STORE           L0b,#2c
 1d88:  cd 4f 09 0b fa          STORE           L08,S045
 1d8d:  8c 03 b3                JUMP            2141
 1d90:  41 ff 0c 56             JE              Gef,#0c [FALSE] 1da8
 1d94:  e8 bf 04                PUSH            L03
 1d97:  4d 00 53                STORE           [(SP)+],#53
 1d9a:  0d 0b 53                STORE           L0a,#53
 1d9d:  0d 0c 2c                STORE           L0b,#2c
 1da0:  cd 4f 09 0b ff          STORE           L08,S046
 1da5:  8c 03 9b                JUMP            2141
 1da8:  41 ff 0d 56             JE              Gef,#0d [FALSE] 1dc0
 1dac:  4d 07 53                STORE           [L06],#53
 1daf:  0d 0a 53                STORE           L09,#53
 1db2:  0d 0b 2d                STORE           L0a,#2d
 1db5:  0d 0c 2c                STORE           L0b,#2c
 1db8:  cd 4f 09 0c 05          STORE           L08,S047
 1dbd:  8c 03 83                JUMP            2141
 1dc0:  41 ff 0e 59             JE              Gef,#0e [FALSE] 1ddb
 1dc4:  e8 bf 07                PUSH            L06
 1dc7:  4d 00 53                STORE           [(SP)+],#53
 1dca:  0d 0a 53                STORE           L09,#53
 1dcd:  0d 0b 2d                STORE           L0a,#2d
 1dd0:  0d 0c 2c                STORE           L0b,#2c
 1dd3:  cd 4f 09 0c 0a          STORE           L08,S048
 1dd8:  8c 03 68                JUMP            2141
 1ddb:  41 ff 0f 56             JE              Gef,#0f [FALSE] 1df3
 1ddf:  2d 02 00                STORE           L01,(SP)+
 1de2:  0d 0a 2d                STORE           L09,#2d
 1de5:  0d 0b 2c                STORE           L0a,#2c
 1de8:  0d 0c 2b                STORE           L0b,#2b
 1deb:  cd 4f 09 0c 10          STORE           L08,S049
 1df0:  8c 03 50                JUMP            2141
 1df3:  41 ff 10 53             JE              Gef,#10 [FALSE] 1e08
 1df7:  2d 00 00                STORE           (SP)+,(SP)+
 1dfa:  0d 0b 2d                STORE           L0a,#2d
 1dfd:  0d 0c 2b                STORE           L0b,#2b
 1e00:  cd 4f 09 0c 13          STORE           L08,S050
 1e05:  8c 03 3b                JUMP            2141
 1e08:  41 ff 11 56             JE              Gef,#11 [FALSE] 1e20
 1e0c:  e8 bf 04                PUSH            L03
 1e0f:  6d 00 00                STORE           [(SP)+],(SP)+
 1e12:  0d 0b 2d                STORE           L0a,#2d
 1e15:  0d 0c 2b                STORE           L0b,#2b
 1e18:  cd 4f 09 0c 15          STORE           L08,S051
 1e1d:  8c 03 23                JUMP            2141
 1e20:  41 ff 12 56             JE              Gef,#12 [FALSE] 1e38
 1e24:  6d 07 00                STORE           [L06],(SP)+
 1e27:  0d 0a 2d                STORE           L09,#2d
 1e2a:  0d 0b 2c                STORE           L0a,#2c
 1e2d:  0d 0c 2b                STORE           L0b,#2b
 1e30:  cd 4f 09 0c 1b          STORE           L08,S052
 1e35:  8c 03 0b                JUMP            2141
 1e38:  41 ff 13 59             JE              Gef,#13 [FALSE] 1e53
 1e3c:  e8 bf 07                PUSH            L06
 1e3f:  6d 00 00                STORE           [(SP)+],(SP)+
 1e42:  0d 0a 2d                STORE           L09,#2d
 1e45:  0d 0b 2c                STORE           L0a,#2c
 1e48:  0d 0c 2b                STORE           L0b,#2b
 1e4b:  cd 4f 09 0c 20          STORE           L08,S053
 1e50:  8c 02 f0                JUMP            2141
 1e53:  41 ff 14 5f             JE              Gef,#14 [FALSE] 1e74
 1e57:  b2 ...                  PRINT           "
    pull"
 1e60:  e9 7f 02                PULL            L01
 1e63:  0d 0a 2d                STORE           L09,#2d
 1e66:  0d 0b 2c                STORE           L0a,#2c
 1e69:  0d 0c 2b                STORE           L0b,#2b
 1e6c:  cd 4f 09 0c 26          STORE           L08,S054
 1e71:  8c 02 cf                JUMP            2141
 1e74:  41 ff 15 56             JE              Gef,#15 [FALSE] 1e8c
 1e78:  e9 bf 07                PULL            [L06]
 1e7b:  0d 0a 2d                STORE           L09,#2d
 1e7e:  0d 0b 2c                STORE           L0a,#2c
 1e81:  0d 0c 2b                STORE           L0b,#2b
 1e84:  cd 4f 09 0c 28          STORE           L08,S055
 1e89:  8c 02 b7                JUMP            2141
 1e8c:  41 ff 16 59             JE              Gef,#16 [FALSE] 1ea7
 1e90:  e8 bf 07                PUSH            L06
 1e93:  e9 bf 00                PULL            [(SP)+]
 1e96:  0d 0a 2d                STORE           L09,#2d
 1e99:  0d 0b 2c                STORE           L0a,#2c
 1e9c:  0d 0c 2b                STORE           L0b,#2b
 1e9f:  cd 4f 09 0c 2c          STORE           L08,S056
 1ea4:  8c 02 9c                JUMP            2141
 1ea7:  41 ff 17 53             JE              Gef,#17 [FALSE] 1ebc
 1eab:  e9 7f 00                PULL            (SP)+
 1eae:  0d 0b 2d                STORE           L0a,#2d
 1eb1:  0d 0c 2b                STORE           L0b,#2b
 1eb4:  cd 4f 09 0c 31          STORE           L08,S057
 1eb9:  8c 02 87                JUMP            2141
 1ebc:  41 ff 18 56             JE              Gef,#18 [FALSE] 1ed4
 1ec0:  e8 bf 04                PUSH            L03
 1ec3:  e9 bf 00                PULL            [(SP)+]
 1ec6:  0d 0b 2d                STORE           L0a,#2d
 1ec9:  0d 0c 2b                STORE           L0b,#2b
 1ecc:  cd 4f 09 0c 33          STORE           L08,S058
 1ed1:  8c 02 6f                JUMP            2141
 1ed4:  41 ff 19 53             JE              Gef,#19 [FALSE] 1ee9
 1ed8:  e9 bf 04                PULL            [L03]
 1edb:  0d 0b 2d                STORE           L0a,#2d
 1ede:  0d 0c 2b                STORE           L0b,#2b
 1ee1:  cd 4f 09 0c 38          STORE           L08,S059
 1ee6:  8c 02 5a                JUMP            2141
 1ee9:  41 ff 1e 58             JE              Gef,#1e [FALSE] 1f03
 1eed:  b2 ...                  PRINT           "inc"
 1ef0:  95 02                   INC             L01
 1ef2:  0d 0a 48                STORE           L09,#48
 1ef5:  0d 0b 2d                STORE           L0a,#2d
 1ef8:  0d 0c 2c                STORE           L0b,#2c
 1efb:  cd 4f 09 0c 3c          STORE           L08,S060
 1f00:  8c 02 40                JUMP            2141
 1f03:  41 ff 1f 55             JE              Gef,#1f [FALSE] 1f1a
 1f07:  a5 07                   INC             [L06]
 1f09:  0d 0a 48                STORE           L09,#48
 1f0c:  0d 0b 2d                STORE           L0a,#2d
 1f0f:  0d 0c 2c                STORE           L0b,#2c
 1f12:  cd 4f 09 0c 40          STORE           L08,S061
 1f17:  8c 02 29                JUMP            2141
 1f1a:  41 ff 20 58             JE              Gef,#20 [FALSE] 1f34
 1f1e:  e8 bf 07                PUSH            L06
 1f21:  a5 00                   INC             [(SP)+]
 1f23:  0d 0a 48                STORE           L09,#48
 1f26:  0d 0b 2d                STORE           L0a,#2d
 1f29:  0d 0c 2c                STORE           L0b,#2c
 1f2c:  cd 4f 09 0c 44          STORE           L08,S062
 1f31:  8c 02 0f                JUMP            2141
 1f34:  41 ff 21 52             JE              Gef,#21 [FALSE] 1f48
 1f38:  95 00                   INC             (SP)+
 1f3a:  0d 0b 2e                STORE           L0a,#2e
 1f3d:  0d 0c 2c                STORE           L0b,#2c
 1f40:  cd 4f 09 0c 49          STORE           L08,S063
 1f45:  8c 01 fb                JUMP            2141
 1f48:  41 ff 22 52             JE              Gef,#22 [FALSE] 1f5c
 1f4c:  a5 04                   INC             [L03]
 1f4e:  0d 0b 2e                STORE           L0a,#2e
 1f51:  0d 0c 2c                STORE           L0b,#2c
 1f54:  cd 4f 09 0c 4a          STORE           L08,S064
 1f59:  8c 01 e7                JUMP            2141
 1f5c:  41 ff 23 55             JE              Gef,#23 [FALSE] 1f73
 1f60:  e8 bf 04                PUSH            L03
 1f63:  a5 00                   INC             [(SP)+]
 1f65:  0d 0b 2e                STORE           L0a,#2e
 1f68:  0d 0c 2c                STORE           L0b,#2c
 1f6b:  cd 4f 09 0c 4e          STORE           L08,S065
 1f70:  8c 01 d0                JUMP            2141
 1f73:  41 ff 28 58             JE              Gef,#28 [FALSE] 1f8d
 1f77:  b2 ...                  PRINT           "dec"
 1f7a:  96 02                   DEC             L01
 1f7c:  0d 0a 46                STORE           L09,#46
 1f7f:  0d 0b 2d                STORE           L0a,#2d
 1f82:  0d 0c 2c                STORE           L0b,#2c
 1f85:  cd 4f 09 0c 53          STORE           L08,S066
 1f8a:  8c 01 b6                JUMP            2141
 1f8d:  41 ff 29 55             JE              Gef,#29 [FALSE] 1fa4
 1f91:  a6 07                   DEC             [L06]
 1f93:  0d 0a 46                STORE           L09,#46
 1f96:  0d 0b 2d                STORE           L0a,#2d
 1f99:  0d 0c 2c                STORE           L0b,#2c
 1f9c:  cd 4f 09 0c 57          STORE           L08,S067
 1fa1:  8c 01 9f                JUMP            2141
 1fa4:  41 ff 2a 58             JE              Gef,#2a [FALSE] 1fbe
 1fa8:  e8 bf 07                PUSH            L06
 1fab:  a6 00                   DEC             [(SP)+]
 1fad:  0d 0a 46                STORE           L09,#46
 1fb0:  0d 0b 2d                STORE           L0a,#2d
 1fb3:  0d 0c 2c                STORE           L0b,#2c
 1fb6:  cd 4f 09 0c 5b          STORE           L08,S068
 1fbb:  8c 01 85                JUMP            2141
 1fbe:  41 ff 2b 52             JE              Gef,#2b [FALSE] 1fd2
 1fc2:  96 00                   DEC             (SP)+
 1fc4:  0d 0b 2c                STORE           L0a,#2c
 1fc7:  0d 0c 2c                STORE           L0b,#2c
 1fca:  cd 4f 09 0c 60          STORE           L08,S069
 1fcf:  8c 01 71                JUMP            2141
 1fd2:  41 ff 2c 52             JE              Gef,#2c [FALSE] 1fe6
 1fd6:  a6 04                   DEC             [L03]
 1fd8:  0d 0b 2c                STORE           L0a,#2c
 1fdb:  0d 0c 2c                STORE           L0b,#2c
 1fde:  cd 4f 09 0c 61          STORE           L08,S070
 1fe3:  8c 01 5d                JUMP            2141
 1fe6:  41 ff 2d 55             JE              Gef,#2d [FALSE] 1ffd
 1fea:  e8 bf 04                PUSH            L03
 1fed:  a6 00                   DEC             [(SP)+]
 1fef:  0d 0b 2c                STORE           L0a,#2c
 1ff2:  0d 0c 2c                STORE           L0b,#2c
 1ff5:  cd 4f 09 0c 65          STORE           L08,S071
 1ffa:  8c 01 46                JUMP            2141
 1ffd:  41 ff 32 63             JE              Gef,#32 [FALSE] 2022
 2001:  b2 ...                  PRINT           "
    inc_chk"
 200c:  cd 4f 09 0c 6a          STORE           L08,S072
 2011:  05 02 48 81 4f          INC_CHK         L01,#48 [TRUE] 2163
 2016:  0d 0a 48                STORE           L09,#48
 2019:  0d 0b 2d                STORE           L0a,#2d
 201c:  0d 0c 2c                STORE           L0b,#2c
 201f:  8c 01 21                JUMP            2141
 2022:  41 ff 33 58             JE              Gef,#33 [FALSE] 203c
 2026:  cd 4f 09 0c 6f          STORE           L08,S073
 202b:  45 07 48 81 35          INC_CHK         [L06],#48 [TRUE] 2163
 2030:  0d 0a 48                STORE           L09,#48
 2033:  0d 0b 2d                STORE           L0a,#2d
 2036:  0d 0c 2c                STORE           L0b,#2c
 2039:  8c 01 07                JUMP            2141
 203c:  41 ff 34 5b             JE              Gef,#34 [FALSE] 2059
 2040:  cd 4f 09 0c 74          STORE           L08,S074
 2045:  e8 bf 07                PUSH            L06
 2048:  45 00 48 81 18          INC_CHK         [(SP)+],#48 [TRUE] 2163
 204d:  0d 0a 48                STORE           L09,#48
 2050:  0d 0b 2d                STORE           L0a,#2d
 2053:  0d 0c 2c                STORE           L0b,#2c
 2056:  8c 00 ea                JUMP            2141
 2059:  41 ff 35 55             JE              Gef,#35 [FALSE] 2070
 205d:  cd 4f 09 0c 7a          STORE           L08,S075
 2062:  05 00 2e 80 fe          INC_CHK         (SP)+,#2e [TRUE] 2163
 2067:  0d 0b 2e                STORE           L0a,#2e
 206a:  0d 0c 2c                STORE           L0b,#2c
 206d:  8c 00 d3                JUMP            2141
 2070:  41 ff 36 55             JE              Gef,#36 [FALSE] 2087
 2074:  cd 4f 09 0c 7c          STORE           L08,S076
 2079:  45 04 2e 80 e7          INC_CHK         [L03],#2e [TRUE] 2163
 207e:  0d 0b 2e                STORE           L0a,#2e
 2081:  0d 0c 2c                STORE           L0b,#2c
 2084:  8c 00 bc                JUMP            2141
 2087:  41 ff 37 58             JE              Gef,#37 [FALSE] 20a1
 208b:  cd 4f 09 0c 81          STORE           L08,S077
 2090:  e8 bf 04                PUSH            L03
 2093:  45 00 2e 80 cd          INC_CHK         [(SP)+],#2e [TRUE] 2163
 2098:  0d 0b 2e                STORE           L0a,#2e
 209b:  0d 0c 2c                STORE           L0b,#2c
 209e:  8c 00 a2                JUMP            2141
 20a1:  41 ff 3c 5f             JE              Gef,#3c [FALSE] 20c2
 20a5:  b2 ...                  PRINT           "dec_chk"
 20ac:  cd 4f 09 0c 87          STORE           L08,S078
 20b1:  04 02 46 80 af          DEC_CHK         L01,#46 [TRUE] 2163
 20b6:  0d 0a 46                STORE           L09,#46
 20b9:  0d 0b 2d                STORE           L0a,#2d
 20bc:  0d 0c 2c                STORE           L0b,#2c
 20bf:  8c 00 81                JUMP            2141
 20c2:  41 ff 3d 58             JE              Gef,#3d [FALSE] 20dc
 20c6:  cd 4f 09 0c 8c          STORE           L08,S079
 20cb:  44 07 46 80 95          DEC_CHK         [L06],#46 [TRUE] 2163
 20d0:  0d 0a 46                STORE           L09,#46
 20d3:  0d 0b 2d                STORE           L0a,#2d
 20d6:  0d 0c 2c                STORE           L0b,#2c
 20d9:  8c 00 67                JUMP            2141
 20dc:  41 ff 3e 5b             JE              Gef,#3e [FALSE] 20f9
 20e0:  cd 4f 09 0c 91          STORE           L08,S080
 20e5:  e8 bf 07                PUSH            L06
 20e8:  44 00 46 80 78          DEC_CHK         [(SP)+],#46 [TRUE] 2163
 20ed:  0d 0a 46                STORE           L09,#46
 20f0:  0d 0b 2d                STORE           L0a,#2d
 20f3:  0d 0c 2c                STORE           L0b,#2c
 20f6:  8c 00 4a                JUMP            2141
 20f9:  41 ff 3f 55             JE              Gef,#3f [FALSE] 2110
 20fd:  cd 4f 09 0c 97          STORE           L08,S081
 2102:  04 00 2c 80 5e          DEC_CHK         (SP)+,#2c [TRUE] 2163
 2107:  0d 0b 2c                STORE           L0a,#2c
 210a:  0d 0c 2c                STORE           L0b,#2c
 210d:  8c 00 33                JUMP            2141
 2110:  41 ff 40 55             JE              Gef,#40 [FALSE] 2127
 2114:  cd 4f 09 0c 99          STORE           L08,S082
 2119:  44 04 2c 80 47          DEC_CHK         [L03],#2c [TRUE] 2163
 211e:  0d 0b 2c                STORE           L0a,#2c
 2121:  0d 0c 2c                STORE           L0b,#2c
 2124:  8c 00 1c                JUMP            2141
 2127:  41 ff 41 57             JE              Gef,#41 [FALSE] 2140
 212b:  cd 4f 09 0c 9e          STORE           L08,S083
 2130:  e8 bf 04                PUSH            L03
 2133:  44 00 2c ee             DEC_CHK         [(SP)+],#2c [TRUE] 2163
 2137:  0d 0b 2c                STORE           L0a,#2c
 213a:  0d 0c 2c                STORE           L0b,#2c
 213d:  8c 00 03                JUMP            2141
 2140:  b1                      RFALSE          
 2141:  c1 8f 0a 03 e7 c9       JE              L09,#03e7 [TRUE] 214e
 2147:  f9 2a 02 4d 02 0a 09    CALL_VN         934 (L01,L09,L08)
 214e:  e9 7f 08                PULL            L07
 2151:  f9 2a 02 4d 08 0b 09    CALL_VN         934 (L07,L0a,L08)
 2158:  e9 7f 08                PULL            L07
 215b:  f9 2a 02 4d 08 0c 09    CALL_VN         934 (L07,L0b,L08)
 2162:  b0                      RTRUE           
 2163:  f9 26 02 4d 02 7b 09    CALL_VN         934 (L01,#7b,L08)
 216a:  b1                      RFALSE          

Routine 216c, 3 locals

 216d:  b2 ...                  PRINT           "Misc"
 2172:  a0 01 ca                JZ              L00 [TRUE] 217d
 2175:  b2 ...                  PRINT           " skipped"
 217c:  b1                      RFALSE          
 217d:  b2 ...                  PRINT           " ["
 2182:  54 11 01 00             ADD             G01,#01 -> -(SP)
 2186:  e6 bf 00                PRINT_NUM       (SP)+
 2189:  b2 ...                  PRINT           "]: "
 2190:  b2 ...                  PRINT           "test"
 2195:  c7 0f ff ff ff ff 5b    TEST            #ffff,#ffff [FALSE] 21b5
 219c:  8f 02 8c                CALL_1N         a30
 219f:  c7 1f ff ff 00 52       TEST            #ffff,#00 [FALSE] 21b5
 21a5:  8f 02 8c                CALL_1N         a30
 21a8:  c7 0f 12 34 43 21 c8    TEST            #1234,#4321 [TRUE] 21b5
 21af:  8f 02 8c                CALL_1N         a30
 21b2:  8c 00 18                JUMP            21cb
 21b5:  8f 02 8f                CALL_1N         a3c
 21b8:  b2 ...                  PRINT           "
bad ["
 21c1:  e6 bf 11                PRINT_NUM       G01
 21c4:  b2 ...                  PRINT           "]!
"
 21cb:  b2 ...                  PRINT           "random"
 21d0:  e7 3f 83 00 02          RANDOM          #8300 -> L01
 21d5:  e7 3f 01 00 02          RANDOM          #0100 -> L01
 21da:  e7 3f 83 00 03          RANDOM          #8300 -> L02
 21df:  e7 3f 01 00 03          RANDOM          #0100 -> L02
 21e4:  f9 2b 02 4d 02 03       CALL_VN         934 (L01,L02)
 21ea:  b2 ...                  PRINT           "verify"
 21ef:  0d 02 00                STORE           L01,#00
 21f2:  bd c5                   VERIFY          [TRUE] 21f7
 21f4:  0d 02 01                STORE           L01,#01
 21f7:  f9 27 02 4d 02 00       CALL_VN         934 (L01,#00)
 21fd:  b2 ...                  PRINT           "piracy"
 2202:  0d 02 00                STORE           L01,#00
 2205:  bf c5                   PIRACY          [TRUE] 220a
 2207:  0d 02 01                STORE           L01,#01
 220a:  f9 27 02 4d 02 00       CALL_VN         934 (L01,#00)
 2210:  b0                      RTRUE           

Routine 2214, 4 locals

 2215:  b2 ...                  PRINT           "Header"
 221c:  a0 01 ca                JZ              L00 [TRUE] 2227
 221f:  b2 ...                  PRINT           " skipped"
 2226:  b1                      RFALSE          
 2227:  b2 ...                  PRINT           " (No tests)"
 2232:  10 00 32 03             LOADB           #00,#32 -> L02
 2236:  10 00 33 04             LOADB           #00,#33 -> L03
 223a:  a0 03 45                JZ              L02 [FALSE] 2240
 223d:  a0 04 d9                JZ              L03 [TRUE] 2257
 2240:  b2 ...                  PRINT           "
    standard "
 224b:  e6 bf 03                PRINT_NUM       L02
 224e:  b2 ...                  PRINT           "."
 2251:  e6 bf 04                PRINT_NUM       L03
 2254:  b2 ...                  PRINT           " "
 2257:  10 00 1e 03             LOADB           #00,#1e -> L02
 225b:  b2 ...                  PRINT           "
    interpreter "
 2268:  e6 bf 03                PRINT_NUM       L02
 226b:  b2 ...                  PRINT           " "
 226e:  10 00 1f 03             LOADB           #00,#1f -> L02
 2272:  e5 bf 03                PRINT_CHAR      L02
 2275:  10 00 1e 03             LOADB           #00,#1e -> L02
 2279:  b2 ...                  PRINT           " ("
 227c:  da 2f 09 3b 03          CALL_2N         24ec (L02)
 2281:  b2 ...                  PRINT           ")"
 2284:  0d 03 00                STORE           L02,#00
 2287:  42 03 02 00 f3          JL              L02,#02 [FALSE] 237d
 228c:  a0 03 52                JZ              L02 [FALSE] 229f
 228f:  b2 ...                  PRINT           "
    Flags on: "
 229c:  8c 00 11                JUMP            22ae
 229f:  b2 ...                  PRINT           "
    Flags off: "
 22ae:  10 00 01 02             LOADB           #00,#01 -> L01
 22b2:  49 02 01 00             AND             L01,#01 -> -(SP)
 22b6:  f9 28 09 0d 03 00 0c a4 CALL_VN         2434 (L02,(SP)+,S084)
 22be:  49 02 02 00             AND             L01,#02 -> -(SP)
 22c2:  f9 28 09 0d 03 00 0c a5 CALL_VN         2434 (L02,(SP)+,S085)
 22ca:  49 02 04 00             AND             L01,#04 -> -(SP)
 22ce:  f9 28 09 0d 03 00 0c a7 CALL_VN         2434 (L02,(SP)+,S086)
 22d6:  49 02 08 00             AND             L01,#08 -> -(SP)
 22da:  f9 28 09 0d 03 00 0c a9 CALL_VN         2434 (L02,(SP)+,S087)
 22e2:  49 02 10 00             AND             L01,#10 -> -(SP)
 22e6:  f9 28 09 0d 03 00 0c aa CALL_VN         2434 (L02,(SP)+,S088)
 22ee:  49 02 20 00             AND             L01,#20 -> -(SP)
 22f2:  f9 28 09 0d 03 00 0c ac CALL_VN         2434 (L02,(SP)+,S089)
 22fa:  49 02 80 00             AND             L01,#80 -> -(SP)
 22fe:  f9 28 09 0d 03 00 0c ad CALL_VN         2434 (L02,(SP)+,S090)
 2306:  0f 00 08 02             LOADW           #00,#08 -> L01
 230a:  49 02 01 00             AND             L01,#01 -> -(SP)
 230e:  f9 28 09 0d 03 00 0c ae CALL_VN         2434 (L02,(SP)+,S091)
 2316:  49 02 02 00             AND             L01,#02 -> -(SP)
 231a:  f9 28 09 0d 03 00 0c b1 CALL_VN         2434 (L02,(SP)+,S092)
 2322:  49 02 04 00             AND             L01,#04 -> -(SP)
 2326:  f9 28 09 0d 03 00 0c b4 CALL_VN         2434 (L02,(SP)+,S093)
 232e:  49 02 08 00             AND             L01,#08 -> -(SP)
 2332:  f9 28 09 0d 03 00 0c b7 CALL_VN         2434 (L02,(SP)+,S094)
 233a:  49 02 10 00             AND             L01,#10 -> -(SP)
 233e:  f9 28 09 0d 03 00 0c ba CALL_VN         2434 (L02,(SP)+,S095)
 2346:  49 02 20 00             AND             L01,#20 -> -(SP)
 234a:  f9 28 09 0d 03 00 0c bc CALL_VN         2434 (L02,(SP)+,S096)
 2352:  49 02 40 00             AND             L01,#40 -> -(SP)
 2356:  f9 28 09 0d 03 00 0c be CALL_VN         2434 (L02,(SP)+,S097)
 235e:  49 02 80 00             AND             L01,#80 -> -(SP)
 2362:  f9 28 09 0d 03 00 0c c0 CALL_VN         2434 (L02,(SP)+,S098)
 236a:  c9 8f 02 01 00 00       AND             L01,#0100 -> -(SP)
 2370:  f9 28 09 0d 03 00 0c c2 CALL_VN         2434 (L02,(SP)+,S099)
 2378:  95 03                   INC             L02
 237a:  8c ff 0c                JUMP            2287
 237d:  b2 ...                  PRINT           "
    Screen size: "
 238c:  e0 17 0b 1c 00 21 00    CALL_VS         2c70 (#00,#21) -> -(SP)
 2393:  e6 bf 00                PRINT_NUM       (SP)+
 2396:  b2 ...                  PRINT           "x"
 2399:  e0 17 0b 1c 00 20 00    CALL_VS         2c70 (#00,#20) -> -(SP)
 23a0:  e6 bf 00                PRINT_NUM       (SP)+
 23a3:  b2 ...                  PRINT           "; in "
 23aa:  e0 17 0b 1c 00 26 00    CALL_VS         2c70 (#00,#26) -> -(SP)
 23b1:  e6 bf 00                PRINT_NUM       (SP)+
 23b4:  b2 ...                  PRINT           "x"
 23b7:  e0 17 0b 1c 00 27 00    CALL_VS         2c70 (#00,#27) -> -(SP)
 23be:  e6 bf 00                PRINT_NUM       (SP)+
 23c1:  b2 ...                  PRINT           " units: "
 23c8:  e0 17 0b 24 00 11 00    CALL_VS         2c90 (#00,#11) -> -(SP)
 23cf:  e6 bf 00                PRINT_NUM       (SP)+
 23d2:  b2 ...                  PRINT           "x"
 23d5:  e0 17 0b 24 00 12 00    CALL_VS         2c90 (#00,#12) -> -(SP)
 23dc:  e6 bf 00                PRINT_NUM       (SP)+
 23df:  b2 ...                  PRINT           "
    Default color: "
 23f0:  e0 17 0b 1c 00 2d 00    CALL_VS         2c70 (#00,#2d) -> -(SP)
 23f7:  da 2f 09 13 00          CALL_2N         244c ((SP)+)
 23fc:  b2 ...                  PRINT           " on "
 2401:  e0 17 0b 1c 00 2c 00    CALL_VS         2c70 (#00,#2c) -> -(SP)
 2408:  da 2f 09 13 00          CALL_2N         244c ((SP)+)
 240d:  10 00 38 03             LOADB           #00,#38 -> L02
 2411:  a0 03 e0                JZ              L02 [TRUE] 2432
 2414:  b2 ...                  PRINT           "
    User: "
 241f:  0d 03 38                STORE           L02,#38
 2422:  42 03 40 4b             JL              L02,#40 [FALSE] 242f
 2426:  30 00 03 04             LOADB           #00,L02 -> L03
 242a:  95 03                   INC             L02
 242c:  8c ff f5                JUMP            2422
 242f:  e5 bf 04                PRINT_CHAR      L03
 2432:  b0                      RTRUE           

Routine 2434, 3 locals

 2435:  a0 02 c8                JZ              L01 [TRUE] 243e
 2438:  e8 7f 00                PUSH            #00
 243b:  8c 00 05                JUMP            2441
 243e:  e8 7f 01                PUSH            #01
 2441:  61 00 01 47             JE              (SP)+,L00 [FALSE] 244a
 2445:  ad 03                   PRINT_PADDR     L02
 2447:  b2 ...                  PRINT           ", "
 244a:  b0                      RTRUE           

Routine 244c, 1 local

 244d:  2d ff 01                STORE           Gef,L00
 2450:  41 ff 00 4a             JE              Gef,#00 [FALSE] 245c
 2454:  b2 ...                  PRINT           "current"
 245b:  b0                      RTRUE           
 245c:  41 ff 01 4a             JE              Gef,#01 [FALSE] 2468
 2460:  b2 ...                  PRINT           "default"
 2467:  b0                      RTRUE           
 2468:  41 ff 02 48             JE              Gef,#02 [FALSE] 2472
 246c:  b2 ...                  PRINT           "black"
 2471:  b0                      RTRUE           
 2472:  41 ff 03 46             JE              Gef,#03 [FALSE] 247a
 2476:  b2 ...                  PRINT           "red"
 2479:  b0                      RTRUE           
 247a:  41 ff 04 48             JE              Gef,#04 [FALSE] 2484
 247e:  b2 ...                  PRINT           "green"
 2483:  b0                      RTRUE           
 2484:  41 ff 05 48             JE              Gef,#05 [FALSE] 248e
 2488:  b2 ...                  PRINT           "yellow"
 248d:  b0                      RTRUE           
 248e:  41 ff 06 48             JE              Gef,#06 [FALSE] 2498
 2492:  b2 ...                  PRINT           "blue"
 2497:  b0                      RTRUE           
 2498:  41 ff 07 4a             JE              Gef,#07 [FALSE] 24a4
 249c:  b2 ...                  PRINT           "magenta"
 24a3:  b0                      RTRUE           
 24a4:  41 ff 08 48             JE              Gef,#08 [FALSE] 24ae
 24a8:  b2 ...                  PRINT           "cyan"
 24ad:  b0                      RTRUE           
 24ae:  41 ff 09 48             JE              Gef,#09 [FALSE] 24b8
 24b2:  b2 ...                  PRINT           "white"
 24b7:  b0                      RTRUE           
 24b8:  41 ff 0a 4c             JE              Gef,#0a [FALSE] 24c6
 24bc:  b2 ...                  PRINT           "light grey"
 24c5:  b0                      RTRUE           
 24c6:  41 ff 0b 4c             JE              Gef,#0b [FALSE] 24d4
 24ca:  b2 ...                  PRINT           "medium grey"
 24d3:  b0                      RTRUE           
 24d4:  41 ff 0c 4a             JE              Gef,#0c [FALSE] 24e0
 24d8:  b2 ...                  PRINT           "dark grey"
 24df:  b0                      RTRUE           
 24e0:  b2 ...                  PRINT           "UNKNOWN"
 24eb:  b0                      RTRUE           

Routine 24ec, 1 local

 24ed:  2d ff 01                STORE           Gef,L00
 24f0:  41 ff 01 52             JE              Gef,#01 [FALSE] 2504
 24f4:  b2 ...                  PRINT           "DECSystem-20"
 2503:  b0                      RTRUE           
 2504:  41 ff 02 4c             JE              Gef,#02 [FALSE] 2512
 2508:  b2 ...                  PRINT           "Apple IIe"
 2511:  b0                      RTRUE           
 2512:  41 ff 03 4c             JE              Gef,#03 [FALSE] 2520
 2516:  b2 ...                  PRINT           "Macintosh"
 251f:  b0                      RTRUE           
 2520:  41 ff 04 48             JE              Gef,#04 [FALSE] 252a
 2524:  b2 ...                  PRINT           "Amiga"
 2529:  b0                      RTRUE           
 252a:  41 ff 05 4c             JE              Gef,#05 [FALSE] 2538
 252e:  b2 ...                  PRINT           "Atari ST"
 2537:  b0                      RTRUE           
 2538:  41 ff 06 4c             JE              Gef,#06 [FALSE] 2546
 253c:  b2 ...                  PRINT           "IBM PC"
 2545:  b0                      RTRUE           
 2546:  41 ff 07 50             JE              Gef,#07 [FALSE] 2558
 254a:  b2 ...                  PRINT           "Commodore 128"
 2557:  b0                      RTRUE           
 2558:  41 ff 08 4e             JE              Gef,#08 [FALSE] 2568
 255c:  b2 ...                  PRINT           "Commodore 64"
 2567:  b0                      RTRUE           
 2568:  41 ff 09 4c             JE              Gef,#09 [FALSE] 2576
 256c:  b2 ...                  PRINT           "Apple IIc"
 2575:  b0                      RTRUE           
 2576:  41 ff 0a 4e             JE              Gef,#0a [FALSE] 2586
 257a:  b2 ...                  PRINT           "Apple IIgs"
 2585:  b0                      RTRUE           
 2586:  41 ff 0b 4e             JE              Gef,#0b [FALSE] 2596
 258a:  b2 ...                  PRINT           "Tandy Color"
 2595:  b0                      RTRUE           
 2596:  b0                      RTRUE           

Routine 2598, 0 locals

 2599:  0d 11 00                STORE           G01,#00
 259c:  0d 12 00                STORE           G02,#00
 259f:  0d 13 00                STORE           G03,#00
 25a2:  0d 14 00                STORE           G04,#00
 25a5:  b2 ...                  PRINT           "CZECH: the Comprehensive
Z-machine Emulation CHecker, version "
 25d8:  8d 0b 7f                PRINT_PADDR     S001
 25db:  b2 ...                  PRINT           "
Test numbers appear in [brackets].
"
 25fc:  8f 02 8a                CALL_1N         a28
 25ff:  b2 ...                  PRINT           "
print works or you wouldn't be seeing this.

"
 2622:  da 1f 02 91 00          CALL_2N         a44 (#00)
 2627:  b2 ...                  PRINT           "
"
 262a:  da 1f 02 fd 00          CALL_2N         bf4 (#00)
 262f:  b2 ...                  PRINT           "
"
 2632:  da 1f 03 88 00          CALL_2N         e20 (#00)
 2637:  b2 ...                  PRINT           "
"
 263a:  da 1f 04 0c 00          CALL_2N         1030 (#00)
 263f:  b2 ...                  PRINT           "
"
 2642:  da 1f 04 77 00          CALL_2N         11dc (#00)
 2647:  b2 ...                  PRINT           "
"
 264a:  da 1f 05 3d 00          CALL_2N         14f4 (#00)
 264f:  b2 ...                  PRINT           "
"
 2652:  da 1f 06 06 00          CALL_2N         1818 (#00)
 2657:  b2 ...                  PRINT           "
"
 265a:  da 1f 07 11 00          CALL_2N         1c44 (#00)
 265f:  b2 ...                  PRINT           "
"
 2662:  da 1f 08 5b 00          CALL_2N         216c (#00)
 2667:  b2 ...                  PRINT           "
"
 266a:  da 1f 08 85 00          CALL_2N         2214 (#00)
 266f:  b2 ...                  PRINT           "
"
 2672:  da 1f 04 a8 00          CALL_2N         12a0 (#00)
 2677:  b2 ...                  PRINT           "
"
 267a:  b2 ...                  PRINT           "

Performed "
 2685:  e6 bf 11                PRINT_NUM       G01
 2688:  b2 ...                  PRINT           " tests.
"
 2691:  b2 ...                  PRINT           "Passed: "
 269a:  e6 bf 12                PRINT_NUM       G02
 269d:  b2 ...                  PRINT           ", Failed: "
 26a8:  e6 bf 13                PRINT_NUM       G03
 26ab:  b2 ...                  PRINT           ", Print tests: "
 26b8:  e6 bf 14                PRINT_NUM       G04
 26bb:  b2 ...                  PRINT           "
"
 26be:  74 12 13 00             ADD             G02,G03 -> -(SP)
 26c2:  74 00 14 00             ADD             (SP)+,G04 -> -(SP)
 26c6:  61 00 11 80 42          JE              (SP)+,G01 [TRUE] 270b
 26cb:  b2 ...                  PRINT           "
ERROR - Total number of tests should equal"
 26ee:  b2 ...                  PRINT           " passed + failed + print
tests!

"
 270b:  b2 ...                  PRINT           "Didn't crash: hooray!
"
 271e:  b2 ...                  PRINT           "Last test: quit!
"
 272d:  ba                      QUIT            

orphan code fragment:

 272e:  b2 ...                  PRINT           "Quit didn't work!
"
 273f:  b0                      RTRUE           

Routine 2740, 6 locals

 2741:  b2 ...                  PRINT           "
[** Programming error: "
 275a:  42 01 00 45             JL              L00,#00 [FALSE] 2761
 275e:  8c 03 d2                JUMP            2b31
 2761:  41 01 01 4e             JE              L00,#01 [FALSE] 2771
 2765:  b2 ...                  PRINT           "class "
 276a:  aa 02                   PRINT_OBJ       L01
 276c:  8d 0c c4                PRINT_PADDR     S100
 276f:  bb                      NEW_LINE        
 2770:  b0                      RTRUE           
 2771:  41 01 20 4f             JE              L00,#20 [FALSE] 2782
 2775:  8d 0c ce                PRINT_PADDR     S101
 2778:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 277d:  8d 0c d5                PRINT_PADDR     S102
 2780:  bb                      NEW_LINE        
 2781:  b0                      RTRUE           
 2782:  41 01 21 5b             JE              L00,#21 [FALSE] 279f
 2786:  b2 ...                  PRINT           "tried to print (char) "
 2797:  e6 bf 02                PRINT_NUM       L01
 279a:  8d 0c df                PRINT_PADDR     S103
 279d:  bb                      NEW_LINE        
 279e:  b0                      RTRUE           
 279f:  41 01 22 60             JE              L00,#22 [FALSE] 27c1
 27a3:  8d 0c ec                PRINT_PADDR     S104
 27a6:  b3 ...                  PRINT_RET       "byte address of a string **]"
 27c1:  41 01 23 54             JE              L00,#23 [FALSE] 27d7
 27c5:  8d 0c f4                PRINT_PADDR     S105
 27c8:  b3 ...                  PRINT_RET       "string **]"
 27d7:  41 01 24 5a             JE              L00,#24 [FALSE] 27f3
 27db:  8d 0c fc                PRINT_PADDR     S106
 27de:  b3 ...                  PRINT_RET       "object or class **]"
 27f3:  42 01 20 03 3b          JL              L00,#20 [FALSE] 2b31
 27f8:  b2 ...                  PRINT           "tried to "
 27ff:  42 01 1c 80 d1          JL              L00,#1c [TRUE] 28d3
 2804:  c1 97 01 1c 1d 4e       JE              L00,#1c,#1d [FALSE] 2816
 280a:  b2 ...                  PRINT           "read from "
 2813:  8c 00 09                JUMP            281d
 2816:  b2 ...                  PRINT           "write to "
 281d:  c1 97 01 1d 1f 45       JE              L00,#1d,#1f [FALSE] 2826
 2823:  b2 ...                  PRINT           "-"
 2826:  b2 ...                  PRINT           "->"
 282b:  e6 bf 02                PRINT_NUM       L01
 282e:  b2 ...                  PRINT           " in the"
 2835:  49 04 07 00             AND             L03,#07 -> -(SP)
 2839:  e9 7f ff                PULL            Gef
 283c:  c1 97 ff 00 01 48       JE              Gef,#00,#01 [FALSE] 2848
 2842:  0d 06 00                STORE           L05,#00
 2845:  8c 00 30                JUMP            2876
 2848:  41 ff 02 4f             JE              Gef,#02 [FALSE] 2859
 284c:  b2 ...                  PRINT           " string"
 2853:  0d 06 01                STORE           L05,#01
 2856:  8c 00 1f                JUMP            2876
 2859:  41 ff 03 4d             JE              Gef,#03 [FALSE] 2868
 285d:  b2 ...                  PRINT           " table"
 2862:  0d 06 01                STORE           L05,#01
 2865:  8c 00 10                JUMP            2876
 2868:  41 ff 04 4c             JE              Gef,#04 [FALSE] 2876
 286c:  b2 ...                  PRINT           " buffer"
 2873:  0d 06 02                STORE           L05,#02
 2876:  49 04 10 00             AND             L03,#10 -> -(SP)
 287a:  a0 00 cb                JZ              (SP)+ [TRUE] 2886
 287d:  b2 ...                  PRINT           " (->)"
 2886:  49 04 08 00             AND             L03,#08 -> -(SP)
 288a:  a0 00 cd                JZ              (SP)+ [TRUE] 2898
 288d:  b2 ...                  PRINT           " (-->)"
 2898:  b2 ...                  PRINT           " array ""
 289f:  cf 2f 06 40 05 00       LOADW           #0640,L04 -> -(SP)
 28a5:  da 2f 0b 2d 00          CALL_2N         2cb4 ((SP)+)
 28aa:  b2 ...                  PRINT           "", which has entries "
 28bb:  e6 bf 06                PRINT_NUM       L05
 28be:  b2 ...                  PRINT           " up to "
 28c5:  e6 bf 03                PRINT_NUM       L02
 28c8:  b3 ...                  PRINT_RET       " **]"
 28d3:  42 01 18 80 56          JL              L00,#18 [TRUE] 292c
 28d8:  43 01 1b 80 51          JG              L00,#1b [TRUE] 292c
 28dd:  43 01 19 ca             JG              L00,#19 [TRUE] 28e9
 28e1:  b2 ...                  PRINT           "read"
 28e6:  8c 00 07                JUMP            28ee
 28e9:  b2 ...                  PRINT           "write"
 28ee:  b2 ...                  PRINT           " outside memory using "
 28ff:  2d ff 01                STORE           Gef,L00
 2902:  c1 97 ff 18 1a 51       JE              Gef,#18,#1a [FALSE] 2917
 2908:  b3 ...                  PRINT_RET       "-> **]"
 2917:  c1 97 ff 19 1b 51       JE              Gef,#19,#1b [FALSE] 292c
 291d:  b3 ...                  PRINT_RET       "--> **]"
 292c:  42 01 04 4a             JL              L00,#04 [FALSE] 2938
 2930:  b2 ...                  PRINT           "test "
 2935:  8c 00 1d                JUMP            2953
 2938:  42 01 0c c6             JL              L00,#0c [TRUE] 2940
 293c:  43 01 14 4c             JG              L00,#14 [FALSE] 294a
 2940:  b2 ...                  PRINT           "find the "
 2947:  8c 00 0b                JUMP            2953
 294a:  42 01 0e 47             JL              L00,#0e [FALSE] 2953
 294e:  b2 ...                  PRINT           "use "
 2953:  41 01 14 55             JE              L00,#14 [FALSE] 296a
 2957:  b3 ...                  PRINT_RET       "divide by zero **]"
 296a:  b2 ...                  PRINT           """
 296d:  2d ff 01                STORE           Gef,L00
 2970:  41 ff 02 50             JE              Gef,#02 [FALSE] 2982
 2974:  b2 ...                  PRINT           "in" or "notin"
 297f:  8c 01 9c                JUMP            2b1c
 2982:  41 ff 03 52             JE              Gef,#03 [FALSE] 2996
 2986:  b2 ...                  PRINT           "has" or "hasnt"
 2993:  8c 01 88                JUMP            2b1c
 2996:  41 ff 04 4a             JE              Gef,#04 [FALSE] 29a2
 299a:  b2 ...                  PRINT           "parent"
 299f:  8c 01 7c                JUMP            2b1c
 29a2:  41 ff 05 4a             JE              Gef,#05 [FALSE] 29ae
 29a6:  b2 ...                  PRINT           "eldest"
 29ab:  8c 01 70                JUMP            2b1c
 29ae:  41 ff 06 4a             JE              Gef,#06 [FALSE] 29ba
 29b2:  b2 ...                  PRINT           "child"
 29b7:  8c 01 64                JUMP            2b1c
 29ba:  41 ff 07 4c             JE              Gef,#07 [FALSE] 29c8
 29be:  b2 ...                  PRINT           "younger"
 29c5:  8c 01 56                JUMP            2b1c
 29c8:  41 ff 08 4c             JE              Gef,#08 [FALSE] 29d6
 29cc:  b2 ...                  PRINT           "sibling"
 29d3:  8c 01 48                JUMP            2b1c
 29d6:  41 ff 09 4c             JE              Gef,#09 [FALSE] 29e4
 29da:  b2 ...                  PRINT           "children"
 29e1:  8c 01 3a                JUMP            2b1c
 29e4:  41 ff 0a 4c             JE              Gef,#0a [FALSE] 29f2
 29e8:  b2 ...                  PRINT           "youngest"
 29ef:  8c 01 2c                JUMP            2b1c
 29f2:  41 ff 0b 4a             JE              Gef,#0b [FALSE] 29fe
 29f6:  b2 ...                  PRINT           "elder"
 29fb:  8c 01 20                JUMP            2b1c
 29fe:  41 ff 0c 4e             JE              Gef,#0c [FALSE] 2a0e
 2a02:  b2 ...                  PRINT           "objectloop"
 2a0b:  8c 01 10                JUMP            2b1c
 2a0e:  41 ff 0d 5a             JE              Gef,#0d [FALSE] 2a2a
 2a12:  b2 ...                  PRINT           "}" at end of "objectloop"
 2a27:  8c 00 f4                JUMP            2b1c
 2a2a:  41 ff 0e 63             JE              Gef,#0e [FALSE] 2a4f
 2a2e:  b2 ...                  PRINT           "give" an attribute to "
 2a3f:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2a44:  b3 ...                  PRINT_RET       " **]"
 2a4f:  41 ff 0f 59             JE              Gef,#0f [FALSE] 2a6a
 2a53:  b2 ...                  PRINT           "remove" "
 2a5a:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2a5f:  b3 ...                  PRINT_RET       " **]"
 2a6a:  c1 95 ff 10 11 12 00 76 JE              Gef,#10,#11,#12 [FALSE] 2ae6
 2a72:  b2 ...                  PRINT           "move" "
 2a79:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2a7e:  b2 ...                  PRINT           " to "
 2a83:  da 2f 0b 33 03          CALL_2N         2ccc (L02)
 2a88:  41 01 12 00 50          JE              L00,#12 [FALSE] 2adb
 2a8d:  b2 ...                  PRINT           ", which would make a loop: "
 2aa2:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2aa7:  2d 05 03                STORE           L04,L02
 2aaa:  61 05 02 48             JE              L04,L01 [FALSE] 2ab4
 2aae:  2d 05 02                STORE           L04,L01
 2ab1:  8c 00 14                JUMP            2ac6
 2ab4:  b2 ...                  PRINT           " in "
 2ab9:  da 2f 0b 33 05          CALL_2N         2ccc (L04)
 2abe:  a3 05 05                GET_PARENT      L04 -> L04
 2ac1:  61 05 02 3f f0          JE              L04,L01 [FALSE] 2ab4
 2ac6:  b2 ...                  PRINT           " in "
 2acb:  da 2f 0b 33 05          CALL_2N         2ccc (L04)
 2ad0:  b3 ...                  PRINT_RET       " **]"
 2adb:  b3 ...                  PRINT_RET       " **]"
 2ae6:  41 ff 13 55             JE              Gef,#13 [FALSE] 2afd
 2aea:  8d 0d 04                PRINT_PADDR     S107
 2aed:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2af2:  b3 ...                  PRINT_RET       " **]"
 2afd:  41 ff 15 4a             JE              Gef,#15 [FALSE] 2b09
 2b01:  b2 ...                  PRINT           ".&"
 2b06:  8c 00 15                JUMP            2b1c
 2b09:  41 ff 16 4a             JE              Gef,#16 [FALSE] 2b15
 2b0d:  b2 ...                  PRINT           ".#"
 2b12:  8c 00 09                JUMP            2b1c
 2b15:  41 ff 17 45             JE              Gef,#17 [FALSE] 2b1c
 2b19:  b2 ...                  PRINT           "."
 2b1c:  b2 ...                  PRINT           "" of "
 2b21:  da 2f 0b 33 02          CALL_2N         2ccc (L01)
 2b26:  b3 ...                  PRINT_RET       " **]"
 2b31:  42 02 00 ea             JL              L01,#00 [TRUE] 2b5d
 2b35:  d5 1f 01 09 ff 00       SUB             #0109,#ff -> -(SP)
 2b3b:  63 02 00 e0             JG              L01,(SP)+ [TRUE] 2b5d
 2b3f:  a0 02 cb                JZ              L01 [TRUE] 2b4b
 2b42:  46 02 01 47             JIN             L01,"Class" [FALSE] 2b4b
 2b46:  b2 ...                  PRINT           "class "
 2b4b:  a0 02 c7                JZ              L01 [TRUE] 2b53
 2b4e:  aa 02                   PRINT_OBJ       L01
 2b50:  8c 00 09                JUMP            2b5a
 2b53:  b2 ...                  PRINT           "nothing"
 2b5a:  b2 ...                  PRINT           " "
 2b5d:  b2 ...                  PRINT           "(object number "
 2b6a:  e6 bf 02                PRINT_NUM       L01
 2b6d:  b2 ...                  PRINT           ") "
 2b70:  42 03 00 5b             JL              L02,#00 [FALSE] 2b8d
 2b74:  b2 ...                  PRINT           "is not of class "
 2b81:  35 00 03 00             SUB             #00,L02 -> -(SP)
 2b85:  da 2f 0b 33 00          CALL_2N         2ccc ((SP)+)
 2b8a:  8c 00 55                JUMP            2be0
 2b8d:  a0 04 d8                JZ              L03 [TRUE] 2ba6
 2b90:  b2 ...                  PRINT           "has a property "
 2b9b:  da 2f 0b 4a 03          CALL_2N         2d28 (L02)
 2ba0:  8d 0d 10                PRINT_PADDR     S108
 2ba3:  8c 00 3c                JUMP            2be0
 2ba6:  b2 ...                  PRINT           " has no property "
 2bb3:  da 2f 0b 4a 03          CALL_2N         2d28 (L02)
 2bb8:  cd 4f 05 05 50          STORE           L04,#0550
 2bbd:  4f 05 00 04             LOADW           L04,#00 -> L03
 2bc1:  42 03 00 c6             JL              L02,#00 [TRUE] 2bc9
 2bc5:  62 03 04 d9             JL              L02,L03 [TRUE] 2be0
 2bc9:  b2 ...                  PRINT           " (and nor has any other
object)"
 2be0:  b2 ...                  PRINT           " to "
 2be5:  da 2f 0b 2d 01          CALL_2N         2cb4 (L00)
 2bea:  b2 ...                  PRINT           " **]
"
 2bf5:  b0                      RTRUE           

Routine 2bf8, 2 locals

 2bf9:  c1 93 01 00 ff ff c0    JE              L00,#00,#ffff [TRUE] RFALSE
 2c00:  2d 02 01                STORE           L01,L00
 2c03:  0f 1a 00 00             LOADW           #1a,#00 -> -(SP)
 2c07:  e0 2b 0b 10 02 00 00    CALL_VS         2c40 (L01,(SP)+) -> -(SP)
 2c0e:  42 00 00 40             JL              (SP)+,#00 [FALSE] RFALSE
 2c12:  42 01 01 cc             JL              L00,#01 [TRUE] 2c20
 2c16:  d5 1f 01 09 ff 00       SUB             #0109,#ff -> -(SP)
 2c1c:  63 01 00 41             JG              L00,(SP)+ [FALSE] RTRUE
 2c20:  e0 23 0b 10 01 0b 7f 00 CALL_VS         2c40 (L00,S001) -> -(SP)
 2c28:  42 00 00 c4             JL              (SP)+,#00 [TRUE] 2c2e
 2c2c:  9b 03                   RET             #03
 2c2e:  e0 23 0b 10 01 02 4b 00 CALL_VS         2c40 (L00,#024b) -> -(SP)
 2c36:  42 00 00 c4             JL              (SP)+,#00 [TRUE] 2c3c
 2c3a:  9b 02                   RET             #02
 2c3c:  b1                      RFALSE          

Routine 2c40, 4 locals

 2c41:  61 01 02 43             JE              L00,L01 [FALSE] 2c46
 2c45:  b1                      RFALSE          
 2c46:  42 01 00 47             JL              L00,#00 [FALSE] 2c4f
 2c4a:  42 02 00 c3             JL              L01,#00 [TRUE] 2c4f
 2c4e:  b0                      RTRUE           
 2c4f:  42 01 00 c9             JL              L00,#00 [TRUE] 2c5a
 2c53:  42 02 00 45             JL              L01,#00 [FALSE] 2c5a
 2c57:  8b ff ff                RET             #ffff
 2c5a:  c9 8f 01 7f ff 03       AND             L00,#7fff -> L02
 2c60:  c9 8f 02 7f ff 04       AND             L01,#7fff -> L03
 2c66:  63 03 04 43             JG              L02,L03 [FALSE] 2c6b
 2c6a:  b0                      RTRUE           
 2c6b:  8b ff ff                RET             #ffff

Routine 2c70, 4 locals

 2c71:  74 01 02 03             ADD             L00,L01 -> L02
 2c75:  e0 23 0b 10 03 09 2c 00 CALL_VS         2c40 (L02," b jsdtrzik ") ->
-(SP)
 2c7d:  42 00 00 c9             JL              (SP)+,#00 [TRUE] 2c88
 2c81:  d9 1f 09 d0 18 00       CALL_2S         2740 (#18) -> -(SP)
 2c87:  b8                      RET_POPPED      
 2c88:  70 01 02 04             LOADB           L00,L01 -> L03
 2c8c:  ab 04                   RET             L03

Routine 2c90, 4 locals

 2c91:  36 02 02 00             MUL             #02,L01 -> -(SP)
 2c95:  74 01 00 03             ADD             L00,(SP)+ -> L02
 2c99:  e0 23 0b 10 03 09 2c 00 CALL_VS         2c40 (L02," b jsdtrzik ") ->
-(SP)
 2ca1:  42 00 00 c9             JL              (SP)+,#00 [TRUE] 2cac
 2ca5:  d9 1f 09 d0 19 00       CALL_2S         2740 (#19) -> -(SP)
 2cab:  b8                      RET_POPPED      
 2cac:  6f 01 02 04             LOADW           L00,L01 -> L03
 2cb0:  ab 04                   RET             L03

Routine 2cb4, 1 local

 2cb5:  d9 2f 0a fe 01 00       CALL_2S         2bf8 (L00) -> -(SP)
 2cbb:  41 00 03 c9             JE              (SP)+,#03 [TRUE] 2cc6
 2cbf:  d9 1f 09 d0 23 00       CALL_2S         2740 (#23) -> -(SP)
 2cc5:  b8                      RET_POPPED      
 2cc6:  ad 01                   PRINT_PADDR     L00
 2cc8:  b0                      RTRUE           

Routine 2ccc, 1 local

 2ccd:  e0 2f 0b 74 01 00       CALL_VS         2dd0 (L00) -> -(SP)
 2cd3:  e9 7f ff                PULL            Gef
 2cd6:  41 ff 00 4c             JE              Gef,#00 [FALSE] 2ce4
 2cda:  b2 ...                  PRINT           "nothing"
 2ce1:  8c 00 44                JUMP            2d26
 2ce4:  41 ff 02 47             JE              Gef,#02 [FALSE] 2ced
 2ce8:  aa 01                   PRINT_OBJ       L00
 2cea:  8c 00 3b                JUMP            2d26
 2ced:  41 ff 01 4c             JE              Gef,#01 [FALSE] 2cfb
 2cf1:  b2 ...                  PRINT           "class "
 2cf6:  aa 01                   PRINT_OBJ       L00
 2cf8:  8c 00 2d                JUMP            2d26
 2cfb:  41 ff 03 56             JE              Gef,#03 [FALSE] 2d13
 2cff:  b2 ...                  PRINT           "(routine at "
 2d0a:  e6 bf 01                PRINT_NUM       L00
 2d0d:  b2 ...                  PRINT           ")"
 2d10:  8c 00 15                JUMP            2d26
 2d13:  41 ff 04 51             JE              Gef,#04 [FALSE] 2d26
 2d17:  b2 ...                  PRINT           "(string at "
 2d20:  e6 bf 01                PRINT_NUM       L00
 2d23:  b2 ...                  PRINT           ")"
 2d26:  b0                      RTRUE           

Routine 2d28, 5 locals

 2d29:  c9 8f 01 c0 00 00       AND             L00,#c000 -> -(SP)
 2d2f:  a0 00 80 67             JZ              (SP)+ [TRUE] 2d98
 2d33:  49 01 ff 00             AND             L00,#ff -> -(SP)
 2d37:  cf 2f 05 46 00 04       LOADW           #0546,(SP)+ -> L03
 2d3d:  da 2f 0b 33 04          CALL_2N         2ccc (L03)
 2d42:  b2 ...                  PRINT           "::"
 2d47:  c9 8f 01 80 00 00       AND             L00,#8000 -> -(SP)
 2d4d:  a0 00 51                JZ              (SP)+ [FALSE] 2d5f
 2d50:  c9 8f 01 3f 00 00       AND             L00,#3f00 -> -(SP)
 2d56:  d7 8f 00 01 00 01       DIV             (SP)+,#0100 -> L00
 2d5c:  8c 00 3b                JUMP            2d98
 2d5f:  c9 8f 01 7f 00 00       AND             L00,#7f00 -> -(SP)
 2d65:  d7 8f 00 01 00 01       DIV             (SP)+,#0100 -> L00
 2d6b:  51 04 03 ff             GET_PROP        L03,#03 -> Gef
 2d6f:  2d 05 ff                STORE           L04,Gef
 2d72:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
 2d76:  a0 00 d7                JZ              (SP)+ [TRUE] 2d8e
 2d79:  43 01 00 53             JG              L00,#00 [FALSE] 2d8e
 2d7d:  50 05 02 00             LOADB           L04,#02 -> -(SP)
 2d81:  74 05 00 00             ADD             L04,(SP)+ -> -(SP)
 2d85:  54 00 03 05             ADD             (SP)+,#03 -> L04
 2d89:  96 01                   DEC             L00
 2d8b:  8c ff e6                JUMP            2d72
 2d8e:  4f 05 00 00             LOADW           L04,#00 -> -(SP)
 2d92:  c9 8f 00 7f ff 01       AND             (SP)+,#7fff -> L00
 2d98:  cd 4f 02 05 50          STORE           L01,#0550
 2d9d:  4f 02 00 03             LOADW           L01,#00 -> L02
 2da1:  43 01 00 4d             JG              L00,#00 [FALSE] 2db0
 2da5:  62 01 03 49             JL              L00,L02 [FALSE] 2db0
 2da9:  6f 02 01 00             LOADW           L01,L00 -> -(SP)
 2dad:  a0 00 56                JZ              (SP)+ [FALSE] 2dc4
 2db0:  b2 ...                  PRINT           "<number "
 2db9:  e6 bf 01                PRINT_NUM       L00
 2dbc:  b2 ...                  PRINT           ">"
 2dc1:  8c 00 0b                JUMP            2dcd
 2dc4:  6f 02 01 00             LOADW           L01,L00 -> -(SP)
 2dc8:  da 2f 0b 2d 00          CALL_2N         2cb4 ((SP)+)
 2dcd:  b0                      RTRUE           

Routine 2dd0, 1 local

 2dd1:  d9 2f 0a fe 01 00       CALL_2S         2bf8 (L00) -> -(SP)
 2dd7:  e9 7f ff                PULL            Gef
 2dda:  41 ff 02 44             JE              Gef,#02 [FALSE] 2de0
 2dde:  9b 03                   RET             #03
 2de0:  41 ff 03 44             JE              Gef,#03 [FALSE] 2de6
 2de4:  9b 04                   RET             #04
 2de6:  41 ff 01 4d             JE              Gef,#01 [FALSE] 2df5
 2dea:  46 01 01 c6             JIN             L00,"Class" [TRUE] 2df2
 2dee:  43 01 04 c3             JG              L00,#04 [TRUE] 2df3
 2df2:  b0                      RTRUE           
 2df3:  9b 02                   RET             #02
 2df5:  b1                      RFALSE          

Routine 2df8, 2 locals

 2df9:  b1                      RFALSE          

[End of code at 2dfa]

[Start of text at 2dfc]

 2dfc: S001 "0.8"
 2e00: S002 "branch 0"
 2e08: S003 "branch 1"
 2e10: S004 "pull to local"
 2e1c: S005 "pull to global"
 2e28: S006 "dec sp"
 2e2c: S007 "dec sp"
 2e30: S008 "dec global"
 2e38: S009 "inc sp"
 2e3c: S010 "inc sp"
 2e40: S011 "inc global"
 2e48: S012 "dec_chk sp"
 2e50: S013 "dec_chk sp"
 2e58: S014 "++"
 2e60: S015 "--"
 2e64: S016 "+"
 2e68: S017 "-"
 2e6c: S018 "*"
 2e70: S019 "/"
 2e74: S020 "%"
 2e78: S021 "<<"
 2e80: S022 "<<"
 2e88: S023 "not"
 2e8c: S024 "&"
 2e90: S025 "|"
 2e94: S026 "word from two bytes"
 2ea4: S027 "first byte of stored word"
 2eb8: S028 "second byte of stored word"
 2ecc: S029 "A long string that Inform will put in high memory"
 2ef0: S030 "I love 'xyzzy' "
 2efc: S031 "return from ret_popped"
 2f0c: S032 "set_attr/test_attr"
 2f1c: S033 "clear_attr/test_attr"
 2f2c: S034 "."
 2f30: S035 "next"
 2f34: S036 ".#"
 2f38: S037 "load sp -> result"
 2f48: S038 "load [spointer] -> result"
 2f60: S039 "load [sp=lpointer] -> result"
 2f7c: S040 "load [sp=spointer] -> result"
 2f98: S041 "load sp -> sp"
 2fa4: S042 "load [sp=lpointer] -> sp"
 2fc0: S043 "load [sp=spointer] -> sp"
 2fdc: S044 "store sp 83"
 2fe8: S045 "store [spointer] 83"
 2ffc: S046 "store [sp=spointer] 83"
 3014: S047 "store [rpointer] 83"
 3028: S048 "store [sp=rpointer] 83"
 3040: S049 "store result sp"
 304c: S050 "store sp sp"
 3054: S051 "store [sp=spointer] sp"
 306c: S052 "store [rpointer] sp"
 3080: S053 "store [sp=rpointer] sp"
 3098: S054 "pull result"
 30a0: S055 "pull [rpointer]"
 30b0: S056 "pull [sp=rpointer]"
 30c4: S057 "pull sp"
 30cc: S058 "pull [sp=spointer]"
 30e0: S059 "pull [spointer]"
 30f0: S060 "inc [rpointer]"
 3100: S061 "inc [rpointer]"
 3110: S062 "inc [sp=rpointer]"
 3124: S063 "inc sp"
 3128: S064 "inc [spointer]"
 3138: S065 "inc [sp=spointer]"
 314c: S066 "dec [rpointer]"
 315c: S067 "dec [rpointer]"
 316c: S068 "dec [sp=rpointer]"
 3180: S069 "dec sp"
 3184: S070 "dec [spointer]"
 3194: S071 "dec [sp=spointer]"
 31a8: S072 "inc_chk [rpointer]"
 31bc: S073 "inc_chk [rpointer]"
 31d0: S074 "inc_chk [sp=rpointer]"
 31e8: S075 "inc_chk sp"
 31f0: S076 "inc_chk [spointer]"
 3204: S077 "inc_chk [sp=spointer]"
 321c: S078 "dec_chk [rpointer]"
 3230: S079 "dec_chk [rpointer]"
 3244: S080 "dec_chk [sp=rpointer]"
 325c: S081 "dec_chk sp"
 3264: S082 "dec_chk [spointer]"
 3278: S083 "dec_chk [sp=spointer]"
 3290: S084 "color"
 3294: S085 "pictures"
 329c: S086 "boldface"
 32a4: S087 "italic"
 32a8: S088 "fixed-space"
 32b0: S089 "sound"
 32b4: S090 "timer"
 32b8: S091 "transcripting on"
 32c4: S092 "fixed-pitch on"
 32d0: S093 "redraw pending"
 32dc: S094 "using pictures"
 32e8: S095 "using undo"
 32f0: S096 "using mouse"
 32f8: S097 "using colors"
 3300: S098 "using sound"
 3308: S099 "using menus"
 3310: S100 ": 'create' can have 0 to 3 parameters only **]"
 3338: S101 "objectloop broken because the object "
 3354: S102 " was moved while the loop passed through it **]"
 337c: S103 ", which is not a valid ZSCII character code for output **]"
 33b0: S104 "tried to print (address) on something not the "
 33d0: S105 "tried to print (string) on something not a "
 33f0: S106 "tried to print (object) on something not an "
 3410: S107 "give" or test "has" or "hasnt" with a non-attribute on the object
"
 3440: S108 ", but it is longer than 2 bytes so you cannot use ".""
 3468: S109 "<unknown attribute>"
 347c: S110 "name"
 3480: S111 "create"
 3484: S112 "recreate"
 348c: S113 "destroy"
 3494: S114 "remaining"
 349c: S115 "copy"
 34a0: S116 "call"
 34a4: S117 "print"
 34a8: S118 "print_to_array"
 34b4: S119 "attr1"
 34b8: S120 "attr2"
 34bc: S121 "attr3"
 34c0: S122 "attr4"
 34c4: S123 "propa"
 34c8: S124 "propb"
 34cc: S125 "propc"
 34d0: S126 "propd"
 34d4: S127 "prope"
 34d8: S128 "mytable"

[End of text at 34e0]

[End of file]
