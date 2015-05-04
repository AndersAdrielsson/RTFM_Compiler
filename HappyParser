{-# OPTIONS_GHC -w #-}
module HappyParser where

import AlexToken
import AST
import Common
import Control.Applicative(Applicative(..))

-- parser produced by Happy Version 1.19.4

data HappyAbsSyn t4 t6 t8 t9 t10 t11 t13 t15 t16 t17 t19 t20 t21 t22 t23 t24 t25 t26
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 ([ ClassDef ])
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 ([ ClassArg ])
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 ([ ClassDecl ])
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 ([ MPArg ])
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 ([ Expr ])
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26

action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_2
action_0 _ = happyReduce_2

action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (69) = happyShift action_5
action_2 (6) = happyGoto action_4
action_2 _ = happyReduce_1

action_3 (80) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_3

action_5 (28) = happyShift action_6
action_5 _ = happyFail

action_6 (39) = happyShift action_7
action_6 _ = happyFail

action_7 (54) = happyShift action_12
action_7 (55) = happyShift action_13
action_7 (58) = happyShift action_14
action_7 (60) = happyShift action_15
action_7 (74) = happyShift action_16
action_7 (7) = happyGoto action_8
action_7 (8) = happyGoto action_9
action_7 (9) = happyGoto action_10
action_7 (17) = happyGoto action_11
action_7 _ = happyReduce_5

action_8 (40) = happyShift action_20
action_8 _ = happyFail

action_9 (43) = happyShift action_19
action_9 _ = happyReduce_6

action_10 _ = happyReduce_7

action_11 (28) = happyShift action_17
action_11 (39) = happyShift action_18
action_11 _ = happyFail

action_12 _ = happyReduce_29

action_13 _ = happyReduce_30

action_14 _ = happyReduce_31

action_15 _ = happyReduce_33

action_16 _ = happyReduce_32

action_17 _ = happyReduce_9

action_18 (54) = happyShift action_12
action_18 (55) = happyShift action_13
action_18 (58) = happyShift action_14
action_18 (60) = happyShift action_15
action_18 (74) = happyShift action_16
action_18 (10) = happyGoto action_23
action_18 (11) = happyGoto action_24
action_18 (17) = happyGoto action_25
action_18 _ = happyReduce_11

action_19 (54) = happyShift action_12
action_19 (55) = happyShift action_13
action_19 (58) = happyShift action_14
action_19 (60) = happyShift action_15
action_19 (74) = happyShift action_16
action_19 (9) = happyGoto action_22
action_19 (17) = happyGoto action_11
action_19 _ = happyFail

action_20 (41) = happyShift action_21
action_20 _ = happyFail

action_21 (12) = happyGoto action_28
action_21 _ = happyReduce_15

action_22 _ = happyReduce_8

action_23 (40) = happyShift action_27
action_23 _ = happyFail

action_24 (43) = happyShift action_26
action_24 _ = happyReduce_12

action_25 _ = happyReduce_13

action_26 (54) = happyShift action_12
action_26 (55) = happyShift action_13
action_26 (58) = happyShift action_14
action_26 (60) = happyShift action_15
action_26 (74) = happyShift action_16
action_26 (17) = happyGoto action_38
action_26 _ = happyFail

action_27 (28) = happyShift action_37
action_27 _ = happyFail

action_28 (28) = happyShift action_31
action_28 (42) = happyShift action_32
action_28 (54) = happyShift action_12
action_28 (55) = happyShift action_13
action_28 (58) = happyShift action_14
action_28 (60) = happyShift action_15
action_28 (61) = happyShift action_33
action_28 (62) = happyShift action_34
action_28 (67) = happyShift action_35
action_28 (68) = happyShift action_36
action_28 (74) = happyShift action_16
action_28 (13) = happyGoto action_29
action_28 (17) = happyGoto action_30
action_28 _ = happyFail

action_29 _ = happyReduce_16

action_30 (28) = happyShift action_44
action_30 _ = happyFail

action_31 (39) = happyShift action_43
action_31 _ = happyFail

action_32 _ = happyReduce_4

action_33 (28) = happyShift action_42
action_33 _ = happyFail

action_34 (27) = happyShift action_41
action_34 _ = happyFail

action_35 (41) = happyShift action_40
action_35 _ = happyFail

action_36 (41) = happyShift action_39
action_36 _ = happyFail

action_37 _ = happyReduce_10

action_38 _ = happyReduce_14

action_39 (25) = happyGoto action_65
action_39 _ = happyReduce_73

action_40 (25) = happyGoto action_64
action_40 _ = happyReduce_73

action_41 (28) = happyShift action_63
action_41 _ = happyFail

action_42 (39) = happyShift action_62
action_42 _ = happyFail

action_43 (27) = happyShift action_51
action_43 (28) = happyShift action_52
action_43 (32) = happyShift action_53
action_43 (39) = happyShift action_54
action_43 (50) = happyShift action_55
action_43 (56) = happyShift action_56
action_43 (59) = happyShift action_57
action_43 (63) = happyShift action_58
action_43 (64) = happyShift action_59
action_43 (77) = happyShift action_60
action_43 (78) = happyShift action_61
action_43 (18) = happyGoto action_47
action_43 (19) = happyGoto action_48
action_43 (20) = happyGoto action_49
action_43 (21) = happyGoto action_50
action_43 _ = happyReduce_34

action_44 (39) = happyShift action_45
action_44 (45) = happyShift action_46
action_44 _ = happyFail

action_45 (54) = happyShift action_12
action_45 (55) = happyShift action_13
action_45 (58) = happyShift action_14
action_45 (60) = happyShift action_15
action_45 (74) = happyShift action_16
action_45 (14) = happyGoto action_109
action_45 (15) = happyGoto action_80
action_45 (16) = happyGoto action_81
action_45 (17) = happyGoto action_82
action_45 _ = happyReduce_24

action_46 (27) = happyShift action_51
action_46 (28) = happyShift action_52
action_46 (32) = happyShift action_53
action_46 (39) = happyShift action_54
action_46 (50) = happyShift action_55
action_46 (56) = happyShift action_56
action_46 (59) = happyShift action_57
action_46 (63) = happyShift action_58
action_46 (64) = happyShift action_59
action_46 (77) = happyShift action_60
action_46 (78) = happyShift action_61
action_46 (20) = happyGoto action_108
action_46 (21) = happyGoto action_50
action_46 _ = happyFail

action_47 (40) = happyShift action_107
action_47 _ = happyFail

action_48 (43) = happyShift action_106
action_48 _ = happyReduce_35

action_49 (29) = happyShift action_93
action_49 (30) = happyShift action_94
action_49 (31) = happyShift action_95
action_49 (32) = happyShift action_96
action_49 (33) = happyShift action_97
action_49 (34) = happyShift action_98
action_49 (35) = happyShift action_99
action_49 (37) = happyShift action_100
action_49 (38) = happyShift action_101
action_49 (46) = happyShift action_102
action_49 (47) = happyShift action_103
action_49 (48) = happyShift action_104
action_49 (49) = happyShift action_105
action_49 _ = happyReduce_36

action_50 (39) = happyShift action_92
action_50 _ = happyReduce_40

action_51 _ = happyReduce_42

action_52 (44) = happyShift action_91
action_52 _ = happyReduce_64

action_53 (27) = happyShift action_51
action_53 (28) = happyShift action_52
action_53 (32) = happyShift action_53
action_53 (39) = happyShift action_54
action_53 (50) = happyShift action_55
action_53 (56) = happyShift action_56
action_53 (59) = happyShift action_57
action_53 (63) = happyShift action_58
action_53 (64) = happyShift action_59
action_53 (77) = happyShift action_60
action_53 (78) = happyShift action_61
action_53 (20) = happyGoto action_90
action_53 (21) = happyGoto action_50
action_53 _ = happyFail

action_54 (27) = happyShift action_51
action_54 (28) = happyShift action_52
action_54 (32) = happyShift action_53
action_54 (39) = happyShift action_54
action_54 (50) = happyShift action_55
action_54 (56) = happyShift action_56
action_54 (59) = happyShift action_57
action_54 (63) = happyShift action_58
action_54 (64) = happyShift action_59
action_54 (77) = happyShift action_60
action_54 (78) = happyShift action_61
action_54 (20) = happyGoto action_89
action_54 (21) = happyGoto action_50
action_54 _ = happyFail

action_55 (27) = happyShift action_51
action_55 (28) = happyShift action_52
action_55 (32) = happyShift action_53
action_55 (39) = happyShift action_54
action_55 (50) = happyShift action_55
action_55 (56) = happyShift action_56
action_55 (59) = happyShift action_57
action_55 (63) = happyShift action_58
action_55 (64) = happyShift action_59
action_55 (77) = happyShift action_60
action_55 (78) = happyShift action_61
action_55 (20) = happyGoto action_88
action_55 (21) = happyGoto action_50
action_55 _ = happyFail

action_56 _ = happyReduce_43

action_57 _ = happyReduce_44

action_58 (28) = happyShift action_52
action_58 (21) = happyGoto action_87
action_58 _ = happyFail

action_59 (65) = happyShift action_86
action_59 (22) = happyGoto action_85
action_59 _ = happyReduce_66

action_60 (39) = happyShift action_84
action_60 _ = happyFail

action_61 (39) = happyShift action_83
action_61 _ = happyFail

action_62 (54) = happyShift action_12
action_62 (55) = happyShift action_13
action_62 (58) = happyShift action_14
action_62 (60) = happyShift action_15
action_62 (74) = happyShift action_16
action_62 (14) = happyGoto action_79
action_62 (15) = happyGoto action_80
action_62 (16) = happyGoto action_81
action_62 (17) = happyGoto action_82
action_62 _ = happyReduce_24

action_63 (41) = happyShift action_78
action_63 _ = happyFail

action_64 (27) = happyShift action_51
action_64 (28) = happyShift action_69
action_64 (32) = happyShift action_53
action_64 (39) = happyShift action_54
action_64 (42) = happyShift action_77
action_64 (50) = happyShift action_55
action_64 (54) = happyShift action_12
action_64 (55) = happyShift action_13
action_64 (56) = happyShift action_56
action_64 (58) = happyShift action_14
action_64 (59) = happyShift action_57
action_64 (60) = happyShift action_15
action_64 (63) = happyShift action_58
action_64 (64) = happyShift action_59
action_64 (70) = happyShift action_71
action_64 (71) = happyShift action_72
action_64 (73) = happyShift action_73
action_64 (74) = happyShift action_16
action_64 (75) = happyShift action_74
action_64 (76) = happyShift action_75
action_64 (77) = happyShift action_60
action_64 (78) = happyShift action_61
action_64 (79) = happyShift action_76
action_64 (17) = happyGoto action_66
action_64 (20) = happyGoto action_67
action_64 (21) = happyGoto action_50
action_64 (26) = happyGoto action_68
action_64 _ = happyFail

action_65 (27) = happyShift action_51
action_65 (28) = happyShift action_69
action_65 (32) = happyShift action_53
action_65 (39) = happyShift action_54
action_65 (42) = happyShift action_70
action_65 (50) = happyShift action_55
action_65 (54) = happyShift action_12
action_65 (55) = happyShift action_13
action_65 (56) = happyShift action_56
action_65 (58) = happyShift action_14
action_65 (59) = happyShift action_57
action_65 (60) = happyShift action_15
action_65 (63) = happyShift action_58
action_65 (64) = happyShift action_59
action_65 (70) = happyShift action_71
action_65 (71) = happyShift action_72
action_65 (73) = happyShift action_73
action_65 (74) = happyShift action_16
action_65 (75) = happyShift action_74
action_65 (76) = happyShift action_75
action_65 (77) = happyShift action_60
action_65 (78) = happyShift action_61
action_65 (79) = happyShift action_76
action_65 (17) = happyGoto action_66
action_65 (20) = happyGoto action_67
action_65 (21) = happyGoto action_50
action_65 (26) = happyGoto action_68
action_65 _ = happyFail

action_66 (28) = happyShift action_148
action_66 _ = happyFail

action_67 (29) = happyShift action_93
action_67 (30) = happyShift action_94
action_67 (31) = happyShift action_95
action_67 (32) = happyShift action_96
action_67 (33) = happyShift action_97
action_67 (34) = happyShift action_98
action_67 (35) = happyShift action_99
action_67 (36) = happyShift action_147
action_67 (37) = happyShift action_100
action_67 (38) = happyShift action_101
action_67 (46) = happyShift action_102
action_67 (47) = happyShift action_103
action_67 (48) = happyShift action_104
action_67 (49) = happyShift action_105
action_67 _ = happyFail

action_68 _ = happyReduce_74

action_69 (44) = happyShift action_91
action_69 (45) = happyShift action_146
action_69 _ = happyReduce_64

action_70 _ = happyReduce_23

action_71 (27) = happyShift action_51
action_71 (28) = happyShift action_52
action_71 (32) = happyShift action_53
action_71 (39) = happyShift action_54
action_71 (50) = happyShift action_55
action_71 (56) = happyShift action_56
action_71 (59) = happyShift action_57
action_71 (63) = happyShift action_58
action_71 (64) = happyShift action_59
action_71 (77) = happyShift action_60
action_71 (78) = happyShift action_61
action_71 (20) = happyGoto action_145
action_71 (21) = happyGoto action_50
action_71 _ = happyFail

action_72 (39) = happyShift action_144
action_72 _ = happyFail

action_73 (39) = happyShift action_143
action_73 _ = happyFail

action_74 (39) = happyShift action_142
action_74 _ = happyFail

action_75 (39) = happyShift action_141
action_75 _ = happyFail

action_76 (39) = happyShift action_140
action_76 _ = happyFail

action_77 _ = happyReduce_22

action_78 (25) = happyGoto action_139
action_78 _ = happyReduce_73

action_79 (40) = happyShift action_138
action_79 _ = happyFail

action_80 (43) = happyShift action_137
action_80 _ = happyReduce_25

action_81 _ = happyReduce_26

action_82 (28) = happyShift action_136
action_82 _ = happyFail

action_83 (40) = happyShift action_135
action_83 _ = happyFail

action_84 (27) = happyShift action_51
action_84 (28) = happyShift action_52
action_84 (32) = happyShift action_53
action_84 (39) = happyShift action_54
action_84 (50) = happyShift action_55
action_84 (56) = happyShift action_56
action_84 (59) = happyShift action_57
action_84 (63) = happyShift action_58
action_84 (64) = happyShift action_59
action_84 (77) = happyShift action_60
action_84 (78) = happyShift action_61
action_84 (20) = happyGoto action_134
action_84 (21) = happyGoto action_50
action_84 _ = happyFail

action_85 (66) = happyShift action_133
action_85 (23) = happyGoto action_132
action_85 _ = happyReduce_68

action_86 (27) = happyShift action_131
action_86 (24) = happyGoto action_130
action_86 _ = happyFail

action_87 _ = happyReduce_39

action_88 (29) = happyShift action_93
action_88 (30) = happyShift action_94
action_88 (31) = happyShift action_95
action_88 (32) = happyShift action_96
action_88 (33) = happyShift action_97
action_88 (34) = happyShift action_98
action_88 (35) = happyShift action_99
action_88 (37) = happyShift action_100
action_88 (38) = happyShift action_101
action_88 (46) = happyShift action_102
action_88 (47) = happyShift action_103
action_88 (48) = happyShift action_104
action_88 (49) = happyShift action_105
action_88 _ = happyReduce_58

action_89 (29) = happyShift action_93
action_89 (30) = happyShift action_94
action_89 (31) = happyShift action_95
action_89 (32) = happyShift action_96
action_89 (33) = happyShift action_97
action_89 (34) = happyShift action_98
action_89 (35) = happyShift action_99
action_89 (37) = happyShift action_100
action_89 (38) = happyShift action_101
action_89 (40) = happyShift action_129
action_89 (46) = happyShift action_102
action_89 (47) = happyShift action_103
action_89 (48) = happyShift action_104
action_89 (49) = happyShift action_105
action_89 _ = happyFail

action_90 (29) = happyShift action_93
action_90 (30) = happyShift action_94
action_90 (33) = happyShift action_97
action_90 (34) = happyShift action_98
action_90 (35) = happyShift action_99
action_90 (46) = happyShift action_102
action_90 (47) = happyShift action_103
action_90 (48) = happyShift action_104
action_90 (49) = happyShift action_105
action_90 _ = happyReduce_61

action_91 (28) = happyShift action_128
action_91 _ = happyFail

action_92 (27) = happyShift action_51
action_92 (28) = happyShift action_52
action_92 (32) = happyShift action_53
action_92 (39) = happyShift action_54
action_92 (50) = happyShift action_55
action_92 (56) = happyShift action_56
action_92 (59) = happyShift action_57
action_92 (63) = happyShift action_58
action_92 (64) = happyShift action_59
action_92 (77) = happyShift action_60
action_92 (78) = happyShift action_61
action_92 (18) = happyGoto action_127
action_92 (19) = happyGoto action_48
action_92 (20) = happyGoto action_49
action_92 (21) = happyGoto action_50
action_92 _ = happyReduce_34

action_93 (27) = happyShift action_51
action_93 (28) = happyShift action_52
action_93 (32) = happyShift action_53
action_93 (39) = happyShift action_54
action_93 (50) = happyShift action_55
action_93 (56) = happyShift action_56
action_93 (59) = happyShift action_57
action_93 (63) = happyShift action_58
action_93 (64) = happyShift action_59
action_93 (77) = happyShift action_60
action_93 (78) = happyShift action_61
action_93 (20) = happyGoto action_126
action_93 (21) = happyGoto action_50
action_93 _ = happyFail

action_94 (27) = happyShift action_51
action_94 (28) = happyShift action_52
action_94 (32) = happyShift action_53
action_94 (39) = happyShift action_54
action_94 (50) = happyShift action_55
action_94 (56) = happyShift action_56
action_94 (59) = happyShift action_57
action_94 (63) = happyShift action_58
action_94 (64) = happyShift action_59
action_94 (77) = happyShift action_60
action_94 (78) = happyShift action_61
action_94 (20) = happyGoto action_125
action_94 (21) = happyGoto action_50
action_94 _ = happyFail

action_95 (27) = happyShift action_51
action_95 (28) = happyShift action_52
action_95 (32) = happyShift action_53
action_95 (39) = happyShift action_54
action_95 (50) = happyShift action_55
action_95 (56) = happyShift action_56
action_95 (59) = happyShift action_57
action_95 (63) = happyShift action_58
action_95 (64) = happyShift action_59
action_95 (77) = happyShift action_60
action_95 (78) = happyShift action_61
action_95 (20) = happyGoto action_124
action_95 (21) = happyGoto action_50
action_95 _ = happyFail

action_96 (27) = happyShift action_51
action_96 (28) = happyShift action_52
action_96 (32) = happyShift action_53
action_96 (39) = happyShift action_54
action_96 (50) = happyShift action_55
action_96 (56) = happyShift action_56
action_96 (59) = happyShift action_57
action_96 (63) = happyShift action_58
action_96 (64) = happyShift action_59
action_96 (77) = happyShift action_60
action_96 (78) = happyShift action_61
action_96 (20) = happyGoto action_123
action_96 (21) = happyGoto action_50
action_96 _ = happyFail

action_97 (27) = happyShift action_51
action_97 (28) = happyShift action_52
action_97 (32) = happyShift action_53
action_97 (39) = happyShift action_54
action_97 (50) = happyShift action_55
action_97 (56) = happyShift action_56
action_97 (59) = happyShift action_57
action_97 (63) = happyShift action_58
action_97 (64) = happyShift action_59
action_97 (77) = happyShift action_60
action_97 (78) = happyShift action_61
action_97 (20) = happyGoto action_122
action_97 (21) = happyGoto action_50
action_97 _ = happyFail

action_98 (27) = happyShift action_51
action_98 (28) = happyShift action_52
action_98 (32) = happyShift action_53
action_98 (39) = happyShift action_54
action_98 (50) = happyShift action_55
action_98 (56) = happyShift action_56
action_98 (59) = happyShift action_57
action_98 (63) = happyShift action_58
action_98 (64) = happyShift action_59
action_98 (77) = happyShift action_60
action_98 (78) = happyShift action_61
action_98 (20) = happyGoto action_121
action_98 (21) = happyGoto action_50
action_98 _ = happyFail

action_99 (27) = happyShift action_51
action_99 (28) = happyShift action_52
action_99 (32) = happyShift action_53
action_99 (39) = happyShift action_54
action_99 (50) = happyShift action_55
action_99 (56) = happyShift action_56
action_99 (59) = happyShift action_57
action_99 (63) = happyShift action_58
action_99 (64) = happyShift action_59
action_99 (77) = happyShift action_60
action_99 (78) = happyShift action_61
action_99 (20) = happyGoto action_120
action_99 (21) = happyGoto action_50
action_99 _ = happyFail

action_100 (27) = happyShift action_51
action_100 (28) = happyShift action_52
action_100 (32) = happyShift action_53
action_100 (39) = happyShift action_54
action_100 (50) = happyShift action_55
action_100 (56) = happyShift action_56
action_100 (59) = happyShift action_57
action_100 (63) = happyShift action_58
action_100 (64) = happyShift action_59
action_100 (77) = happyShift action_60
action_100 (78) = happyShift action_61
action_100 (20) = happyGoto action_119
action_100 (21) = happyGoto action_50
action_100 _ = happyFail

action_101 (27) = happyShift action_51
action_101 (28) = happyShift action_52
action_101 (32) = happyShift action_53
action_101 (39) = happyShift action_54
action_101 (50) = happyShift action_55
action_101 (56) = happyShift action_56
action_101 (59) = happyShift action_57
action_101 (63) = happyShift action_58
action_101 (64) = happyShift action_59
action_101 (77) = happyShift action_60
action_101 (78) = happyShift action_61
action_101 (20) = happyGoto action_118
action_101 (21) = happyGoto action_50
action_101 _ = happyFail

action_102 (27) = happyShift action_51
action_102 (28) = happyShift action_52
action_102 (32) = happyShift action_53
action_102 (39) = happyShift action_54
action_102 (50) = happyShift action_55
action_102 (56) = happyShift action_56
action_102 (59) = happyShift action_57
action_102 (63) = happyShift action_58
action_102 (64) = happyShift action_59
action_102 (77) = happyShift action_60
action_102 (78) = happyShift action_61
action_102 (20) = happyGoto action_117
action_102 (21) = happyGoto action_50
action_102 _ = happyFail

action_103 (27) = happyShift action_51
action_103 (28) = happyShift action_52
action_103 (32) = happyShift action_53
action_103 (39) = happyShift action_54
action_103 (50) = happyShift action_55
action_103 (56) = happyShift action_56
action_103 (59) = happyShift action_57
action_103 (63) = happyShift action_58
action_103 (64) = happyShift action_59
action_103 (77) = happyShift action_60
action_103 (78) = happyShift action_61
action_103 (20) = happyGoto action_116
action_103 (21) = happyGoto action_50
action_103 _ = happyFail

action_104 (27) = happyShift action_51
action_104 (28) = happyShift action_52
action_104 (32) = happyShift action_53
action_104 (39) = happyShift action_54
action_104 (50) = happyShift action_55
action_104 (56) = happyShift action_56
action_104 (59) = happyShift action_57
action_104 (63) = happyShift action_58
action_104 (64) = happyShift action_59
action_104 (77) = happyShift action_60
action_104 (78) = happyShift action_61
action_104 (20) = happyGoto action_115
action_104 (21) = happyGoto action_50
action_104 _ = happyFail

action_105 (27) = happyShift action_51
action_105 (28) = happyShift action_52
action_105 (32) = happyShift action_53
action_105 (39) = happyShift action_54
action_105 (50) = happyShift action_55
action_105 (56) = happyShift action_56
action_105 (59) = happyShift action_57
action_105 (63) = happyShift action_58
action_105 (64) = happyShift action_59
action_105 (77) = happyShift action_60
action_105 (78) = happyShift action_61
action_105 (20) = happyGoto action_114
action_105 (21) = happyGoto action_50
action_105 _ = happyFail

action_106 (27) = happyShift action_51
action_106 (28) = happyShift action_52
action_106 (32) = happyShift action_53
action_106 (39) = happyShift action_54
action_106 (50) = happyShift action_55
action_106 (56) = happyShift action_56
action_106 (59) = happyShift action_57
action_106 (63) = happyShift action_58
action_106 (64) = happyShift action_59
action_106 (77) = happyShift action_60
action_106 (78) = happyShift action_61
action_106 (20) = happyGoto action_113
action_106 (21) = happyGoto action_50
action_106 _ = happyFail

action_107 (28) = happyShift action_112
action_107 _ = happyFail

action_108 (29) = happyShift action_93
action_108 (30) = happyShift action_94
action_108 (31) = happyShift action_95
action_108 (32) = happyShift action_96
action_108 (33) = happyShift action_97
action_108 (34) = happyShift action_98
action_108 (35) = happyShift action_99
action_108 (36) = happyShift action_111
action_108 (37) = happyShift action_100
action_108 (38) = happyShift action_101
action_108 (46) = happyShift action_102
action_108 (47) = happyShift action_103
action_108 (48) = happyShift action_104
action_108 (49) = happyShift action_105
action_108 _ = happyFail

action_109 (40) = happyShift action_110
action_109 _ = happyFail

action_110 (41) = happyShift action_168
action_110 _ = happyFail

action_111 _ = happyReduce_17

action_112 (36) = happyShift action_167
action_112 _ = happyFail

action_113 (29) = happyShift action_93
action_113 (30) = happyShift action_94
action_113 (31) = happyShift action_95
action_113 (32) = happyShift action_96
action_113 (33) = happyShift action_97
action_113 (34) = happyShift action_98
action_113 (35) = happyShift action_99
action_113 (37) = happyShift action_100
action_113 (38) = happyShift action_101
action_113 (46) = happyShift action_102
action_113 (47) = happyShift action_103
action_113 (48) = happyShift action_104
action_113 (49) = happyShift action_105
action_113 _ = happyReduce_37

action_114 (29) = happyShift action_93
action_114 (30) = happyShift action_94
action_114 (31) = happyShift action_95
action_114 (32) = happyShift action_96
action_114 (33) = happyShift action_97
action_114 (34) = happyShift action_98
action_114 (35) = happyShift action_99
action_114 (37) = happyShift action_100
action_114 (38) = happyShift action_101
action_114 (46) = happyShift action_102
action_114 (47) = happyShift action_103
action_114 (48) = happyShift action_104
action_114 (49) = happyShift action_105
action_114 _ = happyReduce_60

action_115 (29) = happyShift action_93
action_115 (30) = happyShift action_94
action_115 (31) = happyShift action_95
action_115 (32) = happyShift action_96
action_115 (33) = happyShift action_97
action_115 (34) = happyShift action_98
action_115 (35) = happyShift action_99
action_115 (37) = happyShift action_100
action_115 (38) = happyShift action_101
action_115 (46) = happyShift action_102
action_115 (47) = happyShift action_103
action_115 (48) = happyShift action_104
action_115 (49) = happyShift action_105
action_115 _ = happyReduce_59

action_116 (29) = happyShift action_93
action_116 (30) = happyShift action_94
action_116 (31) = happyShift action_95
action_116 (32) = happyShift action_96
action_116 (33) = happyShift action_97
action_116 (34) = happyShift action_98
action_116 (35) = happyShift action_99
action_116 (37) = happyShift action_100
action_116 (38) = happyShift action_101
action_116 (46) = happyShift action_102
action_116 (47) = happyShift action_103
action_116 (48) = happyShift action_104
action_116 (49) = happyShift action_105
action_116 _ = happyReduce_50

action_117 (29) = happyShift action_93
action_117 (30) = happyShift action_94
action_117 (31) = happyShift action_95
action_117 (32) = happyShift action_96
action_117 (33) = happyShift action_97
action_117 (34) = happyShift action_98
action_117 (35) = happyShift action_99
action_117 (37) = happyShift action_100
action_117 (38) = happyShift action_101
action_117 (46) = happyShift action_102
action_117 (47) = happyShift action_103
action_117 (48) = happyShift action_104
action_117 (49) = happyShift action_105
action_117 _ = happyReduce_49

action_118 (29) = happyShift action_93
action_118 (30) = happyShift action_94
action_118 (31) = happyShift action_95
action_118 (32) = happyShift action_96
action_118 (33) = happyShift action_97
action_118 (34) = happyShift action_98
action_118 (35) = happyShift action_99
action_118 (37) = happyFail
action_118 (38) = happyFail
action_118 (46) = happyShift action_102
action_118 (47) = happyShift action_103
action_118 (48) = happyShift action_104
action_118 (49) = happyShift action_105
action_118 _ = happyReduce_56

action_119 (29) = happyShift action_93
action_119 (30) = happyShift action_94
action_119 (31) = happyShift action_95
action_119 (32) = happyShift action_96
action_119 (33) = happyShift action_97
action_119 (34) = happyShift action_98
action_119 (35) = happyShift action_99
action_119 (37) = happyFail
action_119 (38) = happyFail
action_119 (46) = happyShift action_102
action_119 (47) = happyShift action_103
action_119 (48) = happyShift action_104
action_119 (49) = happyShift action_105
action_119 _ = happyReduce_57

action_120 (29) = happyShift action_93
action_120 (30) = happyShift action_94
action_120 (34) = happyShift action_98
action_120 (46) = happyShift action_102
action_120 (47) = happyShift action_103
action_120 (48) = happyShift action_104
action_120 (49) = happyShift action_105
action_120 _ = happyReduce_55

action_121 (29) = happyShift action_93
action_121 (30) = happyShift action_94
action_121 (31) = happyShift action_95
action_121 (32) = happyShift action_96
action_121 (33) = happyShift action_97
action_121 (34) = happyShift action_98
action_121 (35) = happyShift action_99
action_121 (37) = happyShift action_100
action_121 (38) = happyShift action_101
action_121 (46) = happyShift action_102
action_121 (47) = happyShift action_103
action_121 (48) = happyShift action_104
action_121 (49) = happyShift action_105
action_121 _ = happyReduce_51

action_122 (29) = happyShift action_93
action_122 (30) = happyShift action_94
action_122 (34) = happyShift action_98
action_122 (46) = happyShift action_102
action_122 (47) = happyShift action_103
action_122 (48) = happyShift action_104
action_122 (49) = happyShift action_105
action_122 _ = happyReduce_54

action_123 (29) = happyShift action_93
action_123 (30) = happyShift action_94
action_123 (33) = happyShift action_97
action_123 (34) = happyShift action_98
action_123 (35) = happyShift action_99
action_123 (46) = happyShift action_102
action_123 (47) = happyShift action_103
action_123 (48) = happyShift action_104
action_123 (49) = happyShift action_105
action_123 _ = happyReduce_52

action_124 (29) = happyShift action_93
action_124 (30) = happyShift action_94
action_124 (33) = happyShift action_97
action_124 (34) = happyShift action_98
action_124 (35) = happyShift action_99
action_124 (46) = happyShift action_102
action_124 (47) = happyShift action_103
action_124 (48) = happyShift action_104
action_124 (49) = happyShift action_105
action_124 _ = happyReduce_53

action_125 (29) = happyShift action_93
action_125 (30) = happyShift action_94
action_125 (31) = happyShift action_95
action_125 (32) = happyShift action_96
action_125 (33) = happyShift action_97
action_125 (34) = happyShift action_98
action_125 (35) = happyShift action_99
action_125 (37) = happyShift action_100
action_125 (38) = happyShift action_101
action_125 (46) = happyShift action_102
action_125 (47) = happyShift action_103
action_125 (48) = happyShift action_104
action_125 (49) = happyShift action_105
action_125 _ = happyReduce_48

action_126 (29) = happyShift action_93
action_126 (30) = happyShift action_94
action_126 (31) = happyShift action_95
action_126 (32) = happyShift action_96
action_126 (33) = happyShift action_97
action_126 (34) = happyShift action_98
action_126 (35) = happyShift action_99
action_126 (37) = happyShift action_100
action_126 (38) = happyShift action_101
action_126 (46) = happyShift action_102
action_126 (47) = happyShift action_103
action_126 (48) = happyShift action_104
action_126 (49) = happyShift action_105
action_126 _ = happyReduce_47

action_127 (40) = happyShift action_166
action_127 _ = happyFail

action_128 _ = happyReduce_63

action_129 _ = happyReduce_62

action_130 _ = happyReduce_65

action_131 (51) = happyShift action_163
action_131 (52) = happyShift action_164
action_131 (53) = happyShift action_165
action_131 _ = happyReduce_72

action_132 (28) = happyShift action_52
action_132 (21) = happyGoto action_162
action_132 _ = happyFail

action_133 (27) = happyShift action_131
action_133 (24) = happyGoto action_161
action_133 _ = happyFail

action_134 (29) = happyShift action_93
action_134 (30) = happyShift action_94
action_134 (31) = happyShift action_95
action_134 (32) = happyShift action_96
action_134 (33) = happyShift action_97
action_134 (34) = happyShift action_98
action_134 (35) = happyShift action_99
action_134 (37) = happyShift action_100
action_134 (38) = happyShift action_101
action_134 (40) = happyShift action_160
action_134 (46) = happyShift action_102
action_134 (47) = happyShift action_103
action_134 (48) = happyShift action_104
action_134 (49) = happyShift action_105
action_134 _ = happyFail

action_135 _ = happyReduce_46

action_136 _ = happyReduce_28

action_137 (54) = happyShift action_12
action_137 (55) = happyShift action_13
action_137 (58) = happyShift action_14
action_137 (60) = happyShift action_15
action_137 (74) = happyShift action_16
action_137 (16) = happyGoto action_159
action_137 (17) = happyGoto action_82
action_137 _ = happyFail

action_138 (41) = happyShift action_158
action_138 _ = happyFail

action_139 (27) = happyShift action_51
action_139 (28) = happyShift action_69
action_139 (32) = happyShift action_53
action_139 (39) = happyShift action_54
action_139 (42) = happyShift action_157
action_139 (50) = happyShift action_55
action_139 (54) = happyShift action_12
action_139 (55) = happyShift action_13
action_139 (56) = happyShift action_56
action_139 (58) = happyShift action_14
action_139 (59) = happyShift action_57
action_139 (60) = happyShift action_15
action_139 (63) = happyShift action_58
action_139 (64) = happyShift action_59
action_139 (70) = happyShift action_71
action_139 (71) = happyShift action_72
action_139 (73) = happyShift action_73
action_139 (74) = happyShift action_16
action_139 (75) = happyShift action_74
action_139 (76) = happyShift action_75
action_139 (77) = happyShift action_60
action_139 (78) = happyShift action_61
action_139 (79) = happyShift action_76
action_139 (17) = happyGoto action_66
action_139 (20) = happyGoto action_67
action_139 (21) = happyGoto action_50
action_139 (26) = happyGoto action_68
action_139 _ = happyFail

action_140 (27) = happyShift action_51
action_140 (28) = happyShift action_52
action_140 (32) = happyShift action_53
action_140 (39) = happyShift action_54
action_140 (50) = happyShift action_55
action_140 (56) = happyShift action_56
action_140 (59) = happyShift action_57
action_140 (63) = happyShift action_58
action_140 (64) = happyShift action_59
action_140 (77) = happyShift action_60
action_140 (78) = happyShift action_61
action_140 (20) = happyGoto action_156
action_140 (21) = happyGoto action_50
action_140 _ = happyFail

action_141 (57) = happyShift action_155
action_141 _ = happyFail

action_142 (27) = happyShift action_51
action_142 (28) = happyShift action_52
action_142 (32) = happyShift action_53
action_142 (39) = happyShift action_54
action_142 (50) = happyShift action_55
action_142 (56) = happyShift action_56
action_142 (59) = happyShift action_57
action_142 (63) = happyShift action_58
action_142 (64) = happyShift action_59
action_142 (77) = happyShift action_60
action_142 (78) = happyShift action_61
action_142 (20) = happyGoto action_154
action_142 (21) = happyGoto action_50
action_142 _ = happyFail

action_143 (27) = happyShift action_51
action_143 (28) = happyShift action_52
action_143 (32) = happyShift action_53
action_143 (39) = happyShift action_54
action_143 (50) = happyShift action_55
action_143 (56) = happyShift action_56
action_143 (59) = happyShift action_57
action_143 (63) = happyShift action_58
action_143 (64) = happyShift action_59
action_143 (77) = happyShift action_60
action_143 (78) = happyShift action_61
action_143 (20) = happyGoto action_153
action_143 (21) = happyGoto action_50
action_143 _ = happyFail

action_144 (27) = happyShift action_51
action_144 (28) = happyShift action_52
action_144 (32) = happyShift action_53
action_144 (39) = happyShift action_54
action_144 (50) = happyShift action_55
action_144 (56) = happyShift action_56
action_144 (59) = happyShift action_57
action_144 (63) = happyShift action_58
action_144 (64) = happyShift action_59
action_144 (77) = happyShift action_60
action_144 (78) = happyShift action_61
action_144 (20) = happyGoto action_152
action_144 (21) = happyGoto action_50
action_144 _ = happyFail

action_145 (29) = happyShift action_93
action_145 (30) = happyShift action_94
action_145 (31) = happyShift action_95
action_145 (32) = happyShift action_96
action_145 (33) = happyShift action_97
action_145 (34) = happyShift action_98
action_145 (35) = happyShift action_99
action_145 (36) = happyShift action_151
action_145 (37) = happyShift action_100
action_145 (38) = happyShift action_101
action_145 (46) = happyShift action_102
action_145 (47) = happyShift action_103
action_145 (48) = happyShift action_104
action_145 (49) = happyShift action_105
action_145 _ = happyFail

action_146 (27) = happyShift action_51
action_146 (28) = happyShift action_52
action_146 (32) = happyShift action_53
action_146 (39) = happyShift action_54
action_146 (50) = happyShift action_55
action_146 (56) = happyShift action_56
action_146 (59) = happyShift action_57
action_146 (63) = happyShift action_58
action_146 (64) = happyShift action_59
action_146 (77) = happyShift action_60
action_146 (78) = happyShift action_61
action_146 (20) = happyGoto action_150
action_146 (21) = happyGoto action_50
action_146 _ = happyFail

action_147 _ = happyReduce_75

action_148 (45) = happyShift action_149
action_148 _ = happyFail

action_149 (27) = happyShift action_51
action_149 (28) = happyShift action_52
action_149 (32) = happyShift action_53
action_149 (39) = happyShift action_54
action_149 (50) = happyShift action_55
action_149 (56) = happyShift action_56
action_149 (59) = happyShift action_57
action_149 (63) = happyShift action_58
action_149 (64) = happyShift action_59
action_149 (77) = happyShift action_60
action_149 (78) = happyShift action_61
action_149 (20) = happyGoto action_179
action_149 (21) = happyGoto action_50
action_149 _ = happyFail

action_150 (29) = happyShift action_93
action_150 (30) = happyShift action_94
action_150 (31) = happyShift action_95
action_150 (32) = happyShift action_96
action_150 (33) = happyShift action_97
action_150 (34) = happyShift action_98
action_150 (35) = happyShift action_99
action_150 (36) = happyShift action_178
action_150 (37) = happyShift action_100
action_150 (38) = happyShift action_101
action_150 (46) = happyShift action_102
action_150 (47) = happyShift action_103
action_150 (48) = happyShift action_104
action_150 (49) = happyShift action_105
action_150 _ = happyFail

action_151 _ = happyReduce_80

action_152 (29) = happyShift action_93
action_152 (30) = happyShift action_94
action_152 (31) = happyShift action_95
action_152 (32) = happyShift action_96
action_152 (33) = happyShift action_97
action_152 (34) = happyShift action_98
action_152 (35) = happyShift action_99
action_152 (37) = happyShift action_100
action_152 (38) = happyShift action_101
action_152 (40) = happyShift action_177
action_152 (46) = happyShift action_102
action_152 (47) = happyShift action_103
action_152 (48) = happyShift action_104
action_152 (49) = happyShift action_105
action_152 _ = happyFail

action_153 (29) = happyShift action_93
action_153 (30) = happyShift action_94
action_153 (31) = happyShift action_95
action_153 (32) = happyShift action_96
action_153 (33) = happyShift action_97
action_153 (34) = happyShift action_98
action_153 (35) = happyShift action_99
action_153 (37) = happyShift action_100
action_153 (38) = happyShift action_101
action_153 (40) = happyShift action_176
action_153 (46) = happyShift action_102
action_153 (47) = happyShift action_103
action_153 (48) = happyShift action_104
action_153 (49) = happyShift action_105
action_153 _ = happyFail

action_154 (29) = happyShift action_93
action_154 (30) = happyShift action_94
action_154 (31) = happyShift action_95
action_154 (32) = happyShift action_96
action_154 (33) = happyShift action_97
action_154 (34) = happyShift action_98
action_154 (35) = happyShift action_99
action_154 (37) = happyShift action_100
action_154 (38) = happyShift action_101
action_154 (40) = happyShift action_175
action_154 (46) = happyShift action_102
action_154 (47) = happyShift action_103
action_154 (48) = happyShift action_104
action_154 (49) = happyShift action_105
action_154 _ = happyFail

action_155 (40) = happyShift action_173
action_155 (43) = happyShift action_174
action_155 _ = happyFail

action_156 (29) = happyShift action_93
action_156 (30) = happyShift action_94
action_156 (31) = happyShift action_95
action_156 (32) = happyShift action_96
action_156 (33) = happyShift action_97
action_156 (34) = happyShift action_98
action_156 (35) = happyShift action_99
action_156 (37) = happyShift action_100
action_156 (38) = happyShift action_101
action_156 (40) = happyShift action_172
action_156 (46) = happyShift action_102
action_156 (47) = happyShift action_103
action_156 (48) = happyShift action_104
action_156 (49) = happyShift action_105
action_156 _ = happyFail

action_157 _ = happyReduce_21

action_158 (25) = happyGoto action_171
action_158 _ = happyReduce_73

action_159 _ = happyReduce_27

action_160 _ = happyReduce_45

action_161 _ = happyReduce_67

action_162 (39) = happyShift action_170
action_162 _ = happyFail

action_163 _ = happyReduce_69

action_164 _ = happyReduce_70

action_165 _ = happyReduce_71

action_166 _ = happyReduce_41

action_167 _ = happyReduce_18

action_168 (25) = happyGoto action_169
action_168 _ = happyReduce_73

action_169 (27) = happyShift action_51
action_169 (28) = happyShift action_69
action_169 (32) = happyShift action_53
action_169 (39) = happyShift action_54
action_169 (42) = happyShift action_189
action_169 (50) = happyShift action_55
action_169 (54) = happyShift action_12
action_169 (55) = happyShift action_13
action_169 (56) = happyShift action_56
action_169 (58) = happyShift action_14
action_169 (59) = happyShift action_57
action_169 (60) = happyShift action_15
action_169 (63) = happyShift action_58
action_169 (64) = happyShift action_59
action_169 (70) = happyShift action_71
action_169 (71) = happyShift action_72
action_169 (73) = happyShift action_73
action_169 (74) = happyShift action_16
action_169 (75) = happyShift action_74
action_169 (76) = happyShift action_75
action_169 (77) = happyShift action_60
action_169 (78) = happyShift action_61
action_169 (79) = happyShift action_76
action_169 (17) = happyGoto action_66
action_169 (20) = happyGoto action_67
action_169 (21) = happyGoto action_50
action_169 (26) = happyGoto action_68
action_169 _ = happyFail

action_170 (27) = happyShift action_51
action_170 (28) = happyShift action_52
action_170 (32) = happyShift action_53
action_170 (39) = happyShift action_54
action_170 (50) = happyShift action_55
action_170 (56) = happyShift action_56
action_170 (59) = happyShift action_57
action_170 (63) = happyShift action_58
action_170 (64) = happyShift action_59
action_170 (77) = happyShift action_60
action_170 (78) = happyShift action_61
action_170 (18) = happyGoto action_188
action_170 (19) = happyGoto action_48
action_170 (20) = happyGoto action_49
action_170 (21) = happyGoto action_50
action_170 _ = happyReduce_34

action_171 (27) = happyShift action_51
action_171 (28) = happyShift action_69
action_171 (32) = happyShift action_53
action_171 (39) = happyShift action_54
action_171 (42) = happyShift action_187
action_171 (50) = happyShift action_55
action_171 (54) = happyShift action_12
action_171 (55) = happyShift action_13
action_171 (56) = happyShift action_56
action_171 (58) = happyShift action_14
action_171 (59) = happyShift action_57
action_171 (60) = happyShift action_15
action_171 (63) = happyShift action_58
action_171 (64) = happyShift action_59
action_171 (70) = happyShift action_71
action_171 (71) = happyShift action_72
action_171 (73) = happyShift action_73
action_171 (74) = happyShift action_16
action_171 (75) = happyShift action_74
action_171 (76) = happyShift action_75
action_171 (77) = happyShift action_60
action_171 (78) = happyShift action_61
action_171 (79) = happyShift action_76
action_171 (17) = happyGoto action_66
action_171 (20) = happyGoto action_67
action_171 (21) = happyGoto action_50
action_171 (26) = happyGoto action_68
action_171 _ = happyFail

action_172 (36) = happyShift action_186
action_172 _ = happyFail

action_173 (36) = happyShift action_185
action_173 _ = happyFail

action_174 (27) = happyShift action_51
action_174 (28) = happyShift action_52
action_174 (32) = happyShift action_53
action_174 (39) = happyShift action_54
action_174 (50) = happyShift action_55
action_174 (56) = happyShift action_56
action_174 (59) = happyShift action_57
action_174 (63) = happyShift action_58
action_174 (64) = happyShift action_59
action_174 (77) = happyShift action_60
action_174 (78) = happyShift action_61
action_174 (18) = happyGoto action_184
action_174 (19) = happyGoto action_48
action_174 (20) = happyGoto action_49
action_174 (21) = happyGoto action_50
action_174 _ = happyReduce_34

action_175 (36) = happyShift action_183
action_175 _ = happyFail

action_176 (41) = happyShift action_182
action_176 _ = happyFail

action_177 (41) = happyShift action_181
action_177 _ = happyFail

action_178 _ = happyReduce_77

action_179 (29) = happyShift action_93
action_179 (30) = happyShift action_94
action_179 (31) = happyShift action_95
action_179 (32) = happyShift action_96
action_179 (33) = happyShift action_97
action_179 (34) = happyShift action_98
action_179 (35) = happyShift action_99
action_179 (36) = happyShift action_180
action_179 (37) = happyShift action_100
action_179 (38) = happyShift action_101
action_179 (46) = happyShift action_102
action_179 (47) = happyShift action_103
action_179 (48) = happyShift action_104
action_179 (49) = happyShift action_105
action_179 _ = happyFail

action_180 _ = happyReduce_76

action_181 (25) = happyGoto action_193
action_181 _ = happyReduce_73

action_182 (25) = happyGoto action_192
action_182 _ = happyReduce_73

action_183 _ = happyReduce_81

action_184 (40) = happyShift action_191
action_184 _ = happyFail

action_185 _ = happyReduce_83

action_186 _ = happyReduce_84

action_187 _ = happyReduce_20

action_188 (40) = happyShift action_190
action_188 _ = happyFail

action_189 _ = happyReduce_19

action_190 _ = happyReduce_38

action_191 (36) = happyShift action_196
action_191 _ = happyFail

action_192 (27) = happyShift action_51
action_192 (28) = happyShift action_69
action_192 (32) = happyShift action_53
action_192 (39) = happyShift action_54
action_192 (42) = happyShift action_195
action_192 (50) = happyShift action_55
action_192 (54) = happyShift action_12
action_192 (55) = happyShift action_13
action_192 (56) = happyShift action_56
action_192 (58) = happyShift action_14
action_192 (59) = happyShift action_57
action_192 (60) = happyShift action_15
action_192 (63) = happyShift action_58
action_192 (64) = happyShift action_59
action_192 (70) = happyShift action_71
action_192 (71) = happyShift action_72
action_192 (73) = happyShift action_73
action_192 (74) = happyShift action_16
action_192 (75) = happyShift action_74
action_192 (76) = happyShift action_75
action_192 (77) = happyShift action_60
action_192 (78) = happyShift action_61
action_192 (79) = happyShift action_76
action_192 (17) = happyGoto action_66
action_192 (20) = happyGoto action_67
action_192 (21) = happyGoto action_50
action_192 (26) = happyGoto action_68
action_192 _ = happyFail

action_193 (27) = happyShift action_51
action_193 (28) = happyShift action_69
action_193 (32) = happyShift action_53
action_193 (39) = happyShift action_54
action_193 (42) = happyShift action_194
action_193 (50) = happyShift action_55
action_193 (54) = happyShift action_12
action_193 (55) = happyShift action_13
action_193 (56) = happyShift action_56
action_193 (58) = happyShift action_14
action_193 (59) = happyShift action_57
action_193 (60) = happyShift action_15
action_193 (63) = happyShift action_58
action_193 (64) = happyShift action_59
action_193 (70) = happyShift action_71
action_193 (71) = happyShift action_72
action_193 (73) = happyShift action_73
action_193 (74) = happyShift action_16
action_193 (75) = happyShift action_74
action_193 (76) = happyShift action_75
action_193 (77) = happyShift action_60
action_193 (78) = happyShift action_61
action_193 (79) = happyShift action_76
action_193 (17) = happyGoto action_66
action_193 (20) = happyGoto action_67
action_193 (21) = happyGoto action_50
action_193 (26) = happyGoto action_68
action_193 _ = happyFail

action_194 (72) = happyShift action_197
action_194 _ = happyFail

action_195 _ = happyReduce_79

action_196 _ = happyReduce_82

action_197 (41) = happyShift action_198
action_197 _ = happyFail

action_198 (25) = happyGoto action_199
action_198 _ = happyReduce_73

action_199 (27) = happyShift action_51
action_199 (28) = happyShift action_69
action_199 (32) = happyShift action_53
action_199 (39) = happyShift action_54
action_199 (42) = happyShift action_200
action_199 (50) = happyShift action_55
action_199 (54) = happyShift action_12
action_199 (55) = happyShift action_13
action_199 (56) = happyShift action_56
action_199 (58) = happyShift action_14
action_199 (59) = happyShift action_57
action_199 (60) = happyShift action_15
action_199 (63) = happyShift action_58
action_199 (64) = happyShift action_59
action_199 (70) = happyShift action_71
action_199 (71) = happyShift action_72
action_199 (73) = happyShift action_73
action_199 (74) = happyShift action_16
action_199 (75) = happyShift action_74
action_199 (76) = happyShift action_75
action_199 (77) = happyShift action_60
action_199 (78) = happyShift action_61
action_199 (79) = happyShift action_76
action_199 (17) = happyGoto action_66
action_199 (20) = happyGoto action_67
action_199 (21) = happyGoto action_50
action_199 (26) = happyGoto action_68
action_199 _ = happyFail

action_200 _ = happyReduce_78

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Prog happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 ([]
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_2 : happy_var_1
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 8 6 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Classdef happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_0  7 happyReduction_5
happyReduction_5  =  HappyAbsSyn7
		 ([]
	)

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  8 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  8 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  9 happyReduction_9
happyReduction_9 (HappyTerminal (TokenID happy_var_2))
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn9
		 (CPArg happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 9 happyReduction_10
happyReduction_10 ((HappyTerminal (TokenID happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (CMArg happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_0  10 happyReduction_11
happyReduction_11  =  HappyAbsSyn10
		 ([]
	)

happyReduce_12 = happySpecReduce_1  10 happyReduction_12
happyReduction_12 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  11 happyReduction_13
happyReduction_13 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  11 happyReduction_14
happyReduction_14 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_0  12 happyReduction_15
happyReduction_15  =  HappyAbsSyn12
		 ([]
	)

happyReduce_16 = happySpecReduce_2  12 happyReduction_16
happyReduction_16 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_2 : happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 13 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_2)) `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CPVar happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 13 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyTerminal (TokenID happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (COVar happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 8 13 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_2)) `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CMDecl happy_var_1 happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 8 13 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CTaskDecl happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 13 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_3)) `HappyStk`
	(HappyTerminal (TokenIntval happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CIsrDecl happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 4 13 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CResetDecl happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 13 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (CIdleDecl happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_0  14 happyReduction_24
happyReduction_24  =  HappyAbsSyn14
		 ([]
	)

happyReduce_25 = happySpecReduce_1  14 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  16 happyReduction_28
happyReduction_28 (HappyTerminal (TokenID happy_var_2))
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (MPArg happy_var_1 happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  17 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn17
		 (Int
	)

happyReduce_30 = happySpecReduce_1  17 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn17
		 (Char
	)

happyReduce_31 = happySpecReduce_1  17 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn17
		 (Bool
	)

happyReduce_32 = happySpecReduce_1  17 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn17
		 (Byte
	)

happyReduce_33 = happySpecReduce_1  17 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn17
		 (Void
	)

happyReduce_34 = happySpecReduce_0  18 happyReduction_34
happyReduction_34  =  HappyAbsSyn18
		 ([]
	)

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  19 happyReduction_36
happyReduction_36 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  19 happyReduction_37
happyReduction_37 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_3 : happy_var_1
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 7 20 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_4) `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	(HappyAbsSyn22  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AsyncExp happy_var_2 happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_2  20 happyReduction_39
happyReduction_39 (HappyAbsSyn21  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (PendExp happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  20 happyReduction_40
happyReduction_40 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (IdExp happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happyReduce 4 20 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (CallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 (HappyTerminal (TokenIntval happy_var_1))
	 =  HappyAbsSyn20
		 (IntExp happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 (HappyTerminal (TokenCharval happy_var_1))
	 =  HappyAbsSyn20
		 (CharExp happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 (HappyTerminal (TokenBoolval happy_var_1))
	 =  HappyAbsSyn20
		 (BoolExp happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happyReduce 4 20 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (RT_Rand happy_var_3
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_3  20 happyReduction_46
happyReduction_46 _
	_
	_
	 =  HappyAbsSyn20
		 (RT_Getc
	)

happyReduce_47 = happySpecReduce_3  20 happyReduction_47
happyReduction_47 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (EqExp happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  20 happyReduction_48
happyReduction_48 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (NotEqExp happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  20 happyReduction_49
happyReduction_49 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (MoreThanEqExp happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  20 happyReduction_50
happyReduction_50 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (LessThanEqExp happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  20 happyReduction_51
happyReduction_51 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (ModExp happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  20 happyReduction_52
happyReduction_52 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (MinusExp happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  20 happyReduction_53
happyReduction_53 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (PlusExp happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  20 happyReduction_54
happyReduction_54 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (MulExp happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  20 happyReduction_55
happyReduction_55 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (DivExp happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  20 happyReduction_56
happyReduction_56 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (MoreExp happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  20 happyReduction_57
happyReduction_57 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (LessExp happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_2  20 happyReduction_58
happyReduction_58 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (NotExp happy_var_2
	)
happyReduction_58 _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  20 happyReduction_59
happyReduction_59 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (AndExp happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  20 happyReduction_60
happyReduction_60 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (OrExp happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  20 happyReduction_61
happyReduction_61 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (NegExp happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  20 happyReduction_62
happyReduction_62 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  21 happyReduction_63
happyReduction_63 (HappyTerminal (TokenID happy_var_3))
	_
	(HappyTerminal (TokenID happy_var_1))
	 =  HappyAbsSyn21
		 (happy_var_1 : [happy_var_3]
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  21 happyReduction_64
happyReduction_64 (HappyTerminal (TokenID happy_var_1))
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_2  22 happyReduction_65
happyReduction_65 (HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_0  22 happyReduction_66
happyReduction_66  =  HappyAbsSyn22
		 (Usec 0
	)

happyReduce_67 = happySpecReduce_2  23 happyReduction_67
happyReduction_67 (HappyAbsSyn24  happy_var_2)
	_
	 =  HappyAbsSyn23
		 (happy_var_2
	)
happyReduction_67 _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_0  23 happyReduction_68
happyReduction_68  =  HappyAbsSyn23
		 (Usec 0
	)

happyReduce_69 = happySpecReduce_2  24 happyReduction_69
happyReduction_69 _
	(HappyTerminal (TokenIntval happy_var_1))
	 =  HappyAbsSyn24
		 (Usec happy_var_1
	)
happyReduction_69 _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_2  24 happyReduction_70
happyReduction_70 _
	(HappyTerminal (TokenIntval happy_var_1))
	 =  HappyAbsSyn24
		 (Msec happy_var_1
	)
happyReduction_70 _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_2  24 happyReduction_71
happyReduction_71 _
	(HappyTerminal (TokenIntval happy_var_1))
	 =  HappyAbsSyn24
		 (Sec happy_var_1
	)
happyReduction_71 _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  24 happyReduction_72
happyReduction_72 (HappyTerminal (TokenIntval happy_var_1))
	 =  HappyAbsSyn24
		 (Usec happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_0  25 happyReduction_73
happyReduction_73  =  HappyAbsSyn25
		 ([]
	)

happyReduce_74 = happySpecReduce_2  25 happyReduction_74
happyReduction_74 (HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_2 : happy_var_1
	)
happyReduction_74 _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  26 happyReduction_75
happyReduction_75 _
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn26
		 (ExpStmt happy_var_1
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happyReduce 5 26 happyReduction_76
happyReduction_76 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_2)) `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (MPVar happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_77 = happyReduce 4 26 happyReduction_77
happyReduction_77 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_78 = happyReduce 11 26 happyReduction_78
happyReduction_78 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn25  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_79 = happyReduce 7 26 happyReduction_79
happyReduction_79 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (For happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_80 = happySpecReduce_3  26 happyReduction_80
happyReduction_80 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (Return happy_var_2
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happyReduce 5 26 happyReduction_81
happyReduction_81 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (RT_Sleep happy_var_3
	) `HappyStk` happyRest

happyReduce_82 = happyReduce 7 26 happyReduction_82
happyReduction_82 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenStrval happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (RT_Printf happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_83 = happyReduce 5 26 happyReduction_83
happyReduction_83 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenStrval happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (RT_Printf happy_var_3 []
	) `HappyStk` happyRest

happyReduce_84 = happyReduce 5 26 happyReduction_84
happyReduction_84 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (RT_Putc happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 80 80 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntval happy_dollar_dollar -> cont 27;
	TokenID happy_dollar_dollar -> cont 28;
	TokenEq -> cont 29;
	TokenNotEq -> cont 30;
	TokenAdd -> cont 31;
	TokenSub -> cont 32;
	TokenMul -> cont 33;
	TokenMod -> cont 34;
	TokenDiv -> cont 35;
	TokenSC -> cont 36;
	TokenLT -> cont 37;
	TokenGT -> cont 38;
	TokenLB -> cont 39;
	TokenRB -> cont 40;
	TokenLCB -> cont 41;
	TokenRCB -> cont 42;
	TokenComma -> cont 43;
	TokenDot -> cont 44;
	TokenAssign -> cont 45;
	TokenMoreThanEq -> cont 46;
	TokenLessThanEq -> cont 47;
	TokenAnd -> cont 48;
	TokenOr -> cont 49;
	TokenNot -> cont 50;
	TokenUsec -> cont 51;
	TokenMsec -> cont 52;
	TokenSec -> cont 53;
	TokenInt -> cont 54;
	TokenChar -> cont 55;
	TokenCharval happy_dollar_dollar -> cont 56;
	TokenStrval happy_dollar_dollar -> cont 57;
	TokenBool -> cont 58;
	TokenBoolval happy_dollar_dollar -> cont 59;
	TokenVoid -> cont 60;
	TokenTask -> cont 61;
	TokenISR -> cont 62;
	TokenPend -> cont 63;
	TokenAsync -> cont 64;
	TokenAfter -> cont 65;
	TokenBefore -> cont 66;
	TokenReset -> cont 67;
	TokenIdle -> cont 68;
	TokenClass -> cont 69;
	TokenReturn -> cont 70;
	TokenIf -> cont 71;
	TokenElse -> cont 72;
	TokenFor -> cont 73;
	TokenByte -> cont 74;
	TokenRT_Sleep -> cont 75;
	TokenRT_Printf -> cont 76;
	TokenRT_Rand -> cont 77;
	TokenRT_Getc -> cont 78;
	TokenRT_Putc -> cont 79;
	_ -> happyError' (tk:tks)
	}

happyError_ 80 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure    = return
    a <*> b = (fmap id a) <*> b
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

prog tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

parseExpr :: String -> Prog
parseExpr = prog . scanTokens
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}

{-# LINE 46 "templates\\GenericTemplate.hs" #-}








{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
