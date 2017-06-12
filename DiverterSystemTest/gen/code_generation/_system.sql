-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'DiverterSystemTest',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'Sequence',
	'',
	0);
INSERT INTO EP_PKG
	VALUES (3,
	1,
	1,
	'System',
	'',
	0);
INSERT INTO PE_PE
	VALUES (4,
	1,
	3,
	0,
	2);
INSERT INTO C_C
	VALUES (4,
	0,
	0,
	'Client',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (5,
	4,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (6,
	7,
	0,
	5);
INSERT INTO C_R
	VALUES (6,
	'DiverterClient',
	'',
	'Unnamed Interface',
	'Client::Port1::DiverterClient');
INSERT INTO SPR_REP
	VALUES (8,
	9,
	6);
INSERT INTO SPR_RS
	VALUES (8,
	'divert_pending',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (10,
	8);
INSERT INTO ACT_ACT
	VALUES (10,
	'signal',
	0,
	11,
	0,
	0,
	'Port1::DiverterClient::divert_pending',
	0);
INSERT INTO ACT_BLK
	VALUES (11,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	10,
	0);
INSERT INTO SPR_REP
	VALUES (12,
	13,
	6);
INSERT INTO SPR_RS
	VALUES (12,
	'diverter_ready',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (14,
	12);
INSERT INTO ACT_ACT
	VALUES (14,
	'signal',
	0,
	15,
	0,
	0,
	'Port1::DiverterClient::diverter_ready',
	0);
INSERT INTO ACT_BLK
	VALUES (15,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	14,
	0);
INSERT INTO SPR_REP
	VALUES (16,
	17,
	6);
INSERT INTO SPR_RS
	VALUES (16,
	'xtfr_jog_switch_position_changed',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (18,
	16);
INSERT INTO ACT_ACT
	VALUES (18,
	'signal',
	0,
	19,
	0,
	0,
	'Port1::DiverterClient::xtfr_jog_switch_position_changed',
	0);
INSERT INTO ACT_BLK
	VALUES (19,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	18,
	0);
INSERT INTO SPR_REP
	VALUES (20,
	21,
	6);
INSERT INTO SPR_RO
	VALUES (20,
	'request_status',
	'True - Diverter Ready, False - Diverter Not Ready
Operation returns the current state of the diverter system.  
',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (22,
	20);
INSERT INTO ACT_ACT
	VALUES (22,
	'interface operation',
	0,
	23,
	0,
	0,
	'Port1::DiverterClient::request_status',
	0);
INSERT INTO ACT_BLK
	VALUES (23,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	22,
	0);
INSERT INTO SPR_REP
	VALUES (24,
	25,
	6);
INSERT INTO SPR_RO
	VALUES (24,
	'get_xtfr_jog_switch_position',
	'',
	'select any jog_switch from instances of JS;
return jog_switch.position;

//return JogSwitchPosition::Stop;
',
	1);
INSERT INTO ACT_ROB
	VALUES (26,
	24);
INSERT INTO ACT_ACT
	VALUES (26,
	'interface operation',
	0,
	27,
	0,
	0,
	'Port1::DiverterClient::get_xtfr_jog_switch_position',
	0);
INSERT INTO ACT_BLK
	VALUES (27,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	41,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	26,
	0);
INSERT INTO ACT_SMT
	VALUES (28,
	27,
	29,
	1,
	1,
	'Port1::DiverterClient::get_xtfr_jog_switch_position line: 1');
INSERT INTO ACT_FIO
	VALUES (28,
	30,
	1,
	'any',
	31,
	1,
	41);
INSERT INTO ACT_SMT
	VALUES (29,
	27,
	0,
	2,
	1,
	'Port1::DiverterClient::get_xtfr_jog_switch_position line: 2');
INSERT INTO ACT_RET
	VALUES (29,
	32);
INSERT INTO V_VAL
	VALUES (33,
	0,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	34,
	27);
INSERT INTO V_IRF
	VALUES (33,
	30);
INSERT INTO V_VAL
	VALUES (32,
	0,
	0,
	2,
	19,
	26,
	0,
	0,
	0,
	0,
	35,
	27);
INSERT INTO V_AVL
	VALUES (32,
	33,
	31,
	36);
INSERT INTO V_VAR
	VALUES (30,
	27,
	'jog_switch',
	1,
	34);
INSERT INTO V_INT
	VALUES (30,
	0,
	31);
INSERT INTO PE_PE
	VALUES (37,
	1,
	0,
	4,
	7);
INSERT INTO EP_PKG
	VALUES (37,
	0,
	1,
	'Test',
	'',
	0);
INSERT INTO PE_PE
	VALUES (38,
	1,
	37,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (38,
	0,
	'JogDriveSide',
	'',
	'select any jog_switch from instances of JS;
jog_switch.position = Jog_Switch_Position::Drive;

Port1::xtfr_jog_switch_position_changed(new_position: jog_switch.position);
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (40,
	38);
INSERT INTO ACT_ACT
	VALUES (40,
	'function',
	0,
	41,
	0,
	0,
	'JogDriveSide',
	0);
INSERT INTO ACT_BLK
	VALUES (41,
	1,
	0,
	0,
	'Port1',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	23,
	0,
	40,
	0);
INSERT INTO ACT_SMT
	VALUES (42,
	41,
	43,
	1,
	1,
	'JogDriveSide line: 1');
INSERT INTO ACT_FIO
	VALUES (42,
	44,
	1,
	'any',
	31,
	1,
	41);
INSERT INTO ACT_SMT
	VALUES (43,
	41,
	45,
	2,
	1,
	'JogDriveSide line: 2');
INSERT INTO ACT_AI
	VALUES (43,
	46,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (45,
	41,
	0,
	4,
	1,
	'JogDriveSide line: 4');
INSERT INTO ACT_SGN
	VALUES (45,
	4,
	8,
	4,
	1,
	0,
	16,
	0);
INSERT INTO V_VAL
	VALUES (48,
	1,
	0,
	2,
	1,
	10,
	0,
	0,
	0,
	0,
	34,
	41);
INSERT INTO V_IRF
	VALUES (48,
	44);
INSERT INTO V_VAL
	VALUES (47,
	1,
	0,
	2,
	12,
	19,
	0,
	0,
	0,
	0,
	35,
	41);
INSERT INTO V_AVL
	VALUES (47,
	48,
	31,
	36);
INSERT INTO V_VAL
	VALUES (46,
	0,
	0,
	2,
	44,
	48,
	0,
	0,
	0,
	0,
	35,
	41);
INSERT INTO V_LEN
	VALUES (46,
	49,
	2,
	23);
INSERT INTO V_VAL
	VALUES (50,
	0,
	0,
	4,
	55,
	64,
	0,
	0,
	0,
	0,
	34,
	41);
INSERT INTO V_IRF
	VALUES (50,
	44);
INSERT INTO V_VAL
	VALUES (51,
	0,
	0,
	4,
	66,
	73,
	0,
	0,
	0,
	0,
	35,
	41);
INSERT INTO V_AVL
	VALUES (51,
	50,
	31,
	36);
INSERT INTO V_PAR
	VALUES (51,
	45,
	0,
	'new_position',
	0,
	4,
	41);
INSERT INTO V_VAR
	VALUES (44,
	41,
	'jog_switch',
	1,
	34);
INSERT INTO V_INT
	VALUES (44,
	0,
	31);
INSERT INTO PE_PE
	VALUES (52,
	1,
	37,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (52,
	0,
	'JogOperatorSide',
	'',
	'select any jog_switch from instances of JS;
jog_switch.position = Jog_Switch_Position::Operator;

Port1::xtfr_jog_switch_position_changed(new_position: jog_switch.position);
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (53,
	52);
INSERT INTO ACT_ACT
	VALUES (53,
	'function',
	0,
	54,
	0,
	0,
	'JogOperatorSide',
	0);
INSERT INTO ACT_BLK
	VALUES (54,
	1,
	0,
	0,
	'Port1',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	23,
	0,
	53,
	0);
INSERT INTO ACT_SMT
	VALUES (55,
	54,
	56,
	1,
	1,
	'JogOperatorSide line: 1');
INSERT INTO ACT_FIO
	VALUES (55,
	57,
	1,
	'any',
	31,
	1,
	41);
INSERT INTO ACT_SMT
	VALUES (56,
	54,
	58,
	2,
	1,
	'JogOperatorSide line: 2');
INSERT INTO ACT_AI
	VALUES (56,
	59,
	60,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (58,
	54,
	0,
	4,
	1,
	'JogOperatorSide line: 4');
INSERT INTO ACT_SGN
	VALUES (58,
	4,
	8,
	4,
	1,
	0,
	16,
	0);
INSERT INTO V_VAL
	VALUES (61,
	1,
	0,
	2,
	1,
	10,
	0,
	0,
	0,
	0,
	34,
	54);
INSERT INTO V_IRF
	VALUES (61,
	57);
INSERT INTO V_VAL
	VALUES (60,
	1,
	0,
	2,
	12,
	19,
	0,
	0,
	0,
	0,
	35,
	54);
INSERT INTO V_AVL
	VALUES (60,
	61,
	31,
	36);
INSERT INTO V_VAL
	VALUES (59,
	0,
	0,
	2,
	44,
	51,
	0,
	0,
	0,
	0,
	35,
	54);
INSERT INTO V_LEN
	VALUES (59,
	62,
	2,
	23);
INSERT INTO V_VAL
	VALUES (63,
	0,
	0,
	4,
	55,
	64,
	0,
	0,
	0,
	0,
	34,
	54);
INSERT INTO V_IRF
	VALUES (63,
	57);
INSERT INTO V_VAL
	VALUES (64,
	0,
	0,
	4,
	66,
	73,
	0,
	0,
	0,
	0,
	35,
	54);
INSERT INTO V_AVL
	VALUES (64,
	63,
	31,
	36);
INSERT INTO V_PAR
	VALUES (64,
	58,
	0,
	'new_position',
	0,
	4,
	41);
INSERT INTO V_VAR
	VALUES (57,
	54,
	'jog_switch',
	1,
	34);
INSERT INTO V_INT
	VALUES (57,
	0,
	31);
INSERT INTO PE_PE
	VALUES (65,
	1,
	37,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (65,
	0,
	'StopJogging',
	'',
	'select any jog_switch from instances of JS;
jog_switch.position = Jog_Switch_Position::Stop;

Port1::xtfr_jog_switch_position_changed(new_position: jog_switch.position);
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (66,
	65);
INSERT INTO ACT_ACT
	VALUES (66,
	'function',
	0,
	67,
	0,
	0,
	'StopJogging',
	0);
INSERT INTO ACT_BLK
	VALUES (67,
	1,
	0,
	0,
	'Port1',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	23,
	0,
	66,
	0);
INSERT INTO ACT_SMT
	VALUES (68,
	67,
	69,
	1,
	1,
	'StopJogging line: 1');
INSERT INTO ACT_FIO
	VALUES (68,
	70,
	1,
	'any',
	31,
	1,
	41);
INSERT INTO ACT_SMT
	VALUES (69,
	67,
	71,
	2,
	1,
	'StopJogging line: 2');
INSERT INTO ACT_AI
	VALUES (69,
	72,
	73,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (71,
	67,
	0,
	4,
	1,
	'StopJogging line: 4');
INSERT INTO ACT_SGN
	VALUES (71,
	4,
	8,
	4,
	1,
	0,
	16,
	0);
INSERT INTO V_VAL
	VALUES (74,
	1,
	0,
	2,
	1,
	10,
	0,
	0,
	0,
	0,
	34,
	67);
INSERT INTO V_IRF
	VALUES (74,
	70);
INSERT INTO V_VAL
	VALUES (73,
	1,
	0,
	2,
	12,
	19,
	0,
	0,
	0,
	0,
	35,
	67);
INSERT INTO V_AVL
	VALUES (73,
	74,
	31,
	36);
INSERT INTO V_VAL
	VALUES (72,
	0,
	0,
	2,
	44,
	47,
	0,
	0,
	0,
	0,
	35,
	67);
INSERT INTO V_LEN
	VALUES (72,
	75,
	2,
	23);
INSERT INTO V_VAL
	VALUES (76,
	0,
	0,
	4,
	55,
	64,
	0,
	0,
	0,
	0,
	34,
	67);
INSERT INTO V_IRF
	VALUES (76,
	70);
INSERT INTO V_VAL
	VALUES (77,
	0,
	0,
	4,
	66,
	73,
	0,
	0,
	0,
	0,
	35,
	67);
INSERT INTO V_AVL
	VALUES (77,
	76,
	31,
	36);
INSERT INTO V_PAR
	VALUES (77,
	71,
	0,
	'new_position',
	0,
	4,
	41);
INSERT INTO V_VAR
	VALUES (70,
	67,
	'jog_switch',
	1,
	34);
INSERT INTO V_INT
	VALUES (70,
	0,
	31);
INSERT INTO PE_PE
	VALUES (78,
	1,
	37,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (78,
	0,
	'Init',
	'',
	'select any jog_switch from instances of JS;
if empty jog_switch;
   create object instance jog_switch of JS;
   jog_switch.position = Jog_Switch_Position::Stop;
end if;
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (79,
	78);
INSERT INTO ACT_ACT
	VALUES (79,
	'function',
	0,
	80,
	0,
	0,
	'Init',
	0);
INSERT INTO ACT_BLK
	VALUES (80,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	41,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	79,
	0);
INSERT INTO ACT_SMT
	VALUES (81,
	80,
	82,
	1,
	1,
	'Init line: 1');
INSERT INTO ACT_FIO
	VALUES (81,
	83,
	1,
	'any',
	31,
	1,
	41);
INSERT INTO ACT_SMT
	VALUES (82,
	80,
	0,
	2,
	1,
	'Init line: 2');
INSERT INTO ACT_IF
	VALUES (82,
	84,
	85,
	0,
	0);
INSERT INTO V_VAL
	VALUES (86,
	0,
	0,
	2,
	10,
	19,
	0,
	0,
	0,
	0,
	34,
	80);
INSERT INTO V_IRF
	VALUES (86,
	83);
INSERT INTO V_VAL
	VALUES (85,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	80);
INSERT INTO V_UNY
	VALUES (85,
	86,
	'empty');
INSERT INTO V_VAR
	VALUES (83,
	80,
	'jog_switch',
	1,
	34);
INSERT INTO V_INT
	VALUES (83,
	0,
	31);
INSERT INTO ACT_BLK
	VALUES (84,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	4,
	3,
	41,
	0,
	0,
	0,
	0,
	0,
	0,
	4,
	26,
	0,
	79,
	0);
INSERT INTO ACT_SMT
	VALUES (88,
	84,
	89,
	3,
	4,
	'Init line: 3');
INSERT INTO ACT_CR
	VALUES (88,
	83,
	0,
	31,
	3,
	41);
INSERT INTO ACT_SMT
	VALUES (89,
	84,
	0,
	4,
	4,
	'Init line: 4');
INSERT INTO ACT_AI
	VALUES (89,
	90,
	91,
	0,
	0);
INSERT INTO V_VAL
	VALUES (92,
	1,
	0,
	4,
	4,
	13,
	0,
	0,
	0,
	0,
	34,
	84);
INSERT INTO V_IRF
	VALUES (92,
	83);
INSERT INTO V_VAL
	VALUES (91,
	1,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	35,
	84);
INSERT INTO V_AVL
	VALUES (91,
	92,
	31,
	36);
INSERT INTO V_VAL
	VALUES (90,
	0,
	0,
	4,
	47,
	50,
	0,
	0,
	0,
	0,
	35,
	84);
INSERT INTO V_LEN
	VALUES (90,
	75,
	4,
	26);
INSERT INTO PE_PE
	VALUES (31,
	1,
	37,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (31,
	'xtfr_jog_switch',
	1,
	'JS',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (36,
	31);
INSERT INTO O_BATTR
	VALUES (36,
	31);
INSERT INTO O_ATTR
	VALUES (36,
	31,
	0,
	'position',
	'',
	'',
	'position',
	0,
	35,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	31);
INSERT INTO O_ID
	VALUES (1,
	31);
INSERT INTO O_ID
	VALUES (2,
	31);
INSERT INTO PE_PE
	VALUES (93,
	1,
	3,
	0,
	21);
INSERT INTO CL_IC
	VALUES (93,
	94,
	0,
	0,
	0,
	'DiverterCompId',
	'Diverter::Design::Model::Diverter:DiverterCompId',
	'What do you think, does it work?');
INSERT INTO CL_POR
	VALUES (93,
	95,
	'Client',
	96);
INSERT INTO CL_IIR
	VALUES (97,
	98,
	96,
	0,
	'DiverterClient',
	'');
INSERT INTO CL_IP
	VALUES (97,
	'DiverterClient',
	'');
INSERT INTO CL_IPINS
	VALUES (99,
	97);
INSERT INTO CL_POR
	VALUES (93,
	100,
	'fngrs',
	101);
INSERT INTO CL_IIR
	VALUES (102,
	103,
	101,
	0,
	'PneumaticControlValve',
	'');
INSERT INTO CL_IR
	VALUES (102,
	0,
	'PneumaticControlValve',
	'');
INSERT INTO CL_POR
	VALUES (93,
	104,
	'xtfrcnvr',
	105);
INSERT INTO CL_IIR
	VALUES (106,
	107,
	105,
	0,
	'JogMotor',
	'');
INSERT INTO CL_IR
	VALUES (106,
	108,
	'JogMotor',
	'');
INSERT INTO CL_POR
	VALUES (93,
	109,
	'dvtpan',
	110);
INSERT INTO CL_IIR
	VALUES (111,
	112,
	110,
	0,
	'DivertMotor',
	'');
INSERT INTO CL_IR
	VALUES (111,
	0,
	'DivertMotor',
	'');
INSERT INTO CL_POR
	VALUES (93,
	113,
	'speed_ref',
	114);
INSERT INTO CL_IIR
	VALUES (115,
	116,
	114,
	0,
	'SpeedSignal',
	'');
INSERT INTO CL_IR
	VALUES (115,
	0,
	'SpeedSignal',
	'');
INSERT INTO CL_POR
	VALUES (93,
	117,
	'arblst',
	118);
INSERT INTO CL_IIR
	VALUES (119,
	120,
	118,
	0,
	'PneumaticControlValve',
	'');
INSERT INTO CL_IR
	VALUES (119,
	0,
	'PneumaticControlValve',
	'');
INSERT INTO CL_POR
	VALUES (93,
	0,
	'',
	121);
INSERT INTO CL_IIR
	VALUES (122,
	123,
	121,
	0,
	'JogMotor',
	'');
INSERT INTO CL_IR
	VALUES (122,
	124,
	'JogMotor',
	'');
INSERT INTO PE_PE
	VALUES (125,
	1,
	3,
	0,
	21);
INSERT INTO CL_IC
	VALUES (125,
	126,
	0,
	0,
	0,
	'VelocityControlDriveId',
	'VelocityControlDrive::Design::Velocity Control Drive:VelocityControlDriveId',
	'');
INSERT INTO CL_POR
	VALUES (125,
	127,
	'drive',
	128);
INSERT INTO CL_IIR
	VALUES (129,
	130,
	128,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IR
	VALUES (129,
	131,
	'VelocityControlDrive',
	'');
INSERT INTO CL_POR
	VALUES (125,
	132,
	'client',
	133);
INSERT INTO CL_IIR
	VALUES (134,
	135,
	133,
	0,
	'JogMotor',
	'');
INSERT INTO CL_IP
	VALUES (134,
	'JogMotor',
	'');
INSERT INTO CL_IPINS
	VALUES (108,
	134);
INSERT INTO PE_PE
	VALUES (136,
	1,
	3,
	0,
	21);
INSERT INTO CL_IC
	VALUES (136,
	137,
	0,
	0,
	0,
	'',
	'Intf_MotorDrive::HardwareInterface::VelocityControlDrive::TestComponents::prv_ExpectedResponse',
	'');
INSERT INTO CL_POR
	VALUES (136,
	138,
	'Port1',
	139);
INSERT INTO CL_IIR
	VALUES (140,
	141,
	139,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IP
	VALUES (140,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IPINS
	VALUES (131,
	140);
INSERT INTO PE_PE
	VALUES (142,
	1,
	3,
	0,
	21);
INSERT INTO CL_IC
	VALUES (142,
	126,
	0,
	0,
	0,
	'vcd2',
	'VelocityControlDrive::Design::Velocity Control Drive:vcd2',
	'');
INSERT INTO CL_POR
	VALUES (142,
	127,
	'drive',
	143);
INSERT INTO CL_IIR
	VALUES (144,
	130,
	143,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IR
	VALUES (144,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_POR
	VALUES (142,
	132,
	'client',
	145);
INSERT INTO CL_IIR
	VALUES (146,
	135,
	145,
	0,
	'JogMotor',
	'');
INSERT INTO CL_IP
	VALUES (146,
	'JogMotor',
	'');
INSERT INTO CL_IPINS
	VALUES (124,
	146);
INSERT INTO PE_PE
	VALUES (147,
	1,
	3,
	0,
	5);
INSERT INTO S_EE
	VALUES (147,
	'Architecture',
	'',
	'ARCH',
	0,
	'',
	'Architecture',
	1);
INSERT INTO S_BRG
	VALUES (148,
	147,
	'shutdown',
	'',
	0,
	39,
	'control stop;',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (149,
	148);
INSERT INTO ACT_ACT
	VALUES (149,
	'bridge',
	0,
	150,
	0,
	0,
	'Architecture::shutdown',
	0);
INSERT INTO ACT_BLK
	VALUES (150,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	149,
	0);
INSERT INTO ACT_SMT
	VALUES (151,
	150,
	0,
	1,
	1,
	'Architecture::shutdown line: 1');
INSERT INTO ACT_CTL
	VALUES (151);
INSERT INTO PE_PE
	VALUES (152,
	1,
	3,
	0,
	5);
INSERT INTO S_EE
	VALUES (152,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (153,
	152,
	'LogSuccess',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (154,
	153,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (156,
	153);
INSERT INTO ACT_ACT
	VALUES (156,
	'bridge',
	0,
	157,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (157,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	156,
	0);
INSERT INTO S_BRG
	VALUES (158,
	152,
	'LogFailure',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (159,
	158,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (160,
	158);
INSERT INTO ACT_ACT
	VALUES (160,
	'bridge',
	0,
	161,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (161,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	160,
	0);
INSERT INTO S_BRG
	VALUES (162,
	152,
	'LogInfo',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (163,
	162,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (164,
	162);
INSERT INTO ACT_ACT
	VALUES (164,
	'bridge',
	0,
	165,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (165,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	164,
	0);
INSERT INTO S_BRG
	VALUES (166,
	152,
	'LogDate',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (167,
	166,
	'd',
	168,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (169,
	166,
	'message',
	155,
	0,
	'',
	167,
	'');
INSERT INTO ACT_BRB
	VALUES (170,
	166);
INSERT INTO ACT_ACT
	VALUES (170,
	'bridge',
	0,
	171,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (171,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	170,
	0);
INSERT INTO S_BRG
	VALUES (172,
	152,
	'LogTime',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (173,
	172,
	't',
	174,
	0,
	'',
	175,
	'');
INSERT INTO S_BPARM
	VALUES (175,
	172,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (176,
	172);
INSERT INTO ACT_ACT
	VALUES (176,
	'bridge',
	0,
	177,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (177,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	176,
	0);
INSERT INTO S_BRG
	VALUES (178,
	152,
	'LogReal',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (179,
	178,
	'r',
	180,
	0,
	'',
	181,
	'');
INSERT INTO S_BPARM
	VALUES (181,
	178,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (182,
	178);
INSERT INTO ACT_ACT
	VALUES (182,
	'bridge',
	0,
	183,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (183,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	182,
	0);
INSERT INTO S_BRG
	VALUES (184,
	152,
	'LogInteger',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (185,
	184,
	'message',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (187,
	184);
INSERT INTO ACT_ACT
	VALUES (187,
	'bridge',
	0,
	188,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (188,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	187,
	0);
INSERT INTO PE_PE
	VALUES (189,
	1,
	3,
	0,
	5);
INSERT INTO S_EE
	VALUES (189,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (190,
	189,
	'current_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (191,
	190);
INSERT INTO ACT_ACT
	VALUES (191,
	'bridge',
	0,
	192,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (192,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	191,
	0);
INSERT INTO S_BRG
	VALUES (193,
	189,
	'create_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (194,
	193,
	'second',
	186,
	0,
	'',
	195,
	'');
INSERT INTO S_BPARM
	VALUES (196,
	193,
	'minute',
	186,
	0,
	'',
	197,
	'');
INSERT INTO S_BPARM
	VALUES (197,
	193,
	'hour',
	186,
	0,
	'',
	198,
	'');
INSERT INTO S_BPARM
	VALUES (198,
	193,
	'day',
	186,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (195,
	193,
	'month',
	186,
	0,
	'',
	196,
	'');
INSERT INTO S_BPARM
	VALUES (199,
	193,
	'year',
	186,
	0,
	'',
	194,
	'');
INSERT INTO ACT_BRB
	VALUES (200,
	193);
INSERT INTO ACT_ACT
	VALUES (200,
	'bridge',
	0,
	201,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (201,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	200,
	0);
INSERT INTO S_BRG
	VALUES (202,
	189,
	'get_second',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (203,
	202,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (204,
	202);
INSERT INTO ACT_ACT
	VALUES (204,
	'bridge',
	0,
	205,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (205,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	204,
	0);
INSERT INTO S_BRG
	VALUES (206,
	189,
	'get_minute',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (207,
	206,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (208,
	206);
INSERT INTO ACT_ACT
	VALUES (208,
	'bridge',
	0,
	209,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (209,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	208,
	0);
INSERT INTO S_BRG
	VALUES (210,
	189,
	'get_hour',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (211,
	210,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (212,
	210);
INSERT INTO ACT_ACT
	VALUES (212,
	'bridge',
	0,
	213,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (213,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	212,
	0);
INSERT INTO S_BRG
	VALUES (214,
	189,
	'get_day',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (215,
	214,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (216,
	214);
INSERT INTO ACT_ACT
	VALUES (216,
	'bridge',
	0,
	217,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (217,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	216,
	0);
INSERT INTO S_BRG
	VALUES (218,
	189,
	'get_month',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (219,
	218,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (220,
	218);
INSERT INTO ACT_ACT
	VALUES (220,
	'bridge',
	0,
	221,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (221,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	220,
	0);
INSERT INTO S_BRG
	VALUES (222,
	189,
	'get_year',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (223,
	222,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (224,
	222);
INSERT INTO ACT_ACT
	VALUES (224,
	'bridge',
	0,
	225,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (225,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	224,
	0);
INSERT INTO S_BRG
	VALUES (226,
	189,
	'current_clock',
	'',
	1,
	174,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (227,
	226);
INSERT INTO ACT_ACT
	VALUES (227,
	'bridge',
	0,
	228,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (228,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	227,
	0);
INSERT INTO S_BRG
	VALUES (229,
	189,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (231,
	229,
	'microseconds',
	186,
	0,
	'',
	232,
	'');
INSERT INTO S_BPARM
	VALUES (232,
	229,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (234,
	229);
INSERT INTO ACT_ACT
	VALUES (234,
	'bridge',
	0,
	235,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (235,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	234,
	0);
INSERT INTO S_BRG
	VALUES (236,
	189,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (237,
	236,
	'microseconds',
	186,
	0,
	'',
	238,
	'');
INSERT INTO S_BPARM
	VALUES (238,
	236,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (239,
	236);
INSERT INTO ACT_ACT
	VALUES (239,
	'bridge',
	0,
	240,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (240,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	239,
	0);
INSERT INTO S_BRG
	VALUES (241,
	189,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (242,
	241,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (243,
	241);
INSERT INTO ACT_ACT
	VALUES (243,
	'bridge',
	0,
	244,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (244,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	243,
	0);
INSERT INTO S_BRG
	VALUES (245,
	189,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (246,
	245,
	'timer_inst_ref',
	230,
	0,
	'',
	247,
	'');
INSERT INTO S_BPARM
	VALUES (247,
	245,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (248,
	245);
INSERT INTO ACT_ACT
	VALUES (248,
	'bridge',
	0,
	249,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (249,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	248,
	0);
INSERT INTO S_BRG
	VALUES (250,
	189,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (251,
	250,
	'timer_inst_ref',
	230,
	0,
	'',
	252,
	'');
INSERT INTO S_BPARM
	VALUES (252,
	250,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (253,
	250);
INSERT INTO ACT_ACT
	VALUES (253,
	'bridge',
	0,
	254,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (254,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	253,
	0);
INSERT INTO S_BRG
	VALUES (255,
	189,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (256,
	255,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (257,
	255);
INSERT INTO ACT_ACT
	VALUES (257,
	'bridge',
	0,
	258,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (258,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	257,
	0);
INSERT INTO PE_PE
	VALUES (108,
	1,
	3,
	0,
	22);
INSERT INTO C_SF
	VALUES (108,
	107,
	135,
	'',
	'Velocity Control Drive::client::JogMotor -o)- Diverter::xtfrcnvr::JogMotor');
INSERT INTO PE_PE
	VALUES (99,
	1,
	3,
	0,
	22);
INSERT INTO C_SF
	VALUES (99,
	6,
	98,
	'',
	'Diverter::Client::DiverterClient -o)- Client::Port1::DiverterClient');
INSERT INTO PE_PE
	VALUES (131,
	1,
	3,
	0,
	22);
INSERT INTO C_SF
	VALUES (131,
	130,
	141,
	'',
	'prv_ExpectedResponse::Port1::VelocityControlDrive -o)- Velocity Control Drive::drive::VelocityControlDrive');
INSERT INTO PE_PE
	VALUES (124,
	1,
	3,
	0,
	22);
INSERT INTO C_SF
	VALUES (124,
	123,
	135,
	'',
	'Velocity Control Drive::client::JogMotor -o)- Diverter::Port1::JogMotor');
INSERT INTO PE_PE
	VALUES (39,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (39,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (39,
	0);
INSERT INTO PE_PE
	VALUES (87,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (87,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (87,
	1);
INSERT INTO PE_PE
	VALUES (186,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (186,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (186,
	2);
INSERT INTO PE_PE
	VALUES (180,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (180,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (180,
	3);
INSERT INTO PE_PE
	VALUES (155,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (155,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (155,
	4);
INSERT INTO PE_PE
	VALUES (259,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (259,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (259,
	5);
INSERT INTO PE_PE
	VALUES (260,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (260,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (260,
	6);
INSERT INTO PE_PE
	VALUES (261,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (261,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (261,
	7);
INSERT INTO PE_PE
	VALUES (34,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (34,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (34,
	8);
INSERT INTO PE_PE
	VALUES (262,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (262,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (262,
	9);
INSERT INTO PE_PE
	VALUES (233,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (233,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (233,
	10);
INSERT INTO PE_PE
	VALUES (263,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (263,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (263,
	11);
INSERT INTO PE_PE
	VALUES (264,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (264,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (264,
	12);
INSERT INTO PE_PE
	VALUES (265,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (265,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (265,
	13);
INSERT INTO PE_PE
	VALUES (168,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (168,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (168,
	263,
	1);
INSERT INTO PE_PE
	VALUES (230,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (230,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (230,
	264,
	3);
INSERT INTO PE_PE
	VALUES (174,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (174,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (174,
	263,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (417,
	'Intf_MotorDrive',
	1);
INSERT INTO EP_PKG
	VALUES (418,
	417,
	417,
	'ClientInterface',
	'',
	0);
INSERT INTO PE_PE
	VALUES (419,
	1,
	418,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (419,
	0,
	417,
	'JogMotor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (420,
	1,
	419,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (420,
	0,
	417,
	'TestComponents',
	'',
	0);
INSERT INTO PE_PE
	VALUES (421,
	1,
	420,
	0,
	2);
INSERT INTO C_C
	VALUES (421,
	0,
	0,
	'prv_JogMotor_ExpResp',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (422,
	421,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (423,
	280,
	0,
	422);
INSERT INTO C_P
	VALUES (423,
	'JogMotor',
	'Unnamed Interface',
	'',
	'prv_JogMotor_ExpResp::Port1::JogMotor');
INSERT INTO SPR_PEP
	VALUES (424,
	282,
	423);
INSERT INTO SPR_PS
	VALUES (424,
	'jog',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (425,
	424);
INSERT INTO ACT_ACT
	VALUES (425,
	'signal',
	0,
	426,
	0,
	0,
	'Port1::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (426,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	425,
	0);
INSERT INTO SPR_PEP
	VALUES (427,
	284,
	423);
INSERT INTO SPR_PS
	VALUES (427,
	'stop',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (428,
	427);
INSERT INTO ACT_ACT
	VALUES (428,
	'signal',
	0,
	429,
	0,
	0,
	'Port1::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (429,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	428,
	0);
INSERT INTO SPR_PEP
	VALUES (430,
	286,
	423);
INSERT INTO SPR_PS
	VALUES (430,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (431,
	430);
INSERT INTO ACT_ACT
	VALUES (431,
	'signal',
	0,
	432,
	0,
	0,
	'Port1::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (432,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	431,
	0);
INSERT INTO SPR_PEP
	VALUES (433,
	288,
	423);
INSERT INTO SPR_PS
	VALUES (433,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (434,
	433);
INSERT INTO ACT_ACT
	VALUES (434,
	'signal',
	0,
	435,
	0,
	0,
	'Port1::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (435,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	434,
	0);
INSERT INTO PE_PE
	VALUES (436,
	1,
	420,
	0,
	2);
INSERT INTO C_C
	VALUES (436,
	0,
	0,
	'rqd_JogMotor_IntfTest',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (437,
	436,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (438,
	280,
	0,
	437);
INSERT INTO C_R
	VALUES (438,
	'JogMotor',
	'',
	'Unnamed Interface',
	'rqd_JogMotor_IntfTest::Port1::JogMotor');
INSERT INTO SPR_REP
	VALUES (439,
	282,
	438);
INSERT INTO SPR_RS
	VALUES (439,
	'jog',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (440,
	439);
INSERT INTO ACT_ACT
	VALUES (440,
	'signal',
	0,
	441,
	0,
	0,
	'Port1::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (441,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	440,
	0);
INSERT INTO SPR_REP
	VALUES (442,
	284,
	438);
INSERT INTO SPR_RS
	VALUES (442,
	'stop',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (443,
	442);
INSERT INTO ACT_ACT
	VALUES (443,
	'signal',
	0,
	444,
	0,
	0,
	'Port1::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (444,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	443,
	0);
INSERT INTO SPR_REP
	VALUES (445,
	286,
	438);
INSERT INTO SPR_RS
	VALUES (445,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (446,
	445);
INSERT INTO ACT_ACT
	VALUES (446,
	'signal',
	0,
	447,
	0,
	0,
	'Port1::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (447,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	446,
	0);
INSERT INTO SPR_REP
	VALUES (448,
	288,
	438);
INSERT INTO SPR_RS
	VALUES (448,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (449,
	448);
INSERT INTO ACT_ACT
	VALUES (449,
	'signal',
	0,
	450,
	0,
	0,
	'Port1::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (450,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	449,
	0);
INSERT INTO PE_PE
	VALUES (280,
	1,
	419,
	0,
	6);
INSERT INTO C_I
	VALUES (280,
	0,
	'JogMotor',
	'');
INSERT INTO C_EP
	VALUES (282,
	280,
	-1,
	'jog',
	'');
INSERT INTO C_AS
	VALUES (282,
	'jog',
	'',
	0,
	0);
INSERT INTO C_PP
	VALUES (289,
	282,
	290,
	'direction',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (291,
	282,
	186,
	'velocity',
	'',
	0,
	'',
	289);
INSERT INTO C_PP
	VALUES (292,
	282,
	186,
	'acceleration',
	'',
	0,
	'',
	291);
INSERT INTO C_PP
	VALUES (293,
	282,
	186,
	'duration',
	'',
	0,
	'',
	292);
INSERT INTO C_EP
	VALUES (284,
	280,
	-1,
	'stop',
	'');
INSERT INTO C_AS
	VALUES (284,
	'stop',
	'',
	0,
	282);
INSERT INTO C_EP
	VALUES (286,
	280,
	-1,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.');
INSERT INTO C_AS
	VALUES (286,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	1,
	284);
INSERT INTO C_EP
	VALUES (288,
	280,
	-1,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.');
INSERT INTO C_AS
	VALUES (288,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	1,
	286);
INSERT INTO PE_PE
	VALUES (451,
	1,
	418,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (451,
	0,
	417,
	'Sequences',
	'',
	0);
INSERT INTO PE_PE
	VALUES (452,
	1,
	451,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (452,
	0,
	417,
	'Client_JogCommand_UnknownDuration',
	'',
	0);
INSERT INTO PE_PE
	VALUES (453,
	1,
	452,
	0,
	14);
INSERT INTO SQ_P
	VALUES (453,
	0);
INSERT INTO SQ_COP
	VALUES (453,
	436,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::rqd_JogMotor_IntfTest',
	'Client',
	'',
	1);
INSERT INTO PE_PE
	VALUES (454,
	1,
	452,
	0,
	14);
INSERT INTO SQ_P
	VALUES (454,
	0);
INSERT INTO SQ_COP
	VALUES (454,
	421,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::prv_JogMotor_ExpResp',
	'Provider',
	'',
	1);
INSERT INTO PE_PE
	VALUES (455,
	1,
	452,
	0,
	14);
INSERT INTO SQ_P
	VALUES (455,
	0);
INSERT INTO MSG_M
	VALUES (456,
	457,
	455,
	0);
INSERT INTO MSG_AM
	VALUES (456,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (456,
	286);
INSERT INTO MSG_M
	VALUES (458,
	457,
	455,
	0);
INSERT INTO MSG_AM
	VALUES (458,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_complete',
	'');
INSERT INTO MSG_SIG
	VALUES (458,
	288);
INSERT INTO SQ_LS
	VALUES (455,
	453,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (459,
	'',
	455,
	'');
INSERT INTO SQ_TS
	VALUES (460,
	461,
	459,
	'client controls jog duration',
	'');
INSERT INTO SQ_TM
	VALUES (461,
	'',
	455,
	'');
INSERT INTO PE_PE
	VALUES (457,
	1,
	452,
	0,
	14);
INSERT INTO SQ_P
	VALUES (457,
	0);
INSERT INTO MSG_M
	VALUES (462,
	455,
	457,
	0);
INSERT INTO MSG_AM
	VALUES (462,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (462,
	282);
INSERT INTO MSG_A
	VALUES (463,
	0,
	462,
	'direction',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (463,
	289);
INSERT INTO MSG_A
	VALUES (464,
	0,
	462,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (464,
	291);
INSERT INTO MSG_A
	VALUES (465,
	0,
	462,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (465,
	292);
INSERT INTO MSG_A
	VALUES (466,
	0,
	462,
	'duration = 0',
	'0',
	'',
	'Client is not specifying a jog duration.  The jog will continue until a stop 
command is issued by the client.',
	1);
INSERT INTO MSG_EPA
	VALUES (466,
	293);
INSERT INTO MSG_M
	VALUES (467,
	455,
	457,
	0);
INSERT INTO MSG_AM
	VALUES (467,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'stop',
	'');
INSERT INTO MSG_SIG
	VALUES (467,
	284);
INSERT INTO SQ_LS
	VALUES (457,
	454,
	'',
	0);
INSERT INTO PE_PE
	VALUES (462,
	1,
	452,
	0,
	17);
INSERT INTO PE_PE
	VALUES (456,
	1,
	452,
	0,
	17);
INSERT INTO PE_PE
	VALUES (467,
	1,
	452,
	0,
	17);
INSERT INTO PE_PE
	VALUES (458,
	1,
	452,
	0,
	17);
INSERT INTO PE_PE
	VALUES (468,
	1,
	451,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (468,
	0,
	417,
	'Client_JogCommand_KnownDurationInterupt',
	'',
	0);
INSERT INTO PE_PE
	VALUES (469,
	1,
	468,
	0,
	14);
INSERT INTO SQ_P
	VALUES (469,
	0);
INSERT INTO SQ_COP
	VALUES (469,
	436,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::rqd_JogMotor_IntfTest',
	'Client',
	'',
	1);
INSERT INTO PE_PE
	VALUES (470,
	1,
	468,
	0,
	14);
INSERT INTO SQ_P
	VALUES (470,
	0);
INSERT INTO SQ_COP
	VALUES (470,
	421,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::prv_JogMotor_ExpResp',
	'Provider',
	'',
	1);
INSERT INTO PE_PE
	VALUES (471,
	1,
	468,
	0,
	14);
INSERT INTO SQ_P
	VALUES (471,
	0);
INSERT INTO MSG_M
	VALUES (472,
	473,
	471,
	0);
INSERT INTO MSG_AM
	VALUES (472,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (472,
	286);
INSERT INTO MSG_M
	VALUES (474,
	473,
	471,
	0);
INSERT INTO MSG_AM
	VALUES (474,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_complete',
	'');
INSERT INTO MSG_SIG
	VALUES (474,
	288);
INSERT INTO SQ_LS
	VALUES (471,
	469,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (475,
	'',
	471,
	'');
INSERT INTO SQ_TM
	VALUES (476,
	'',
	471,
	'');
INSERT INTO SQ_TM
	VALUES (477,
	'',
	471,
	'');
INSERT INTO SQ_TS
	VALUES (478,
	479,
	477,
	'actual jog duration',
	'');
INSERT INTO SQ_TM
	VALUES (479,
	'',
	471,
	'');
INSERT INTO PE_PE
	VALUES (473,
	1,
	468,
	0,
	14);
INSERT INTO SQ_P
	VALUES (473,
	0);
INSERT INTO MSG_M
	VALUES (480,
	471,
	473,
	0);
INSERT INTO MSG_AM
	VALUES (480,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (480,
	282);
INSERT INTO MSG_A
	VALUES (481,
	0,
	480,
	'direction',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (481,
	289);
INSERT INTO MSG_A
	VALUES (482,
	0,
	480,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (482,
	291);
INSERT INTO MSG_A
	VALUES (483,
	0,
	480,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (483,
	292);
INSERT INTO MSG_A
	VALUES (484,
	0,
	480,
	'duration = 12000',
	'12000',
	'',
	'Client specifies a 12 second jog duration with the jog command.',
	1);
INSERT INTO MSG_EPA
	VALUES (484,
	293);
INSERT INTO MSG_M
	VALUES (485,
	471,
	473,
	0);
INSERT INTO MSG_AM
	VALUES (485,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'stop',
	'');
INSERT INTO MSG_SIG
	VALUES (485,
	284);
INSERT INTO SQ_LS
	VALUES (473,
	470,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (486,
	'',
	473,
	'');
INSERT INTO SQ_TS
	VALUES (487,
	488,
	486,
	'original jog duration',
	'');
INSERT INTO SQ_TM
	VALUES (489,
	'',
	473,
	'');
INSERT INTO SQ_TM
	VALUES (488,
	'',
	473,
	'');
INSERT INTO PE_PE
	VALUES (480,
	1,
	468,
	0,
	17);
INSERT INTO PE_PE
	VALUES (472,
	1,
	468,
	0,
	17);
INSERT INTO PE_PE
	VALUES (474,
	1,
	468,
	0,
	17);
INSERT INTO PE_PE
	VALUES (485,
	1,
	468,
	0,
	17);
INSERT INTO PE_PE
	VALUES (490,
	1,
	451,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (490,
	0,
	417,
	'Client_JogCommand_KnownDuration',
	'',
	0);
INSERT INTO PE_PE
	VALUES (491,
	1,
	490,
	0,
	14);
INSERT INTO SQ_P
	VALUES (491,
	0);
INSERT INTO SQ_COP
	VALUES (491,
	436,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::rqd_JogMotor_IntfTest',
	'Client',
	'',
	1);
INSERT INTO PE_PE
	VALUES (492,
	1,
	490,
	0,
	14);
INSERT INTO SQ_P
	VALUES (492,
	0);
INSERT INTO SQ_COP
	VALUES (492,
	421,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::prv_JogMotor_ExpResp',
	'Provider',
	'',
	1);
INSERT INTO PE_PE
	VALUES (493,
	1,
	490,
	0,
	14);
INSERT INTO SQ_P
	VALUES (493,
	0);
INSERT INTO MSG_M
	VALUES (494,
	495,
	493,
	0);
INSERT INTO MSG_AM
	VALUES (494,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (494,
	286);
INSERT INTO MSG_M
	VALUES (496,
	495,
	493,
	0);
INSERT INTO MSG_AM
	VALUES (496,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_complete',
	'');
INSERT INTO MSG_SIG
	VALUES (496,
	288);
INSERT INTO SQ_LS
	VALUES (493,
	491,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (497,
	'',
	493,
	'');
INSERT INTO SQ_TM
	VALUES (498,
	'',
	493,
	'');
INSERT INTO PE_PE
	VALUES (495,
	1,
	490,
	0,
	14);
INSERT INTO SQ_P
	VALUES (495,
	0);
INSERT INTO MSG_M
	VALUES (499,
	493,
	495,
	0);
INSERT INTO MSG_AM
	VALUES (499,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (499,
	282);
INSERT INTO MSG_A
	VALUES (500,
	0,
	499,
	'direction',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (500,
	289);
INSERT INTO MSG_A
	VALUES (501,
	0,
	499,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (501,
	291);
INSERT INTO MSG_A
	VALUES (502,
	0,
	499,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (502,
	292);
INSERT INTO MSG_A
	VALUES (503,
	0,
	499,
	'duration = 12000',
	'12000',
	'',
	'Client is specifying a 12 second jog duration when the jog is initiated.  The
provider is responsible to ensure the client specified duration is implemented.',
	1);
INSERT INTO MSG_EPA
	VALUES (503,
	293);
INSERT INTO SQ_LS
	VALUES (495,
	492,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (504,
	'',
	495,
	'');
INSERT INTO SQ_TS
	VALUES (505,
	506,
	504,
	'provider controls jog duration',
	'');
INSERT INTO SQ_TM
	VALUES (507,
	'',
	495,
	'');
INSERT INTO SQ_TM
	VALUES (506,
	'',
	495,
	'');
INSERT INTO PE_PE
	VALUES (499,
	1,
	490,
	0,
	17);
INSERT INTO PE_PE
	VALUES (494,
	1,
	490,
	0,
	17);
INSERT INTO PE_PE
	VALUES (496,
	1,
	490,
	0,
	17);
INSERT INTO EP_PKG
	VALUES (508,
	417,
	417,
	'HardwareInterface',
	'',
	0);
INSERT INTO PE_PE
	VALUES (509,
	1,
	508,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (509,
	0,
	417,
	'VelocityControlDrive',
	'',
	0);
INSERT INTO PE_PE
	VALUES (416,
	1,
	509,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (416,
	0,
	417,
	'TestComponents',
	'',
	0);
INSERT INTO PE_PE
	VALUES (137,
	1,
	416,
	0,
	2);
INSERT INTO C_C
	VALUES (137,
	0,
	0,
	'prv_ExpectedResponse',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (138,
	137,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (141,
	303,
	0,
	138);
INSERT INTO C_P
	VALUES (141,
	'VelocityControlDrive',
	'Unnamed Interface',
	'',
	'prv_ExpectedResponse::Port1::VelocityControlDrive');
INSERT INTO SPR_PEP
	VALUES (395,
	305,
	141);
INSERT INTO SPR_PS
	VALUES (395,
	'enable_drive',
	'',
	'Port1::done();
',
	1);
INSERT INTO ACT_PSB
	VALUES (510,
	395);
INSERT INTO ACT_ACT
	VALUES (510,
	'signal',
	0,
	511,
	0,
	0,
	'Port1::VelocityControlDrive::enable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (511,
	0,
	0,
	0,
	'Port1',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	510,
	0);
INSERT INTO ACT_SMT
	VALUES (512,
	511,
	0,
	1,
	1,
	'Port1::VelocityControlDrive::enable_drive line: 1');
INSERT INTO ACT_SGN
	VALUES (512,
	1,
	8,
	1,
	1,
	399,
	0,
	0);
INSERT INTO SPR_PEP
	VALUES (400,
	309,
	141);
INSERT INTO SPR_PS
	VALUES (400,
	'jog_motor',
	'',
	'Port1::in_progress();
',
	1);
INSERT INTO ACT_PSB
	VALUES (513,
	400);
INSERT INTO ACT_ACT
	VALUES (513,
	'signal',
	0,
	514,
	0,
	0,
	'Port1::VelocityControlDrive::jog_motor',
	0);
INSERT INTO ACT_BLK
	VALUES (514,
	0,
	0,
	0,
	'Port1',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	513,
	0);
INSERT INTO ACT_SMT
	VALUES (515,
	514,
	0,
	1,
	1,
	'Port1::VelocityControlDrive::jog_motor line: 1');
INSERT INTO ACT_SGN
	VALUES (515,
	1,
	8,
	1,
	1,
	404,
	0,
	0);
INSERT INTO SPR_PEP
	VALUES (405,
	313,
	141);
INSERT INTO SPR_PS
	VALUES (405,
	'stop_motor',
	'',
	'Port1::done();
',
	1);
INSERT INTO ACT_PSB
	VALUES (516,
	405);
INSERT INTO ACT_ACT
	VALUES (516,
	'signal',
	0,
	517,
	0,
	0,
	'Port1::VelocityControlDrive::stop_motor',
	0);
INSERT INTO ACT_BLK
	VALUES (517,
	0,
	0,
	0,
	'Port1',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	516,
	0);
INSERT INTO ACT_SMT
	VALUES (518,
	517,
	0,
	1,
	1,
	'Port1::VelocityControlDrive::stop_motor line: 1');
INSERT INTO ACT_SGN
	VALUES (518,
	1,
	8,
	1,
	1,
	399,
	0,
	0);
INSERT INTO SPR_PEP
	VALUES (404,
	317,
	141);
INSERT INTO SPR_PS
	VALUES (404,
	'in_progress',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (519,
	404);
INSERT INTO ACT_ACT
	VALUES (519,
	'signal',
	0,
	520,
	0,
	0,
	'Port1::VelocityControlDrive::in_progress',
	0);
INSERT INTO ACT_BLK
	VALUES (520,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	519,
	0);
INSERT INTO SPR_PEP
	VALUES (399,
	327,
	141);
INSERT INTO SPR_PS
	VALUES (399,
	'done',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (521,
	399);
INSERT INTO ACT_ACT
	VALUES (521,
	'signal',
	0,
	522,
	0,
	0,
	'Port1::VelocityControlDrive::done',
	0);
INSERT INTO ACT_BLK
	VALUES (522,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	521,
	0);
INSERT INTO SPR_PEP
	VALUES (413,
	341,
	141);
INSERT INTO SPR_PS
	VALUES (413,
	'error',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (523,
	413);
INSERT INTO ACT_ACT
	VALUES (523,
	'signal',
	0,
	524,
	0,
	0,
	'Port1::VelocityControlDrive::error',
	0);
INSERT INTO ACT_BLK
	VALUES (524,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	523,
	0);
INSERT INTO PE_PE
	VALUES (303,
	1,
	509,
	0,
	6);
INSERT INTO C_I
	VALUES (303,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO C_EP
	VALUES (305,
	303,
	-1,
	'enable_drive',
	'');
INSERT INTO C_AS
	VALUES (305,
	'enable_drive',
	'',
	0,
	0);
INSERT INTO C_PP
	VALUES (344,
	305,
	87,
	'enable',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (309,
	303,
	-1,
	'jog_motor',
	'');
INSERT INTO C_AS
	VALUES (309,
	'jog_motor',
	'',
	0,
	305);
INSERT INTO C_PP
	VALUES (345,
	309,
	290,
	'motor_direction',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (346,
	309,
	186,
	'velocity',
	'',
	0,
	'',
	345);
INSERT INTO C_PP
	VALUES (347,
	309,
	186,
	'acceleration',
	'',
	0,
	'',
	346);
INSERT INTO C_EP
	VALUES (313,
	303,
	-1,
	'stop_motor',
	'');
INSERT INTO C_AS
	VALUES (313,
	'stop_motor',
	'',
	0,
	309);
INSERT INTO C_EP
	VALUES (317,
	303,
	-1,
	'in_progress',
	'');
INSERT INTO C_AS
	VALUES (317,
	'in_progress',
	'',
	1,
	313);
INSERT INTO C_EP
	VALUES (327,
	303,
	-1,
	'done',
	'');
INSERT INTO C_AS
	VALUES (327,
	'done',
	'',
	1,
	317);
INSERT INTO C_EP
	VALUES (341,
	303,
	-1,
	'error',
	'');
INSERT INTO C_AS
	VALUES (341,
	'error',
	'',
	1,
	327);
INSERT INTO EP_PKG
	VALUES (525,
	417,
	417,
	'DataTypes',
	'',
	0);
INSERT INTO PE_PE
	VALUES (290,
	1,
	525,
	0,
	3);
INSERT INTO S_DT
	VALUES (290,
	0,
	'Motor_Direction',
	'',
	'');
INSERT INTO S_EDT
	VALUES (290);
INSERT INTO S_ENUM
	VALUES (526,
	'Forward',
	'',
	290,
	0);
INSERT INTO S_ENUM
	VALUES (527,
	'Reverse',
	'',
	290,
	526);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (528,
	'Diverter',
	1);
INSERT INTO EP_PKG
	VALUES (529,
	528,
	528,
	'Analysis',
	'',
	0);
INSERT INTO PE_PE
	VALUES (530,
	1,
	529,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (530,
	0,
	528,
	'Sequences',
	'',
	0);
INSERT INTO PE_PE
	VALUES (531,
	1,
	530,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (531,
	0,
	528,
	'Cross Transfer Conveyor_Inspection Sequence',
	'',
	0);
INSERT INTO PE_PE
	VALUES (532,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (532,
	0);
INSERT INTO SQ_AP
	VALUES (532,
	'Corrugator Operator',
	'',
	0);
INSERT INTO PE_PE
	VALUES (533,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (533,
	0);
INSERT INTO SQ_LS
	VALUES (533,
	532,
	'',
	0);
INSERT INTO PE_PE
	VALUES (534,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (534,
	0);
INSERT INTO SQ_COP
	VALUES (534,
	94,
	'Diverter::Design::Model::Diverter',
	'Informal Component',
	'',
	1);
INSERT INTO PE_PE
	VALUES (535,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (535,
	0);
INSERT INTO SQ_LS
	VALUES (535,
	534,
	'',
	0);
INSERT INTO PE_PE
	VALUES (536,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (536,
	0);
INSERT INTO SQ_CIP
	VALUES (536,
	0,
	'Cross Transfer Conveyor',
	'Informal Class',
	'Cross Transfer Conveyor : Informal Class',
	'',
	0);
INSERT INTO PE_PE
	VALUES (537,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (537,
	0);
INSERT INTO SQ_CIP
	VALUES (537,
	0,
	'Manual Sequence',
	'Informal Class',
	'Manual Sequence : Informal Class',
	'',
	0);
INSERT INTO PE_PE
	VALUES (538,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (538,
	0);
INSERT INTO SQ_LS
	VALUES (538,
	536,
	'',
	0);
INSERT INTO PE_PE
	VALUES (539,
	1,
	531,
	0,
	14);
INSERT INTO SQ_P
	VALUES (539,
	0);
INSERT INTO SQ_LS
	VALUES (539,
	537,
	'',
	0);
INSERT INTO PE_PE
	VALUES (540,
	1,
	530,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (540,
	0,
	528,
	'CrossTransferConveyor_ManualJog_AutoInt',
	'',
	0);
INSERT INTO PE_PE
	VALUES (541,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (541,
	0);
INSERT INTO SQ_AP
	VALUES (541,
	'Corrugator Operator',
	'',
	0);
INSERT INTO PE_PE
	VALUES (542,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (542,
	0);
INSERT INTO SQ_CIP
	VALUES (542,
	543,
	'CrossTransferConveyor',
	'Informal Class',
	'CrossTransferConveyor : Cross Transfer Conveyor',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (544,
	543,
	545,
	'current_state',
	'',
	'',
	0,
	542,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (544);
INSERT INTO SQ_AV
	VALUES (546,
	543,
	547,
	'stopping_time',
	'',
	'',
	0,
	542,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (546);
INSERT INTO SQ_AV
	VALUES (548,
	543,
	549,
	'Id',
	'',
	'',
	0,
	542,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (548);
INSERT INTO SQ_AV
	VALUES (550,
	543,
	551,
	'drive_side',
	'',
	'',
	0,
	542,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (550);
INSERT INTO PE_PE
	VALUES (552,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (552,
	0);
INSERT INTO SQ_CIP
	VALUES (552,
	553,
	'CTC_Manual Sequencer',
	'Informal Class',
	'CTC_Manual Sequencer : Manual Sequence',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (554,
	553,
	555,
	'current_state',
	'',
	'',
	0,
	552,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (554);
INSERT INTO SQ_AV
	VALUES (556,
	553,
	557,
	'jog_direction',
	'',
	'',
	0,
	552,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (556);
INSERT INTO PE_PE
	VALUES (558,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (558,
	0);
INSERT INTO SQ_LS
	VALUES (558,
	541,
	'',
	0);
INSERT INTO PE_PE
	VALUES (559,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (559,
	0);
INSERT INTO MSG_M
	VALUES (560,
	561,
	559,
	0);
INSERT INTO MSG_SM
	VALUES (560,
	'Informal Message',
	'',
	'',
	'',
	'MotorDirection::Forward',
	1,
	'GetMotorDirection',
	'');
INSERT INTO MSG_O
	VALUES (560,
	562);
INSERT INTO MSG_A
	VALUES (563,
	0,
	560,
	'machine_side = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_OA
	VALUES (563,
	564);
INSERT INTO MSG_M
	VALUES (565,
	566,
	559,
	0);
INSERT INTO MSG_AM
	VALUES (565,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'ACTR1: activate',
	'');
INSERT INTO MSG_E
	VALUES (565,
	567);
INSERT INTO MSG_M
	VALUES (568,
	569,
	559,
	0);
INSERT INTO MSG_AM
	VALUES (568,
	'Event Ignored: ''XTFRCNVR9: motor_stopped''',
	'',
	'',
	'',
	'',
	0,
	'Event Ignored: ''XTFRCNVR9: motor_stopped''',
	'');
INSERT INTO MSG_IAM
	VALUES (568);
INSERT INTO MSG_M
	VALUES (570,
	571,
	559,
	0);
INSERT INTO MSG_AM
	VALUES (570,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR6: discharge',
	'');
INSERT INTO MSG_E
	VALUES (570,
	572);
INSERT INTO MSG_A
	VALUES (573,
	0,
	570,
	'direction = MotorDirection::Reverse',
	'MotorDirection::Reverse',
	'',
	'',
	1);
INSERT INTO MSG_EA
	VALUES (573,
	574,
	575);
INSERT INTO MSG_A
	VALUES (576,
	0,
	570,
	'control_alg = DivertConvDischargeAlg::Dist_x2_HesitatingRollout',
	'DivertConvDischargeAlg::Dist_x2_HesitatingRollout',
	'',
	'',
	1);
INSERT INTO MSG_EA
	VALUES (576,
	574,
	577);
INSERT INTO MSG_M
	VALUES (578,
	579,
	559,
	0);
INSERT INTO MSG_AM
	VALUES (578,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR7: automatic_sequence_cmplt',
	'');
INSERT INTO MSG_E
	VALUES (578,
	580);
INSERT INTO MSG_M
	VALUES (581,
	561,
	559,
	0);
INSERT INTO MSG_SM
	VALUES (581,
	'Informal Message',
	'',
	'',
	'',
	'MotorDirection::Forward',
	1,
	'GetMotorDirection',
	'');
INSERT INTO MSG_O
	VALUES (581,
	562);
INSERT INTO MSG_A
	VALUES (582,
	0,
	581,
	'machine_side = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_OA
	VALUES (582,
	564);
INSERT INTO SQ_LS
	VALUES (559,
	542,
	'',
	0);
INSERT INTO PE_PE
	VALUES (561,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (561,
	0);
INSERT INTO MSG_M
	VALUES (583,
	569,
	561,
	0);
INSERT INTO MSG_AM
	VALUES (583,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR3: jog',
	'');
INSERT INTO MSG_E
	VALUES (583,
	584);
INSERT INTO MSG_A
	VALUES (585,
	0,
	583,
	'direction = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_EA
	VALUES (585,
	574,
	586);
INSERT INTO MSG_M
	VALUES (587,
	569,
	561,
	0);
INSERT INTO MSG_AM
	VALUES (587,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR5: drive_rdy_for_inst',
	'');
INSERT INTO MSG_E
	VALUES (587,
	588);
INSERT INTO MSG_M
	VALUES (589,
	559,
	561,
	0);
INSERT INTO MSG_AM
	VALUES (589,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR10: enable_control',
	'');
INSERT INTO MSG_E
	VALUES (589,
	590);
INSERT INTO MSG_M
	VALUES (591,
	561,
	561,
	0);
INSERT INTO MSG_AM
	VALUES (591,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR3: jog',
	'');
INSERT INTO MSG_E
	VALUES (591,
	584);
INSERT INTO MSG_A
	VALUES (592,
	0,
	591,
	'direction = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_EA
	VALUES (592,
	574,
	586);
INSERT INTO SQ_LS
	VALUES (561,
	552,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (593,
	'',
	561,
	'');
INSERT INTO SQ_TM
	VALUES (594,
	'',
	561,
	'');
INSERT INTO PE_PE
	VALUES (595,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (595,
	0);
INSERT INTO SQ_COP
	VALUES (595,
	421,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::prv_JogMotor_ExpResp',
	'Velocity Control Drive',
	'',
	1);
INSERT INTO PE_PE
	VALUES (596,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (596,
	0);
INSERT INTO MSG_M
	VALUES (597,
	561,
	596,
	0);
INSERT INTO MSG_AM
	VALUES (597,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (597,
	282);
INSERT INTO MSG_A
	VALUES (598,
	0,
	597,
	'direction = MotorDirection::Forward',
	'MotorDirection::Forward',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (598,
	289);
INSERT INTO MSG_A
	VALUES (599,
	0,
	597,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (599,
	291);
INSERT INTO MSG_A
	VALUES (600,
	0,
	597,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (600,
	292);
INSERT INTO MSG_A
	VALUES (601,
	0,
	597,
	'duration = 0',
	'0',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (601,
	293);
INSERT INTO MSG_M
	VALUES (602,
	561,
	596,
	0);
INSERT INTO MSG_AM
	VALUES (602,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (602,
	282);
INSERT INTO MSG_A
	VALUES (603,
	0,
	602,
	'direction = MotorDirection::Forward',
	'MotorDirection::Forward',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (603,
	289);
INSERT INTO MSG_A
	VALUES (604,
	0,
	602,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (604,
	291);
INSERT INTO MSG_A
	VALUES (605,
	0,
	602,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (605,
	292);
INSERT INTO MSG_A
	VALUES (606,
	0,
	602,
	'duration = 0',
	'0',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (606,
	293);
INSERT INTO MSG_M
	VALUES (607,
	559,
	596,
	0);
INSERT INTO MSG_AM
	VALUES (607,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'stop',
	'');
INSERT INTO MSG_SIG
	VALUES (607,
	284);
INSERT INTO SQ_LS
	VALUES (596,
	595,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (608,
	'',
	596,
	'');
INSERT INTO SQ_TS
	VALUES (609,
	610,
	608,
	'Motor Jogging Forward',
	'');
INSERT INTO SQ_TM
	VALUES (610,
	'',
	596,
	'');
INSERT INTO SQ_TM
	VALUES (611,
	'',
	596,
	'');
INSERT INTO SQ_TS
	VALUES (612,
	613,
	611,
	'Motor Jogging Forward',
	'');
INSERT INTO SQ_TM
	VALUES (613,
	'',
	596,
	'');
INSERT INTO PE_PE
	VALUES (614,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (614,
	0);
INSERT INTO SQ_COP
	VALUES (614,
	94,
	'Diverter::Design::Model::Diverter',
	'Informal Component',
	'',
	1);
INSERT INTO PE_PE
	VALUES (569,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (569,
	0);
INSERT INTO MSG_M
	VALUES (615,
	558,
	569,
	0);
INSERT INTO MSG_AM
	VALUES (615,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'xtfr_jog_switch_position_changed',
	'');
INSERT INTO MSG_SIG
	VALUES (615,
	17);
INSERT INTO MSG_A
	VALUES (616,
	0,
	615,
	'new_position = JogSwitchPosition::Operator',
	'JogSwitchPosition::Operator',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (616,
	277);
INSERT INTO MSG_M
	VALUES (617,
	596,
	569,
	0);
INSERT INTO MSG_AM
	VALUES (617,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (617,
	286);
INSERT INTO MSG_M
	VALUES (618,
	596,
	569,
	0);
INSERT INTO MSG_AM
	VALUES (618,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_complete',
	'');
INSERT INTO MSG_SIG
	VALUES (618,
	288);
INSERT INTO MSG_M
	VALUES (619,
	596,
	569,
	0);
INSERT INTO MSG_AM
	VALUES (619,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (619,
	286);
INSERT INTO SQ_LS
	VALUES (569,
	614,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (620,
	'',
	569,
	'');
INSERT INTO SQ_TS
	VALUES (621,
	622,
	620,
	'User continually holding switch in jog operator position.',
	'');
INSERT INTO SQ_TM
	VALUES (622,
	'',
	569,
	'');
INSERT INTO PE_PE
	VALUES (623,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (623,
	0);
INSERT INTO SQ_CIP
	VALUES (623,
	624,
	'Actuator',
	'Informal Class',
	'Actuator : Actuator',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (625,
	624,
	626,
	'current_state',
	'',
	'',
	0,
	623,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (625);
INSERT INTO SQ_AV
	VALUES (627,
	624,
	628,
	'Id',
	'',
	'',
	0,
	623,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (627);
INSERT INTO PE_PE
	VALUES (566,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (566,
	0);
INSERT INTO SQ_LS
	VALUES (566,
	623,
	'',
	0);
INSERT INTO PE_PE
	VALUES (629,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (629,
	0);
INSERT INTO SQ_CIP
	VALUES (629,
	630,
	'DiverterBay',
	'Informal Class',
	'DiverterBay : Diverter Bay',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (631,
	630,
	632,
	'current_state',
	'',
	'',
	0,
	629,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (631);
INSERT INTO SQ_AV
	VALUES (633,
	630,
	634,
	'sheet_settling_timer',
	'',
	'',
	0,
	629,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (633);
INSERT INTO PE_PE
	VALUES (571,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (571,
	0);
INSERT INTO SQ_LS
	VALUES (571,
	629,
	'',
	0);
INSERT INTO PE_PE
	VALUES (635,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (635,
	0);
INSERT INTO SQ_CIP
	VALUES (635,
	636,
	'HesitatingRollout',
	'Informal Class',
	'HesitatingRollout : Hesitating Rollout',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (637,
	636,
	638,
	'current_state',
	'',
	'',
	0,
	635,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (637);
INSERT INTO SQ_AV
	VALUES (639,
	636,
	640,
	'preliminary_move_time',
	'',
	'',
	0,
	635,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (639);
INSERT INTO PE_PE
	VALUES (579,
	1,
	540,
	0,
	14);
INSERT INTO SQ_P
	VALUES (579,
	0);
INSERT INTO MSG_M
	VALUES (641,
	559,
	579,
	0);
INSERT INTO MSG_AM
	VALUES (641,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'AUTOSEQ11: initiate_auto_seq',
	'');
INSERT INTO MSG_E
	VALUES (641,
	642);
INSERT INTO SQ_LS
	VALUES (579,
	635,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (643,
	'',
	579,
	'');
INSERT INTO SQ_TS
	VALUES (644,
	645,
	643,
	'Conveyor movement controlled by automatic sequence in this timeframe.',
	'');
INSERT INTO SQ_TM
	VALUES (645,
	'',
	579,
	'');
INSERT INTO PE_PE
	VALUES (583,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (615,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (560,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (597,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (602,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (617,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (587,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (618,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (565,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (607,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (568,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (570,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (641,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (578,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (589,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (591,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (581,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (619,
	1,
	540,
	0,
	17);
INSERT INTO PE_PE
	VALUES (646,
	1,
	530,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (646,
	0,
	528,
	'CrossTransferConveyor_ManualJog',
	'',
	0);
INSERT INTO PE_PE
	VALUES (647,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (647,
	0);
INSERT INTO SQ_AP
	VALUES (647,
	'Corrugator Operator',
	'',
	0);
INSERT INTO PE_PE
	VALUES (648,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (648,
	0);
INSERT INTO SQ_CIP
	VALUES (648,
	543,
	'CrossTransferConveyor',
	'Informal Class',
	'CrossTransferConveyor : Cross Transfer Conveyor',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (649,
	543,
	545,
	'current_state',
	'',
	'',
	0,
	648,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (649);
INSERT INTO SQ_AV
	VALUES (650,
	543,
	547,
	'stopping_time',
	'',
	'',
	0,
	648,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (650);
INSERT INTO SQ_AV
	VALUES (651,
	543,
	549,
	'Id',
	'',
	'',
	0,
	648,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (651);
INSERT INTO SQ_AV
	VALUES (652,
	543,
	551,
	'drive_side',
	'',
	'',
	0,
	648,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (652);
INSERT INTO PE_PE
	VALUES (653,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (653,
	0);
INSERT INTO SQ_CIP
	VALUES (653,
	553,
	'CTC_Manual Sequencer',
	'Informal Class',
	'CTC_Manual Sequencer : Manual Sequence',
	'',
	1);
INSERT INTO SQ_AV
	VALUES (654,
	553,
	555,
	'current_state',
	'',
	'',
	0,
	653,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (654);
INSERT INTO SQ_AV
	VALUES (655,
	553,
	557,
	'jog_direction',
	'',
	'',
	0,
	653,
	'',
	1);
INSERT INTO SQ_FAV
	VALUES (655);
INSERT INTO PE_PE
	VALUES (656,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (656,
	0);
INSERT INTO SQ_LS
	VALUES (656,
	647,
	'',
	0);
INSERT INTO PE_PE
	VALUES (657,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (657,
	0);
INSERT INTO MSG_M
	VALUES (658,
	659,
	657,
	0);
INSERT INTO MSG_SM
	VALUES (658,
	'Informal Message',
	'',
	'',
	'',
	'MotorDirection::Forward',
	1,
	'GetMotorDirection',
	'');
INSERT INTO MSG_O
	VALUES (658,
	562);
INSERT INTO MSG_A
	VALUES (660,
	0,
	658,
	'machine_side = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_OA
	VALUES (660,
	564);
INSERT INTO SQ_LS
	VALUES (657,
	648,
	'',
	0);
INSERT INTO PE_PE
	VALUES (659,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (659,
	0);
INSERT INTO MSG_M
	VALUES (661,
	662,
	659,
	0);
INSERT INTO MSG_AM
	VALUES (661,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR3: jog',
	'');
INSERT INTO MSG_E
	VALUES (661,
	584);
INSERT INTO MSG_A
	VALUES (663,
	0,
	661,
	'direction = MachineSide::Operator',
	'MachineSide::Operator',
	'',
	'',
	1);
INSERT INTO MSG_EA
	VALUES (663,
	574,
	586);
INSERT INTO MSG_M
	VALUES (664,
	662,
	659,
	0);
INSERT INTO MSG_AM
	VALUES (664,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR4: jog_complete',
	'');
INSERT INTO MSG_E
	VALUES (664,
	665);
INSERT INTO MSG_M
	VALUES (666,
	662,
	659,
	0);
INSERT INTO MSG_AM
	VALUES (666,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR9: motor_stopped',
	'');
INSERT INTO MSG_E
	VALUES (666,
	667);
INSERT INTO MSG_M
	VALUES (668,
	662,
	659,
	0);
INSERT INTO MSG_AM
	VALUES (668,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'XTFRCNVR5: drive_rdy_for_inst',
	'');
INSERT INTO MSG_E
	VALUES (668,
	588);
INSERT INTO SQ_LS
	VALUES (659,
	653,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (669,
	'',
	659,
	'');
INSERT INTO SQ_TM
	VALUES (670,
	'',
	659,
	'');
INSERT INTO PE_PE
	VALUES (671,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (671,
	0);
INSERT INTO SQ_COP
	VALUES (671,
	421,
	'Intf_MotorDrive::ClientInterface::JogMotor::TestComponents::prv_JogMotor_ExpResp',
	'Velocity Control Drive',
	'',
	1);
INSERT INTO PE_PE
	VALUES (672,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (672,
	0);
INSERT INTO MSG_M
	VALUES (673,
	659,
	672,
	0);
INSERT INTO MSG_AM
	VALUES (673,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'jog',
	'');
INSERT INTO MSG_SIG
	VALUES (673,
	282);
INSERT INTO MSG_A
	VALUES (674,
	0,
	673,
	'direction = MotorDirection::Forward',
	'MotorDirection::Forward',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (674,
	289);
INSERT INTO MSG_A
	VALUES (675,
	0,
	673,
	'velocity',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (675,
	291);
INSERT INTO MSG_A
	VALUES (676,
	0,
	673,
	'acceleration',
	'',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (676,
	292);
INSERT INTO MSG_A
	VALUES (677,
	0,
	673,
	'duration = 0',
	'0',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (677,
	293);
INSERT INTO MSG_M
	VALUES (678,
	659,
	672,
	0);
INSERT INTO MSG_AM
	VALUES (678,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'stop',
	'');
INSERT INTO MSG_SIG
	VALUES (678,
	284);
INSERT INTO SQ_LS
	VALUES (672,
	671,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (679,
	'',
	672,
	'');
INSERT INTO SQ_TS
	VALUES (680,
	681,
	679,
	'Motor Jogging',
	'');
INSERT INTO SQ_TM
	VALUES (681,
	'',
	672,
	'');
INSERT INTO PE_PE
	VALUES (682,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (682,
	0);
INSERT INTO SQ_COP
	VALUES (682,
	94,
	'Diverter::Design::Model::Diverter',
	'Informal Component',
	'',
	1);
INSERT INTO PE_PE
	VALUES (662,
	1,
	646,
	0,
	14);
INSERT INTO SQ_P
	VALUES (662,
	0);
INSERT INTO MSG_M
	VALUES (683,
	656,
	662,
	0);
INSERT INTO MSG_AM
	VALUES (683,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'xtfr_jog_switch_position_changed',
	'');
INSERT INTO MSG_SIG
	VALUES (683,
	17);
INSERT INTO MSG_A
	VALUES (684,
	0,
	683,
	'new_position = JogSwitchPosition::Operator',
	'JogSwitchPosition::Operator',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (684,
	277);
INSERT INTO MSG_M
	VALUES (685,
	672,
	662,
	0);
INSERT INTO MSG_AM
	VALUES (685,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_initiated',
	'');
INSERT INTO MSG_SIG
	VALUES (685,
	286);
INSERT INTO MSG_M
	VALUES (686,
	672,
	662,
	0);
INSERT INTO MSG_AM
	VALUES (686,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'motion_complete',
	'');
INSERT INTO MSG_SIG
	VALUES (686,
	288);
INSERT INTO MSG_M
	VALUES (687,
	656,
	662,
	0);
INSERT INTO MSG_AM
	VALUES (687,
	'Informal Message',
	'',
	'',
	'',
	'',
	1,
	'xtfr_jog_switch_position_changed',
	'');
INSERT INTO MSG_SIG
	VALUES (687,
	17);
INSERT INTO MSG_A
	VALUES (688,
	0,
	687,
	'new_position = JogSwitchPosition::Stop',
	'JogSwitchPosition::Stop',
	'',
	'',
	1);
INSERT INTO MSG_EPA
	VALUES (688,
	277);
INSERT INTO SQ_LS
	VALUES (662,
	682,
	'',
	0);
INSERT INTO SQ_TM
	VALUES (689,
	'',
	662,
	'');
INSERT INTO SQ_TS
	VALUES (690,
	691,
	689,
	'As long as the user holds the switch.',
	'');
INSERT INTO SQ_TM
	VALUES (691,
	'',
	662,
	'');
INSERT INTO PE_PE
	VALUES (661,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (664,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (666,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (683,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (658,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (673,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (678,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (685,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (668,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (686,
	1,
	646,
	0,
	17);
INSERT INTO PE_PE
	VALUES (687,
	1,
	646,
	0,
	17);
INSERT INTO EP_PKG
	VALUES (692,
	528,
	528,
	'Design',
	'',
	0);
INSERT INTO PE_PE
	VALUES (278,
	1,
	692,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (278,
	0,
	528,
	'Model',
	'Package description',
	800);
INSERT INTO PE_PE
	VALUES (94,
	1,
	278,
	0,
	2);
INSERT INTO C_C
	VALUES (94,
	0,
	0,
	'Diverter',
	'Where does this show up?',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (95,
	94,
	'Client',
	0,
	0);
INSERT INTO C_IR
	VALUES (98,
	7,
	0,
	95);
INSERT INTO C_P
	VALUES (98,
	'DiverterClient',
	'Unnamed Interface',
	'',
	'Diverter::Client::DiverterClient');
INSERT INTO SPR_PEP
	VALUES (266,
	9,
	98);
INSERT INTO SPR_PS
	VALUES (266,
	'divert_pending',
	'',
	'// A divert is approaching.  Get setup to handle it or inform the client if a 
//    divert is not possible right now. 
// 


// Check to make sure the diverter can handle this packet


// Diverter can handle the packet, create the packet and sheet classes
create object instance divert_package of DVRTPKT;
divert_package.type = param.divert_type;
divert_package.leading_edge_position = param.packet_start_position;
divert_package.trailing_edge_position = param.packet_start_position - 
      (param.sheet_length * param.number_of_sheets);
divert_package.web_caliper = 0;  // TODO: Where does this come from?

// Create the sheets

// TODO: This is not going to work, relationship may not exist yet.
select any diverter_bay from instances of DVRTBAY;
select one dvrt_package related by diverter_bay->DVRTPKT[R4];
if not_empty dvrt_package;
   // A divert package(s) already exists, find the one farthest upstream
   while not_empty dvrt_package;
      select one dvrt_package related by dvrt_package->DVRTPKT[R1.''next''];
   end while;
   
   relate divert_package to dvrt_package across R1.''next'';
end if;',
	1);
INSERT INTO ACT_PSB
	VALUES (693,
	266);
INSERT INTO ACT_ACT
	VALUES (693,
	'signal',
	0,
	694,
	0,
	0,
	'Client::DiverterClient::divert_pending',
	0);
INSERT INTO ACT_BLK
	VALUES (694,
	1,
	0,
	0,
	'',
	'',
	'',
	21,
	1,
	20,
	50,
	0,
	0,
	20,
	58,
	0,
	0,
	0,
	0,
	0,
	693,
	0);
INSERT INTO ACT_SMT
	VALUES (695,
	694,
	696,
	9,
	1,
	'Client::DiverterClient::divert_pending line: 9');
INSERT INTO ACT_CR
	VALUES (695,
	697,
	1,
	698,
	9,
	42);
INSERT INTO ACT_SMT
	VALUES (696,
	694,
	699,
	10,
	1,
	'Client::DiverterClient::divert_pending line: 10');
INSERT INTO ACT_AI
	VALUES (696,
	700,
	701,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (699,
	694,
	702,
	11,
	1,
	'Client::DiverterClient::divert_pending line: 11');
INSERT INTO ACT_AI
	VALUES (699,
	703,
	704,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (702,
	694,
	705,
	12,
	1,
	'Client::DiverterClient::divert_pending line: 12');
INSERT INTO ACT_AI
	VALUES (702,
	706,
	707,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (705,
	694,
	708,
	14,
	1,
	'Client::DiverterClient::divert_pending line: 14');
INSERT INTO ACT_AI
	VALUES (705,
	709,
	710,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (708,
	694,
	711,
	19,
	1,
	'Client::DiverterClient::divert_pending line: 19');
INSERT INTO ACT_FIO
	VALUES (708,
	712,
	1,
	'any',
	630,
	19,
	43);
INSERT INTO ACT_SMT
	VALUES (711,
	694,
	713,
	20,
	1,
	'Client::DiverterClient::divert_pending line: 20');
INSERT INTO ACT_SEL
	VALUES (711,
	714,
	1,
	'one',
	715);
INSERT INTO ACT_SR
	VALUES (711);
INSERT INTO ACT_LNK
	VALUES (716,
	'',
	711,
	717,
	0,
	2,
	698,
	20,
	50,
	20,
	58,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (713,
	694,
	0,
	21,
	1,
	'Client::DiverterClient::divert_pending line: 21');
INSERT INTO ACT_IF
	VALUES (713,
	718,
	719,
	0,
	0);
INSERT INTO V_VAL
	VALUES (720,
	1,
	0,
	10,
	1,
	14,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (720,
	697);
INSERT INTO V_VAL
	VALUES (701,
	1,
	0,
	10,
	16,
	19,
	0,
	0,
	0,
	0,
	272,
	694);
INSERT INTO V_AVL
	VALUES (701,
	720,
	698,
	721);
INSERT INTO V_VAL
	VALUES (700,
	0,
	0,
	10,
	29,
	39,
	0,
	0,
	0,
	0,
	272,
	694);
INSERT INTO V_PVL
	VALUES (700,
	0,
	0,
	0,
	271);
INSERT INTO V_VAL
	VALUES (722,
	1,
	0,
	11,
	1,
	14,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (722,
	697);
INSERT INTO V_VAL
	VALUES (704,
	1,
	0,
	11,
	16,
	36,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_AVL
	VALUES (704,
	722,
	698,
	723);
INSERT INTO V_VAL
	VALUES (703,
	0,
	0,
	11,
	46,
	66,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_PVL
	VALUES (703,
	0,
	0,
	0,
	273);
INSERT INTO V_VAL
	VALUES (724,
	1,
	0,
	12,
	1,
	14,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (724,
	697);
INSERT INTO V_VAL
	VALUES (707,
	1,
	0,
	12,
	16,
	37,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_AVL
	VALUES (707,
	724,
	698,
	725);
INSERT INTO V_VAL
	VALUES (726,
	0,
	0,
	12,
	47,
	67,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_PVL
	VALUES (726,
	0,
	0,
	0,
	273);
INSERT INTO V_VAL
	VALUES (706,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_BIN
	VALUES (706,
	727,
	726,
	'-');
INSERT INTO V_VAL
	VALUES (728,
	0,
	0,
	13,
	14,
	25,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_PVL
	VALUES (728,
	0,
	0,
	0,
	274);
INSERT INTO V_VAL
	VALUES (727,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_BIN
	VALUES (727,
	729,
	728,
	'*');
INSERT INTO V_VAL
	VALUES (729,
	0,
	0,
	13,
	35,
	50,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_PVL
	VALUES (729,
	0,
	0,
	0,
	275);
INSERT INTO V_VAL
	VALUES (730,
	1,
	0,
	14,
	1,
	14,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (730,
	697);
INSERT INTO V_VAL
	VALUES (710,
	1,
	0,
	14,
	16,
	26,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_AVL
	VALUES (710,
	730,
	698,
	731);
INSERT INTO V_VAL
	VALUES (709,
	0,
	0,
	14,
	30,
	30,
	0,
	0,
	0,
	0,
	186,
	694);
INSERT INTO V_LIN
	VALUES (709,
	'0');
INSERT INTO V_VAL
	VALUES (715,
	0,
	0,
	20,
	36,
	47,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (715,
	712);
INSERT INTO V_VAL
	VALUES (732,
	0,
	0,
	21,
	14,
	25,
	0,
	0,
	0,
	0,
	34,
	694);
INSERT INTO V_IRF
	VALUES (732,
	714);
INSERT INTO V_VAL
	VALUES (719,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	694);
INSERT INTO V_UNY
	VALUES (719,
	732,
	'not_empty');
INSERT INTO V_VAR
	VALUES (697,
	694,
	'divert_package',
	1,
	34);
INSERT INTO V_INT
	VALUES (697,
	0,
	698);
INSERT INTO V_VAR
	VALUES (712,
	694,
	'diverter_bay',
	1,
	34);
INSERT INTO V_INT
	VALUES (712,
	0,
	630);
INSERT INTO V_VAR
	VALUES (714,
	694,
	'dvrt_package',
	1,
	34);
INSERT INTO V_INT
	VALUES (714,
	0,
	698);
INSERT INTO ACT_BLK
	VALUES (718,
	0,
	0,
	0,
	'next',
	'',
	'',
	27,
	4,
	0,
	0,
	0,
	0,
	27,
	49,
	27,
	52,
	0,
	0,
	0,
	693,
	0);
INSERT INTO ACT_SMT
	VALUES (733,
	718,
	734,
	23,
	4,
	'Client::DiverterClient::divert_pending line: 23');
INSERT INTO ACT_WHL
	VALUES (733,
	735,
	736);
INSERT INTO ACT_SMT
	VALUES (734,
	718,
	0,
	27,
	4,
	'Client::DiverterClient::divert_pending line: 27');
INSERT INTO ACT_REL
	VALUES (734,
	697,
	714,
	'next',
	737,
	27,
	49,
	27,
	52);
INSERT INTO V_VAL
	VALUES (738,
	0,
	0,
	23,
	20,
	31,
	0,
	0,
	0,
	0,
	34,
	718);
INSERT INTO V_IRF
	VALUES (738,
	714);
INSERT INTO V_VAL
	VALUES (735,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	718);
INSERT INTO V_UNY
	VALUES (735,
	738,
	'not_empty');
INSERT INTO ACT_BLK
	VALUES (736,
	1,
	0,
	0,
	'',
	'',
	'',
	24,
	7,
	24,
	56,
	0,
	0,
	24,
	64,
	24,
	67,
	0,
	0,
	0,
	693,
	0);
INSERT INTO ACT_SMT
	VALUES (739,
	736,
	0,
	24,
	7,
	'Client::DiverterClient::divert_pending line: 24');
INSERT INTO ACT_SEL
	VALUES (739,
	714,
	0,
	'one',
	740);
INSERT INTO ACT_SR
	VALUES (739);
INSERT INTO ACT_LNK
	VALUES (741,
	'next',
	739,
	737,
	0,
	2,
	698,
	24,
	56,
	24,
	64,
	24,
	67);
INSERT INTO V_VAL
	VALUES (740,
	0,
	0,
	24,
	42,
	53,
	0,
	0,
	0,
	0,
	34,
	736);
INSERT INTO V_IRF
	VALUES (740,
	714);
INSERT INTO SPR_PEP
	VALUES (267,
	21,
	98);
INSERT INTO SPR_PO
	VALUES (267,
	'request_status',
	'True - Diverter Ready, False - Diverter Not Ready
Operation returns the current state of the diverter system.  
',
	'return False;
',
	1);
INSERT INTO ACT_POB
	VALUES (742,
	267);
INSERT INTO ACT_ACT
	VALUES (742,
	'interface operation',
	0,
	743,
	0,
	0,
	'Client::DiverterClient::request_status',
	0);
INSERT INTO ACT_BLK
	VALUES (743,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	742,
	0);
INSERT INTO ACT_SMT
	VALUES (744,
	743,
	0,
	1,
	1,
	'Client::DiverterClient::request_status line: 1');
INSERT INTO ACT_RET
	VALUES (744,
	745);
INSERT INTO V_VAL
	VALUES (745,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	743);
INSERT INTO V_LBO
	VALUES (745,
	'FALSE');
INSERT INTO SPR_PEP
	VALUES (268,
	13,
	98);
INSERT INTO SPR_PS
	VALUES (268,
	'diverter_ready',
	'',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (746,
	268);
INSERT INTO ACT_ACT
	VALUES (746,
	'signal',
	0,
	747,
	0,
	0,
	'Client::DiverterClient::diverter_ready',
	0);
INSERT INTO ACT_BLK
	VALUES (747,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	746,
	0);
INSERT INTO SPR_PEP
	VALUES (269,
	25,
	98);
INSERT INTO SPR_PO
	VALUES (269,
	'get_xtfr_jog_switch_position',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (748,
	269);
INSERT INTO ACT_ACT
	VALUES (748,
	'interface operation',
	0,
	749,
	0,
	0,
	'Client::DiverterClient::get_xtfr_jog_switch_position',
	0);
INSERT INTO ACT_BLK
	VALUES (749,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	748,
	0);
INSERT INTO SPR_PEP
	VALUES (270,
	17,
	98);
INSERT INTO SPR_PS
	VALUES (270,
	'xtfr_jog_switch_position_changed',
	'',
	'// The machine operator has changed the position of the cross transfer conveyor
//    manual jog switch.  Create the appropriate event to send to the model.
// 


select any xtfr_conveyor from instances of XTFRCNVR;
if param.new_position == Jog_Switch_Position::Stop;
   generate XTFRCNVR4:jog_complete() to xtfr_conveyor;
elif param.new_position == Jog_Switch_Position::Operator;
   generate XTFRCNVR3:jog(direction: Machine_Side::Operator) to xtfr_conveyor;
elif param.new_position == Jog_Switch_Position::Drive;
   generate XTFRCNVR3:jog(direction: Machine_Side::Drive) to xtfr_conveyor;
elif param.new_position == Jog_Switch_Position::Impossible;
   // Log a diagnostic that the switch cannot be in two positions at once.
end if;

',
	1);
INSERT INTO ACT_PSB
	VALUES (750,
	270);
INSERT INTO ACT_ACT
	VALUES (750,
	'signal',
	0,
	751,
	0,
	0,
	'Client::DiverterClient::xtfr_jog_switch_position_changed',
	0);
INSERT INTO ACT_BLK
	VALUES (751,
	1,
	0,
	0,
	'',
	'',
	'',
	12,
	1,
	5,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	12,
	28,
	0,
	750,
	0);
INSERT INTO ACT_SMT
	VALUES (752,
	751,
	753,
	5,
	1,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 5');
INSERT INTO ACT_FIO
	VALUES (752,
	754,
	1,
	'any',
	543,
	5,
	44);
INSERT INTO ACT_SMT
	VALUES (753,
	751,
	0,
	6,
	1,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 6');
INSERT INTO ACT_IF
	VALUES (753,
	755,
	756,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (757,
	751,
	0,
	8,
	1,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 8');
INSERT INTO ACT_EL
	VALUES (757,
	758,
	759,
	753);
INSERT INTO ACT_SMT
	VALUES (760,
	751,
	0,
	10,
	1,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 10');
INSERT INTO ACT_EL
	VALUES (760,
	761,
	762,
	753);
INSERT INTO ACT_SMT
	VALUES (763,
	751,
	0,
	12,
	1,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 12');
INSERT INTO ACT_EL
	VALUES (763,
	764,
	765,
	753);
INSERT INTO V_VAL
	VALUES (766,
	0,
	0,
	6,
	10,
	21,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_PVL
	VALUES (766,
	0,
	0,
	0,
	277);
INSERT INTO V_VAL
	VALUES (756,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	751);
INSERT INTO V_BIN
	VALUES (756,
	767,
	766,
	'==');
INSERT INTO V_VAL
	VALUES (767,
	0,
	0,
	6,
	47,
	50,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_LEN
	VALUES (767,
	75,
	6,
	26);
INSERT INTO V_VAL
	VALUES (768,
	0,
	0,
	8,
	12,
	23,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_PVL
	VALUES (768,
	0,
	0,
	0,
	277);
INSERT INTO V_VAL
	VALUES (759,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	751);
INSERT INTO V_BIN
	VALUES (759,
	769,
	768,
	'==');
INSERT INTO V_VAL
	VALUES (769,
	0,
	0,
	8,
	49,
	56,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_LEN
	VALUES (769,
	62,
	8,
	28);
INSERT INTO V_VAL
	VALUES (770,
	0,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_PVL
	VALUES (770,
	0,
	0,
	0,
	277);
INSERT INTO V_VAL
	VALUES (762,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	751);
INSERT INTO V_BIN
	VALUES (762,
	771,
	770,
	'==');
INSERT INTO V_VAL
	VALUES (771,
	0,
	0,
	10,
	49,
	53,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_LEN
	VALUES (771,
	49,
	10,
	28);
INSERT INTO V_VAL
	VALUES (772,
	0,
	0,
	12,
	12,
	23,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_PVL
	VALUES (772,
	0,
	0,
	0,
	277);
INSERT INTO V_VAL
	VALUES (765,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	751);
INSERT INTO V_BIN
	VALUES (765,
	773,
	772,
	'==');
INSERT INTO V_VAL
	VALUES (773,
	0,
	0,
	12,
	49,
	58,
	0,
	0,
	0,
	0,
	35,
	751);
INSERT INTO V_LEN
	VALUES (773,
	774,
	12,
	28);
INSERT INTO V_VAR
	VALUES (754,
	751,
	'xtfr_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (754,
	0,
	543);
INSERT INTO ACT_BLK
	VALUES (755,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	7,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	750,
	0);
INSERT INTO ACT_SMT
	VALUES (775,
	755,
	0,
	7,
	4,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 7');
INSERT INTO E_ESS
	VALUES (775,
	1,
	0,
	7,
	13,
	7,
	23,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (775);
INSERT INTO E_GSME
	VALUES (775,
	665);
INSERT INTO E_GEN
	VALUES (775,
	754);
INSERT INTO ACT_BLK
	VALUES (758,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'direction',
	'direction',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	9,
	38,
	0,
	750,
	0);
INSERT INTO ACT_SMT
	VALUES (776,
	758,
	0,
	9,
	4,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 9');
INSERT INTO E_ESS
	VALUES (776,
	1,
	0,
	9,
	13,
	9,
	23,
	0,
	0,
	9,
	27,
	0,
	0);
INSERT INTO V_PAR
	VALUES (777,
	776,
	0,
	'direction',
	0,
	9,
	27);
INSERT INTO E_GES
	VALUES (776);
INSERT INTO E_GSME
	VALUES (776,
	584);
INSERT INTO E_GEN
	VALUES (776,
	754);
INSERT INTO V_VAL
	VALUES (777,
	0,
	0,
	9,
	52,
	59,
	0,
	0,
	0,
	0,
	778,
	758);
INSERT INTO V_LEN
	VALUES (777,
	779,
	9,
	38);
INSERT INTO ACT_BLK
	VALUES (761,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'direction',
	'direction',
	11,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	11,
	38,
	0,
	750,
	0);
INSERT INTO ACT_SMT
	VALUES (780,
	761,
	0,
	11,
	4,
	'Client::DiverterClient::xtfr_jog_switch_position_changed line: 11');
INSERT INTO E_ESS
	VALUES (780,
	1,
	0,
	11,
	13,
	11,
	23,
	0,
	0,
	11,
	27,
	0,
	0);
INSERT INTO V_PAR
	VALUES (781,
	780,
	0,
	'direction',
	0,
	11,
	27);
INSERT INTO E_GES
	VALUES (780);
INSERT INTO E_GSME
	VALUES (780,
	584);
INSERT INTO E_GEN
	VALUES (780,
	754);
INSERT INTO V_VAL
	VALUES (781,
	0,
	0,
	11,
	52,
	56,
	0,
	0,
	0,
	0,
	778,
	761);
INSERT INTO V_LEN
	VALUES (781,
	782,
	11,
	38);
INSERT INTO ACT_BLK
	VALUES (764,
	0,
	0,
	0,
	'',
	'',
	'',
	12,
	59,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	750,
	0);
INSERT INTO C_PO
	VALUES (100,
	94,
	'fngrs',
	0,
	0);
INSERT INTO C_IR
	VALUES (103,
	279,
	0,
	100);
INSERT INTO C_R
	VALUES (103,
	'PneumaticControlValve',
	'',
	'Unnamed Interface',
	'Diverter::fngrs::PneumaticControlValve');
INSERT INTO C_PO
	VALUES (104,
	94,
	'xtfrcnvr',
	0,
	0);
INSERT INTO C_IR
	VALUES (107,
	280,
	0,
	104);
INSERT INTO C_R
	VALUES (107,
	'JogMotor',
	'',
	'Unnamed Interface',
	'Diverter::xtfrcnvr::JogMotor');
INSERT INTO SPR_REP
	VALUES (281,
	282,
	107);
INSERT INTO SPR_RS
	VALUES (281,
	'jog',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (783,
	281);
INSERT INTO ACT_ACT
	VALUES (783,
	'signal',
	0,
	784,
	0,
	0,
	'xtfrcnvr::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (784,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	783,
	0);
INSERT INTO SPR_REP
	VALUES (283,
	284,
	107);
INSERT INTO SPR_RS
	VALUES (283,
	'stop',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (785,
	283);
INSERT INTO ACT_ACT
	VALUES (785,
	'signal',
	0,
	786,
	0,
	0,
	'xtfrcnvr::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (786,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	785,
	0);
INSERT INTO SPR_REP
	VALUES (285,
	286,
	107);
INSERT INTO SPR_RS
	VALUES (285,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'// The drive has indicated that it is ready to receive another instruction.
// 


select any xtfr_conveyor from instances of XTFRCNVR;
generate XTFRCNVR5:drive_rdy_for_inst() to xtfr_conveyor;
',
	1);
INSERT INTO ACT_RSB
	VALUES (787,
	285);
INSERT INTO ACT_ACT
	VALUES (787,
	'signal',
	0,
	788,
	0,
	0,
	'xtfrcnvr::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (788,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	5,
	1,
	4,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (789,
	788,
	790,
	4,
	1,
	'xtfrcnvr::JogMotor::motion_initiated line: 4');
INSERT INTO ACT_FIO
	VALUES (789,
	791,
	1,
	'any',
	543,
	4,
	44);
INSERT INTO ACT_SMT
	VALUES (790,
	788,
	0,
	5,
	1,
	'xtfrcnvr::JogMotor::motion_initiated line: 5');
INSERT INTO E_ESS
	VALUES (790,
	1,
	0,
	5,
	10,
	5,
	20,
	4,
	44,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (790);
INSERT INTO E_GSME
	VALUES (790,
	588);
INSERT INTO E_GEN
	VALUES (790,
	791);
INSERT INTO V_VAR
	VALUES (791,
	788,
	'xtfr_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (791,
	0,
	543);
INSERT INTO SPR_REP
	VALUES (287,
	288,
	107);
INSERT INTO SPR_RS
	VALUES (287,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'// The drive is signaling the motor has been brought to a complete stop.
// 


select any xtfr_conveyor from instances of XTFRCNVR;
generate XTFRCNVR9:motor_stopped() to xtfr_conveyor;
',
	1);
INSERT INTO ACT_RSB
	VALUES (792,
	287);
INSERT INTO ACT_ACT
	VALUES (792,
	'signal',
	0,
	793,
	0,
	0,
	'xtfrcnvr::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (793,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	5,
	1,
	4,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	792,
	0);
INSERT INTO ACT_SMT
	VALUES (794,
	793,
	795,
	4,
	1,
	'xtfrcnvr::JogMotor::motion_complete line: 4');
INSERT INTO ACT_FIO
	VALUES (794,
	796,
	1,
	'any',
	543,
	4,
	44);
INSERT INTO ACT_SMT
	VALUES (795,
	793,
	0,
	5,
	1,
	'xtfrcnvr::JogMotor::motion_complete line: 5');
INSERT INTO E_ESS
	VALUES (795,
	1,
	0,
	5,
	10,
	5,
	20,
	4,
	44,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (795);
INSERT INTO E_GSME
	VALUES (795,
	667);
INSERT INTO E_GEN
	VALUES (795,
	796);
INSERT INTO V_VAR
	VALUES (796,
	793,
	'xtfr_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (796,
	0,
	543);
INSERT INTO C_PO
	VALUES (109,
	94,
	'dvtpan',
	0,
	0);
INSERT INTO C_IR
	VALUES (112,
	294,
	0,
	109);
INSERT INTO C_R
	VALUES (112,
	'DivertMotor',
	'',
	'Unnamed Interface',
	'Diverter::dvtpan::DivertMotor');
INSERT INTO C_PO
	VALUES (113,
	94,
	'speed_ref',
	0,
	0);
INSERT INTO C_IR
	VALUES (116,
	295,
	0,
	113);
INSERT INTO C_R
	VALUES (116,
	'SpeedSignal',
	'',
	'Unnamed Interface',
	'Diverter::speed_ref::SpeedSignal');
INSERT INTO SPR_REP
	VALUES (296,
	297,
	116);
INSERT INTO SPR_RS
	VALUES (296,
	'CutPulse',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (797,
	296);
INSERT INTO ACT_ACT
	VALUES (797,
	'signal',
	0,
	798,
	0,
	0,
	'speed_ref::SpeedSignal::CutPulse',
	0);
INSERT INTO ACT_BLK
	VALUES (798,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	797,
	0);
INSERT INTO C_PO
	VALUES (117,
	94,
	'arblst',
	0,
	0);
INSERT INTO C_IR
	VALUES (120,
	279,
	0,
	117);
INSERT INTO C_R
	VALUES (120,
	'PneumaticControlValve',
	'',
	'Unnamed Interface',
	'Diverter::arblst::PneumaticControlValve');
INSERT INTO C_PO
	VALUES (298,
	94,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (123,
	280,
	0,
	298);
INSERT INTO C_R
	VALUES (123,
	'JogMotor',
	'',
	'Unnamed Interface',
	'Diverter::Port1::JogMotor');
INSERT INTO SPR_REP
	VALUES (299,
	282,
	123);
INSERT INTO SPR_RS
	VALUES (299,
	'jog',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (799,
	299);
INSERT INTO ACT_ACT
	VALUES (799,
	'signal',
	0,
	800,
	0,
	0,
	'Port1::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (800,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	799,
	0);
INSERT INTO SPR_REP
	VALUES (300,
	284,
	123);
INSERT INTO SPR_RS
	VALUES (300,
	'stop',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (801,
	300);
INSERT INTO ACT_ACT
	VALUES (801,
	'signal',
	0,
	802,
	0,
	0,
	'Port1::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (802,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	801,
	0);
INSERT INTO SPR_REP
	VALUES (301,
	286,
	123);
INSERT INTO SPR_RS
	VALUES (301,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (803,
	301);
INSERT INTO ACT_ACT
	VALUES (803,
	'signal',
	0,
	804,
	0,
	0,
	'Port1::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (804,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	803,
	0);
INSERT INTO SPR_REP
	VALUES (302,
	288,
	123);
INSERT INTO SPR_RS
	VALUES (302,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (805,
	302);
INSERT INTO ACT_ACT
	VALUES (805,
	'signal',
	0,
	806,
	0,
	0,
	'Port1::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (806,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	805,
	0);
INSERT INTO PE_PE
	VALUES (807,
	1,
	0,
	94,
	7);
INSERT INTO EP_PKG
	VALUES (807,
	0,
	528,
	'CrossTransferConveyorControl',
	'',
	0);
INSERT INTO PE_PE
	VALUES (808,
	1,
	807,
	0,
	9);
INSERT INTO R_REL
	VALUES (808,
	8,
	'This relationship formalizes a migrating sub-type class relationship.  The
sub-type classes provide different sequencing logic for the Cross 
Transfer Conveyor super-type.  The Cross Transfer Conveyor super-type class
doesn''t change but displays different behavior based on the current sub-type.

Polymorphic events directed to the Cross Transfer Conveyor are seamlessly passed
to the sub-types for interaction with the sub-type state machine. 


',
	0);
INSERT INTO R_SUBSUP
	VALUES (808);
INSERT INTO R_SUPER
	VALUES (543,
	808,
	809);
INSERT INTO O_RTIDA
	VALUES (549,
	543,
	0,
	808,
	809);
INSERT INTO R_RTO
	VALUES (543,
	808,
	809,
	0);
INSERT INTO R_OIR
	VALUES (543,
	808,
	809,
	0);
INSERT INTO R_SUB
	VALUES (553,
	808,
	810);
INSERT INTO R_RGO
	VALUES (553,
	808,
	810);
INSERT INTO R_OIR
	VALUES (553,
	808,
	810,
	0);
INSERT INTO R_SUB
	VALUES (811,
	808,
	812);
INSERT INTO R_RGO
	VALUES (811,
	808,
	812);
INSERT INTO R_OIR
	VALUES (811,
	808,
	812,
	0);
INSERT INTO R_SUB
	VALUES (813,
	808,
	814);
INSERT INTO R_RGO
	VALUES (813,
	808,
	814);
INSERT INTO R_OIR
	VALUES (813,
	808,
	814,
	0);
INSERT INTO PE_PE
	VALUES (815,
	1,
	807,
	0,
	9);
INSERT INTO R_REL
	VALUES (815,
	9,
	'

',
	0);
INSERT INTO R_SUBSUP
	VALUES (815);
INSERT INTO R_SUPER
	VALUES (811,
	815,
	816);
INSERT INTO O_RTIDA
	VALUES (817,
	811,
	0,
	815,
	816);
INSERT INTO R_RTO
	VALUES (811,
	815,
	816,
	0);
INSERT INTO R_OIR
	VALUES (811,
	815,
	816,
	0);
INSERT INTO R_SUB
	VALUES (818,
	815,
	819);
INSERT INTO R_RGO
	VALUES (818,
	815,
	819);
INSERT INTO R_OIR
	VALUES (818,
	815,
	819,
	0);
INSERT INTO R_SUB
	VALUES (636,
	815,
	820);
INSERT INTO R_RGO
	VALUES (636,
	815,
	820);
INSERT INTO R_OIR
	VALUES (636,
	815,
	820,
	0);
INSERT INTO PE_PE
	VALUES (811,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (811,
	'Automatic Sequence',
	13,
	'AUTOSEQ',
	'',
	0);
INSERT INTO O_REF
	VALUES (811,
	543,
	0,
	549,
	808,
	812,
	809,
	817,
	821,
	0,
	0,
	'',
	'Cross Transfer Conveyor',
	'Id',
	'R8');
INSERT INTO O_RATTR
	VALUES (817,
	811,
	549,
	543,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (817,
	811,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	261,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (822,
	811);
INSERT INTO O_BATTR
	VALUES (822,
	811);
INSERT INTO O_ATTR
	VALUES (822,
	811,
	823,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (824,
	811);
INSERT INTO O_BATTR
	VALUES (824,
	811);
INSERT INTO O_ATTR
	VALUES (824,
	811,
	817,
	'time_to_run',
	'',
	'',
	'time_to_run',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (823,
	811);
INSERT INTO O_BATTR
	VALUES (823,
	811);
INSERT INTO O_ATTR
	VALUES (823,
	811,
	824,
	'motor_direction',
	'',
	'',
	'motor_direction',
	0,
	290,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	811);
INSERT INTO O_OIDA
	VALUES (817,
	811,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	811);
INSERT INTO O_ID
	VALUES (2,
	811);
INSERT INTO SM_ISM
	VALUES (825,
	811);
INSERT INTO SM_SM
	VALUES (825,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (825);
INSERT INTO SM_PEVT
	VALUES (642,
	825,
	0,
	'Automatic Sequence',
	'AUTOSEQ',
	'initiate_auto_seq');
INSERT INTO SM_EVT
	VALUES (642,
	825,
	0,
	11,
	'initiate_auto_seq',
	0,
	'',
	'AUTOSEQ11',
	'');
INSERT INTO PE_PE
	VALUES (818,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (818,
	'Conveyor Length Rollout',
	15,
	'CLX1DCGSEQ',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (826,
	818);
INSERT INTO O_BATTR
	VALUES (826,
	818);
INSERT INTO O_ATTR
	VALUES (826,
	818,
	827,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_REF
	VALUES (818,
	811,
	0,
	817,
	815,
	819,
	816,
	827,
	828,
	0,
	0,
	'',
	'Automatic Sequence',
	'Id',
	'R9');
INSERT INTO O_RATTR
	VALUES (827,
	818,
	549,
	543,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (827,
	818,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	261,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	818);
INSERT INTO O_OIDA
	VALUES (827,
	818,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	818);
INSERT INTO O_ID
	VALUES (2,
	818);
INSERT INTO SM_ISM
	VALUES (829,
	818);
INSERT INTO SM_SM
	VALUES (829,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (829);
INSERT INTO SM_LEVT
	VALUES (830,
	829,
	0);
INSERT INTO SM_SEVT
	VALUES (830,
	829,
	0);
INSERT INTO SM_EVT
	VALUES (830,
	829,
	0,
	3,
	'jog_time_expired',
	0,
	'',
	'CLX1DCGSEQ3',
	'');
INSERT INTO SM_NLEVT
	VALUES (831,
	829,
	0,
	642,
	825,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (831,
	829,
	0);
INSERT INTO SM_EVT
	VALUES (831,
	829,
	0,
	11,
	'initiate_auto_seq',
	0,
	'',
	'AUTOSEQ11*',
	'');
INSERT INTO SM_NLEVT
	VALUES (832,
	829,
	0,
	665,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (832,
	829,
	0);
INSERT INTO SM_EVT
	VALUES (832,
	829,
	0,
	4,
	'jog_complete',
	0,
	'',
	'XTFRCNVR4*',
	'');
INSERT INTO SM_NLEVT
	VALUES (833,
	829,
	0,
	667,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (833,
	829,
	0);
INSERT INTO SM_EVT
	VALUES (833,
	829,
	0,
	9,
	'motor_stopped',
	0,
	'',
	'XTFRCNVR9*',
	'');
INSERT INTO SM_STATE
	VALUES (834,
	829,
	0,
	'Waiting',
	1,
	0);
INSERT INTO SM_CH
	VALUES (834,
	830,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (834,
	830,
	829,
	0);
INSERT INTO SM_SEME
	VALUES (834,
	831,
	829,
	0);
INSERT INTO SM_CH
	VALUES (834,
	832,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (834,
	832,
	829,
	0);
INSERT INTO SM_CH
	VALUES (834,
	833,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (834,
	833,
	829,
	0);
INSERT INTO SM_MOAH
	VALUES (835,
	829,
	834);
INSERT INTO SM_AH
	VALUES (835,
	829);
INSERT INTO SM_ACT
	VALUES (835,
	829,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (836,
	829,
	835);
INSERT INTO ACT_ACT
	VALUES (836,
	'state',
	0,
	837,
	0,
	0,
	'Conveyor Length Rollout::Waiting',
	0);
INSERT INTO ACT_BLK
	VALUES (837,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	836,
	0);
INSERT INTO SM_STATE
	VALUES (838,
	829,
	0,
	'InitiatingConveyorJog',
	2,
	0);
INSERT INTO SM_CH
	VALUES (838,
	830,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (838,
	830,
	829,
	0);
INSERT INTO SM_CH
	VALUES (838,
	831,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (838,
	831,
	829,
	0);
INSERT INTO SM_CH
	VALUES (838,
	832,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (838,
	832,
	829,
	0);
INSERT INTO SM_SEME
	VALUES (838,
	833,
	829,
	0);
INSERT INTO SM_MOAH
	VALUES (839,
	829,
	838);
INSERT INTO SM_AH
	VALUES (839,
	829);
INSERT INTO SM_ACT
	VALUES (839,
	829,
	1,
	'// Run the conveyor long enough for it to clear it''s length

select one auto_seq related by self->AUTOSEQ[R9];
xtfrcnvr::jog(direction: auto_seq.motor_direction, 
               velocity: -1, 
           acceleration: -1, 
               duration: auto_seq.time_to_run);

',
	'');
INSERT INTO ACT_SAB
	VALUES (840,
	829,
	839);
INSERT INTO ACT_ACT
	VALUES (840,
	'state',
	0,
	841,
	0,
	0,
	'Conveyor Length Rollout::InitiatingConveyorJog',
	0);
INSERT INTO ACT_BLK
	VALUES (841,
	1,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	3,
	46,
	0,
	0,
	0,
	0,
	0,
	840,
	0);
INSERT INTO ACT_SMT
	VALUES (842,
	841,
	843,
	3,
	1,
	'Conveyor Length Rollout::InitiatingConveyorJog line: 3');
INSERT INTO ACT_SEL
	VALUES (842,
	844,
	1,
	'one',
	845);
INSERT INTO ACT_SR
	VALUES (842);
INSERT INTO ACT_LNK
	VALUES (846,
	'',
	842,
	815,
	0,
	2,
	811,
	3,
	38,
	3,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (843,
	841,
	0,
	4,
	1,
	'Conveyor Length Rollout::InitiatingConveyorJog line: 4');
INSERT INTO ACT_SGN
	VALUES (843,
	4,
	11,
	4,
	1,
	0,
	281,
	0);
INSERT INTO V_VAL
	VALUES (845,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	841);
INSERT INTO V_IRF
	VALUES (845,
	847);
INSERT INTO V_VAL
	VALUES (848,
	0,
	0,
	4,
	26,
	33,
	0,
	0,
	0,
	0,
	34,
	841);
INSERT INTO V_IRF
	VALUES (848,
	844);
INSERT INTO V_VAL
	VALUES (849,
	0,
	0,
	4,
	35,
	49,
	0,
	0,
	0,
	0,
	290,
	841);
INSERT INTO V_AVL
	VALUES (849,
	848,
	811,
	823);
INSERT INTO V_PAR
	VALUES (849,
	843,
	0,
	'direction',
	850,
	4,
	15);
INSERT INTO V_VAL
	VALUES (850,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	841);
INSERT INTO V_UNY
	VALUES (850,
	851,
	'-');
INSERT INTO V_PAR
	VALUES (850,
	843,
	0,
	'velocity',
	852,
	5,
	16);
INSERT INTO V_VAL
	VALUES (851,
	0,
	0,
	5,
	27,
	27,
	0,
	0,
	0,
	0,
	186,
	841);
INSERT INTO V_LIN
	VALUES (851,
	'1');
INSERT INTO V_VAL
	VALUES (852,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	841);
INSERT INTO V_UNY
	VALUES (852,
	853,
	'-');
INSERT INTO V_PAR
	VALUES (852,
	843,
	0,
	'acceleration',
	854,
	6,
	12);
INSERT INTO V_VAL
	VALUES (853,
	0,
	0,
	6,
	27,
	27,
	0,
	0,
	0,
	0,
	186,
	841);
INSERT INTO V_LIN
	VALUES (853,
	'1');
INSERT INTO V_VAL
	VALUES (855,
	0,
	0,
	7,
	26,
	33,
	0,
	0,
	0,
	0,
	34,
	841);
INSERT INTO V_IRF
	VALUES (855,
	844);
INSERT INTO V_VAL
	VALUES (854,
	0,
	0,
	7,
	35,
	45,
	0,
	0,
	0,
	0,
	186,
	841);
INSERT INTO V_AVL
	VALUES (854,
	855,
	811,
	824);
INSERT INTO V_PAR
	VALUES (854,
	843,
	0,
	'duration',
	0,
	7,
	16);
INSERT INTO V_VAR
	VALUES (844,
	841,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (844,
	0,
	811);
INSERT INTO V_VAR
	VALUES (847,
	841,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (847,
	0,
	818);
INSERT INTO SM_STATE
	VALUES (856,
	829,
	0,
	'MotorStopConfirmed',
	3,
	0);
INSERT INTO SM_CH
	VALUES (856,
	830,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (856,
	830,
	829,
	0);
INSERT INTO SM_CH
	VALUES (856,
	831,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (856,
	831,
	829,
	0);
INSERT INTO SM_CH
	VALUES (856,
	832,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (856,
	832,
	829,
	0);
INSERT INTO SM_CH
	VALUES (856,
	833,
	829,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (856,
	833,
	829,
	0);
INSERT INTO SM_MOAH
	VALUES (857,
	829,
	856);
INSERT INTO SM_AH
	VALUES (857,
	829);
INSERT INTO SM_ACT
	VALUES (857,
	829,
	1,
	'// The move is complete, clean up and notify Cross Transfer Conveyor
select one auto_seq related by self->AUTOSEQ[R9];
select one xtfr_conveyor related by auto_seq->XTFRCNVR[R8];

unrelate auto_seq from xtfr_conveyor across R8;
unrelate self from auto_seq across R9;

generate XTFRCNVR7:automatic_sequence_cmplt() to xtfr_conveyor;

delete object instance self;
',
	'');
INSERT INTO ACT_SAB
	VALUES (858,
	829,
	857);
INSERT INTO ACT_ACT
	VALUES (858,
	'state',
	0,
	859,
	0,
	0,
	'Conveyor Length Rollout::MotorStopConfirmed',
	0);
INSERT INTO ACT_BLK
	VALUES (859,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	10,
	1,
	3,
	47,
	0,
	0,
	6,
	36,
	0,
	0,
	0,
	0,
	0,
	858,
	0);
INSERT INTO ACT_SMT
	VALUES (860,
	859,
	861,
	2,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 2');
INSERT INTO ACT_SEL
	VALUES (860,
	862,
	1,
	'one',
	863);
INSERT INTO ACT_SR
	VALUES (860);
INSERT INTO ACT_LNK
	VALUES (864,
	'',
	860,
	815,
	0,
	2,
	811,
	2,
	38,
	2,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (861,
	859,
	865,
	3,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 3');
INSERT INTO ACT_SEL
	VALUES (861,
	866,
	1,
	'one',
	867);
INSERT INTO ACT_SR
	VALUES (861);
INSERT INTO ACT_LNK
	VALUES (868,
	'',
	861,
	808,
	0,
	2,
	543,
	3,
	47,
	3,
	56,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (865,
	859,
	869,
	5,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 5');
INSERT INTO ACT_UNR
	VALUES (865,
	862,
	866,
	'',
	808,
	5,
	45,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (869,
	859,
	870,
	6,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 6');
INSERT INTO ACT_UNR
	VALUES (869,
	871,
	862,
	'',
	815,
	6,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (870,
	859,
	872,
	8,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 8');
INSERT INTO E_ESS
	VALUES (870,
	1,
	0,
	8,
	10,
	8,
	20,
	3,
	47,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (870);
INSERT INTO E_GSME
	VALUES (870,
	580);
INSERT INTO E_GEN
	VALUES (870,
	866);
INSERT INTO ACT_SMT
	VALUES (872,
	859,
	0,
	10,
	1,
	'Conveyor Length Rollout::MotorStopConfirmed line: 10');
INSERT INTO ACT_DEL
	VALUES (872,
	871);
INSERT INTO V_VAL
	VALUES (863,
	0,
	0,
	2,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	859);
INSERT INTO V_IRF
	VALUES (863,
	871);
INSERT INTO V_VAL
	VALUES (867,
	0,
	0,
	3,
	37,
	44,
	0,
	0,
	0,
	0,
	34,
	859);
INSERT INTO V_IRF
	VALUES (867,
	862);
INSERT INTO V_VAR
	VALUES (862,
	859,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (862,
	0,
	811);
INSERT INTO V_VAR
	VALUES (871,
	859,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (871,
	0,
	818);
INSERT INTO V_VAR
	VALUES (866,
	859,
	'xtfr_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (866,
	0,
	543);
INSERT INTO SM_NSTXN
	VALUES (873,
	829,
	834,
	831,
	0);
INSERT INTO SM_TAH
	VALUES (874,
	829,
	873);
INSERT INTO SM_AH
	VALUES (874,
	829);
INSERT INTO SM_ACT
	VALUES (874,
	829,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (875,
	829,
	874);
INSERT INTO ACT_ACT
	VALUES (875,
	'transition',
	0,
	876,
	0,
	0,
	'initiate_auto_seq::Automatic Sequence',
	0);
INSERT INTO ACT_BLK
	VALUES (876,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	875,
	0);
INSERT INTO SM_TXN
	VALUES (873,
	829,
	838,
	0);
INSERT INTO SM_NSTXN
	VALUES (877,
	829,
	838,
	833,
	0);
INSERT INTO SM_TAH
	VALUES (878,
	829,
	877);
INSERT INTO SM_AH
	VALUES (878,
	829);
INSERT INTO SM_ACT
	VALUES (878,
	829,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (879,
	829,
	878);
INSERT INTO ACT_ACT
	VALUES (879,
	'transition',
	0,
	880,
	0,
	0,
	'motor_stopped::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (880,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	879,
	0);
INSERT INTO SM_TXN
	VALUES (877,
	829,
	856,
	0);
INSERT INTO PE_PE
	VALUES (543,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (543,
	'Cross Transfer Conveyor',
	7,
	'XTFRCNVR',
	'',
	0);
INSERT INTO O_TFR
	VALUES (562,
	543,
	'GetMotorDirection',
	'Converts a machine side into a motor direction to run the conveyor in the correct
direction.  ',
	290,
	1,
	'motor_dir = self.drive_side;
if param.machine_side == Machine_Side::Operator;
   motor_dir = Motor_Direction::Forward;
   if self.drive_side == Motor_Direction::Forward;
      motor_dir = Motor_Direction::Reverse;
   end if;
end if;

return motor_dir;

',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (564,
	562,
	'machine_side',
	778,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (881,
	562);
INSERT INTO ACT_ACT
	VALUES (881,
	'operation',
	0,
	882,
	0,
	0,
	'Cross Transfer Conveyor::GetMotorDirection',
	0);
INSERT INTO ACT_BLK
	VALUES (882,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	26,
	0,
	881,
	0);
INSERT INTO ACT_SMT
	VALUES (883,
	882,
	884,
	1,
	1,
	'Cross Transfer Conveyor::GetMotorDirection line: 1');
INSERT INTO ACT_AI
	VALUES (883,
	885,
	886,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (884,
	882,
	887,
	2,
	1,
	'Cross Transfer Conveyor::GetMotorDirection line: 2');
INSERT INTO ACT_IF
	VALUES (884,
	888,
	889,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (887,
	882,
	0,
	9,
	1,
	'Cross Transfer Conveyor::GetMotorDirection line: 9');
INSERT INTO ACT_RET
	VALUES (887,
	890);
INSERT INTO V_VAL
	VALUES (886,
	1,
	1,
	1,
	1,
	9,
	0,
	0,
	0,
	0,
	290,
	882);
INSERT INTO V_TVL
	VALUES (886,
	891);
INSERT INTO V_VAL
	VALUES (892,
	0,
	0,
	1,
	13,
	16,
	0,
	0,
	0,
	0,
	34,
	882);
INSERT INTO V_IRF
	VALUES (892,
	893);
INSERT INTO V_VAL
	VALUES (885,
	0,
	0,
	1,
	18,
	27,
	0,
	0,
	0,
	0,
	290,
	882);
INSERT INTO V_AVL
	VALUES (885,
	892,
	543,
	551);
INSERT INTO V_VAL
	VALUES (894,
	0,
	0,
	2,
	10,
	21,
	0,
	0,
	0,
	0,
	778,
	882);
INSERT INTO V_PVL
	VALUES (894,
	0,
	0,
	564,
	0);
INSERT INTO V_VAL
	VALUES (889,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	882);
INSERT INTO V_BIN
	VALUES (889,
	895,
	894,
	'==');
INSERT INTO V_VAL
	VALUES (895,
	0,
	0,
	2,
	40,
	47,
	0,
	0,
	0,
	0,
	778,
	882);
INSERT INTO V_LEN
	VALUES (895,
	779,
	2,
	26);
INSERT INTO V_VAL
	VALUES (890,
	0,
	0,
	9,
	8,
	16,
	0,
	0,
	0,
	0,
	290,
	882);
INSERT INTO V_TVL
	VALUES (890,
	891);
INSERT INTO V_VAR
	VALUES (891,
	882,
	'motor_dir',
	1,
	290);
INSERT INTO V_TRN
	VALUES (891,
	0,
	'');
INSERT INTO V_VAR
	VALUES (893,
	882,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (893,
	0,
	543);
INSERT INTO ACT_BLK
	VALUES (888,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	4,
	26,
	0,
	881,
	0);
INSERT INTO ACT_SMT
	VALUES (896,
	888,
	897,
	3,
	4,
	'Cross Transfer Conveyor::GetMotorDirection line: 3');
INSERT INTO ACT_AI
	VALUES (896,
	898,
	899,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (897,
	888,
	0,
	4,
	4,
	'Cross Transfer Conveyor::GetMotorDirection line: 4');
INSERT INTO ACT_IF
	VALUES (897,
	900,
	901,
	0,
	0);
INSERT INTO V_VAL
	VALUES (899,
	1,
	0,
	3,
	4,
	12,
	0,
	0,
	0,
	0,
	290,
	888);
INSERT INTO V_TVL
	VALUES (899,
	891);
INSERT INTO V_VAL
	VALUES (898,
	0,
	0,
	3,
	33,
	39,
	0,
	0,
	0,
	0,
	290,
	888);
INSERT INTO V_LEN
	VALUES (898,
	526,
	3,
	16);
INSERT INTO V_VAL
	VALUES (902,
	0,
	0,
	4,
	7,
	10,
	0,
	0,
	0,
	0,
	34,
	888);
INSERT INTO V_IRF
	VALUES (902,
	893);
INSERT INTO V_VAL
	VALUES (903,
	0,
	0,
	4,
	12,
	21,
	0,
	0,
	0,
	0,
	290,
	888);
INSERT INTO V_AVL
	VALUES (903,
	902,
	543,
	551);
INSERT INTO V_VAL
	VALUES (901,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	888);
INSERT INTO V_BIN
	VALUES (901,
	904,
	903,
	'==');
INSERT INTO V_VAL
	VALUES (904,
	0,
	0,
	4,
	43,
	49,
	0,
	0,
	0,
	0,
	290,
	888);
INSERT INTO V_LEN
	VALUES (904,
	526,
	4,
	26);
INSERT INTO ACT_BLK
	VALUES (900,
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	5,
	19,
	0,
	881,
	0);
INSERT INTO ACT_SMT
	VALUES (905,
	900,
	0,
	5,
	7,
	'Cross Transfer Conveyor::GetMotorDirection line: 5');
INSERT INTO ACT_AI
	VALUES (905,
	906,
	907,
	0,
	0);
INSERT INTO V_VAL
	VALUES (907,
	1,
	0,
	5,
	7,
	15,
	0,
	0,
	0,
	0,
	290,
	900);
INSERT INTO V_TVL
	VALUES (907,
	891);
INSERT INTO V_VAL
	VALUES (906,
	0,
	0,
	5,
	36,
	42,
	0,
	0,
	0,
	0,
	290,
	900);
INSERT INTO V_LEN
	VALUES (906,
	527,
	5,
	19);
INSERT INTO O_NBATTR
	VALUES (545,
	543);
INSERT INTO O_BATTR
	VALUES (545,
	543);
INSERT INTO O_ATTR
	VALUES (545,
	543,
	551,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (547,
	543);
INSERT INTO O_BATTR
	VALUES (547,
	543);
INSERT INTO O_ATTR
	VALUES (547,
	543,
	549,
	'stopping_time',
	'Units = mSec
Time required for the conveyor to come to a complete stop from its maximum velocity.',
	'',
	'stopping_time',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (549,
	543);
INSERT INTO O_BATTR
	VALUES (549,
	543);
INSERT INTO O_ATTR
	VALUES (549,
	543,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (551,
	543);
INSERT INTO O_BATTR
	VALUES (551,
	543);
INSERT INTO O_ATTR
	VALUES (551,
	543,
	547,
	'drive_side',
	'This attribute defines the required motor direction for the conveyor to run
toward the drive side of the machine.',
	'',
	'drive_side',
	0,
	290,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	543);
INSERT INTO O_OIDA
	VALUES (549,
	543,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	543);
INSERT INTO O_ID
	VALUES (2,
	543);
INSERT INTO SM_ISM
	VALUES (574,
	543);
INSERT INTO SM_SM
	VALUES (574,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (574);
INSERT INTO SM_EVTDI
	VALUES (586,
	574,
	'direction',
	'',
	778,
	'',
	584,
	0);
INSERT INTO SM_EVTDI
	VALUES (575,
	574,
	'direction',
	'',
	778,
	'',
	572,
	0);
INSERT INTO SM_EVTDI
	VALUES (577,
	574,
	'control_alg',
	'',
	908,
	'',
	572,
	575);
INSERT INTO SM_PEVT
	VALUES (584,
	574,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR',
	'jog');
INSERT INTO SM_EVT
	VALUES (584,
	574,
	0,
	3,
	'jog',
	0,
	'',
	'XTFRCNVR3',
	'');
INSERT INTO SM_PEVT
	VALUES (665,
	574,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR',
	'jog_complete');
INSERT INTO SM_EVT
	VALUES (665,
	574,
	0,
	4,
	'jog_complete',
	0,
	'',
	'XTFRCNVR4',
	'');
INSERT INTO SM_LEVT
	VALUES (580,
	574,
	0);
INSERT INTO SM_SEVT
	VALUES (580,
	574,
	0);
INSERT INTO SM_EVT
	VALUES (580,
	574,
	0,
	7,
	'automatic_sequence_cmplt',
	0,
	'',
	'XTFRCNVR7',
	'');
INSERT INTO SM_LEVT
	VALUES (572,
	574,
	0);
INSERT INTO SM_SEVT
	VALUES (572,
	574,
	0);
INSERT INTO SM_EVT
	VALUES (572,
	574,
	0,
	6,
	'discharge',
	0,
	'',
	'XTFRCNVR6',
	'');
INSERT INTO SM_NLEVT
	VALUES (909,
	574,
	0,
	567,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (909,
	574,
	0);
INSERT INTO SM_EVT
	VALUES (909,
	574,
	0,
	1,
	'activate',
	0,
	'',
	'ACTR1*',
	'');
INSERT INTO SM_PEVT
	VALUES (588,
	574,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR',
	'drive_rdy_for_inst');
INSERT INTO SM_EVT
	VALUES (588,
	574,
	0,
	5,
	'drive_rdy_for_inst',
	0,
	'',
	'XTFRCNVR5',
	'');
INSERT INTO SM_LEVT
	VALUES (911,
	574,
	0);
INSERT INTO SM_SEVT
	VALUES (911,
	574,
	0);
INSERT INTO SM_EVT
	VALUES (911,
	574,
	0,
	8,
	'sequence_aborted',
	0,
	'',
	'XTFRCNVR8',
	'');
INSERT INTO SM_PEVT
	VALUES (667,
	574,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR',
	'motor_stopped');
INSERT INTO SM_EVT
	VALUES (667,
	574,
	0,
	9,
	'motor_stopped',
	0,
	'',
	'XTFRCNVR9',
	'');
INSERT INTO SM_PEVT
	VALUES (590,
	574,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR',
	'enable_control');
INSERT INTO SM_EVT
	VALUES (590,
	574,
	0,
	10,
	'enable_control',
	0,
	'',
	'XTFRCNVR10',
	'');
INSERT INTO SM_STATE
	VALUES (912,
	574,
	0,
	'ManualControl',
	1,
	0);
INSERT INTO SM_CH
	VALUES (912,
	580,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (912,
	580,
	574,
	0);
INSERT INTO SM_SEME
	VALUES (912,
	909,
	574,
	0);
INSERT INTO SM_CH
	VALUES (912,
	572,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (912,
	572,
	574,
	0);
INSERT INTO SM_CH
	VALUES (912,
	911,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (912,
	911,
	574,
	0);
INSERT INTO SM_MOAH
	VALUES (913,
	574,
	912);
INSERT INTO SM_AH
	VALUES (913,
	574);
INSERT INTO SM_ACT
	VALUES (913,
	574,
	1,
	'// Create the manual sequence
create object instance man_seq of MANSEQ;
relate man_seq to self across R8;

generate XTFRCNVR10:enable_control() to man_seq;

',
	'');
INSERT INTO ACT_SAB
	VALUES (914,
	574,
	913);
INSERT INTO ACT_ACT
	VALUES (914,
	'state',
	0,
	915,
	0,
	0,
	'Cross Transfer Conveyor::ManualControl',
	0);
INSERT INTO ACT_BLK
	VALUES (915,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	5,
	1,
	2,
	35,
	0,
	0,
	3,
	31,
	0,
	0,
	0,
	0,
	0,
	914,
	0);
INSERT INTO ACT_SMT
	VALUES (916,
	915,
	917,
	2,
	1,
	'Cross Transfer Conveyor::ManualControl line: 2');
INSERT INTO ACT_CR
	VALUES (916,
	918,
	1,
	553,
	2,
	35);
INSERT INTO ACT_SMT
	VALUES (917,
	915,
	919,
	3,
	1,
	'Cross Transfer Conveyor::ManualControl line: 3');
INSERT INTO ACT_REL
	VALUES (917,
	918,
	920,
	'',
	808,
	3,
	31,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (919,
	915,
	0,
	5,
	1,
	'Cross Transfer Conveyor::ManualControl line: 5');
INSERT INTO E_ESS
	VALUES (919,
	1,
	0,
	5,
	10,
	5,
	21,
	2,
	35,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (919);
INSERT INTO E_GSME
	VALUES (919,
	590);
INSERT INTO E_GEN
	VALUES (919,
	918);
INSERT INTO V_VAR
	VALUES (918,
	915,
	'man_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (918,
	0,
	553);
INSERT INTO V_VAR
	VALUES (920,
	915,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (920,
	0,
	543);
INSERT INTO SM_STATE
	VALUES (921,
	574,
	0,
	'MotionInhibited',
	2,
	0);
INSERT INTO SM_CH
	VALUES (921,
	580,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (921,
	580,
	574,
	0);
INSERT INTO SM_CH
	VALUES (921,
	909,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (921,
	909,
	574,
	0);
INSERT INTO SM_SEME
	VALUES (921,
	572,
	574,
	0);
INSERT INTO SM_SEME
	VALUES (921,
	911,
	574,
	0);
INSERT INTO SM_MOAH
	VALUES (922,
	574,
	921);
INSERT INTO SM_AH
	VALUES (922,
	574);
INSERT INTO SM_ACT
	VALUES (922,
	574,
	1,
	'// Stop the conveyor while sheets are being diverted into the bay.
// 


// Create the motion inhibited sub-type class
create object instance motion_inh of MOTINH;
relate motion_inh to self across R8;

xtfrcnvr::stop();
',
	'');
INSERT INTO ACT_SAB
	VALUES (923,
	574,
	922);
INSERT INTO ACT_ACT
	VALUES (923,
	'state',
	0,
	924,
	0,
	0,
	'Cross Transfer Conveyor::MotionInhibited',
	0);
INSERT INTO ACT_BLK
	VALUES (924,
	0,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	8,
	1,
	8,
	1,
	0,
	0,
	6,
	34,
	0,
	0,
	0,
	0,
	0,
	923,
	0);
INSERT INTO ACT_SMT
	VALUES (925,
	924,
	926,
	5,
	1,
	'Cross Transfer Conveyor::MotionInhibited line: 5');
INSERT INTO ACT_CR
	VALUES (925,
	927,
	1,
	813,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (926,
	924,
	928,
	6,
	1,
	'Cross Transfer Conveyor::MotionInhibited line: 6');
INSERT INTO ACT_REL
	VALUES (926,
	927,
	929,
	'',
	808,
	6,
	34,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (928,
	924,
	0,
	8,
	1,
	'Cross Transfer Conveyor::MotionInhibited line: 8');
INSERT INTO ACT_SGN
	VALUES (928,
	8,
	11,
	8,
	1,
	0,
	283,
	0);
INSERT INTO V_VAR
	VALUES (927,
	924,
	'motion_inh',
	1,
	34);
INSERT INTO V_INT
	VALUES (927,
	0,
	813);
INSERT INTO V_VAR
	VALUES (929,
	924,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (929,
	0,
	543);
INSERT INTO SM_STATE
	VALUES (930,
	574,
	0,
	'AutomaticControl',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (930,
	580,
	574,
	0);
INSERT INTO SM_CH
	VALUES (930,
	572,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (930,
	572,
	574,
	0);
INSERT INTO SM_CH
	VALUES (930,
	909,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (930,
	909,
	574,
	0);
INSERT INTO SM_CH
	VALUES (930,
	911,
	574,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (930,
	911,
	574,
	0);
INSERT INTO SM_MOAH
	VALUES (931,
	574,
	930);
INSERT INTO SM_AH
	VALUES (931,
	574);
INSERT INTO SM_ACT
	VALUES (931,
	574,
	1,
	'// A scrap or inspection divert is starting.  
// 



// Switch to the AutomaticSequence sub-type

// Create the automatic sequence
create object instance auto_seq of AUTOSEQ;
relate auto_seq to self across R8;

// Create the automatic sequence initial sub-type
select one xtfr_cnvr related by auto_seq->XTFRCNVR[R8];
auto_seq.motor_direction = xtfr_cnvr.GetMotorDirection(machine_side: rcvd_evt.direction);

if rcvd_evt.control_alg == Divert_Conv_Discharge_Alg::Dist_x1_Rollout;
   // Create the single length rollout jog
   create object instance conv_len_rollout of CLX1DCGSEQ;
   relate conv_len_rollout to auto_seq across R9;
   auto_seq.time_to_run = 90;   
   
elif rcvd_evt.control_alg == Divert_Conv_Discharge_Alg::Dist_x2_Hesitating_Rollout;
   // Create the hesitating rollout jog
   create object instance hesitate_rollout of CLX2HRDCGSEQ;
   relate hesitate_rollout to auto_seq across R9;
   auto_seq.time_to_run = 180;

end if;

generate AUTOSEQ11:initiate_auto_seq() to auto_seq;
',
	'');
INSERT INTO ACT_SAB
	VALUES (932,
	574,
	931);
INSERT INTO ACT_ACT
	VALUES (932,
	'state',
	0,
	933,
	0,
	0,
	'Cross Transfer Conveyor::AutomaticControl',
	0);
INSERT INTO ACT_BLK
	VALUES (933,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	29,
	1,
	12,
	43,
	0,
	0,
	12,
	52,
	0,
	0,
	21,
	30,
	0,
	932,
	0);
INSERT INTO ACT_SMT
	VALUES (934,
	933,
	935,
	8,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 8');
INSERT INTO ACT_CR
	VALUES (934,
	936,
	1,
	811,
	8,
	36);
INSERT INTO ACT_SMT
	VALUES (935,
	933,
	937,
	9,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 9');
INSERT INTO ACT_REL
	VALUES (935,
	936,
	938,
	'',
	808,
	9,
	32,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (937,
	933,
	939,
	12,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 12');
INSERT INTO ACT_SEL
	VALUES (937,
	940,
	1,
	'one',
	941);
INSERT INTO ACT_SR
	VALUES (937);
INSERT INTO ACT_LNK
	VALUES (942,
	'',
	937,
	808,
	0,
	2,
	543,
	12,
	43,
	12,
	52,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (939,
	933,
	943,
	13,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 13');
INSERT INTO ACT_AI
	VALUES (939,
	944,
	945,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (943,
	933,
	946,
	15,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 15');
INSERT INTO ACT_IF
	VALUES (943,
	947,
	948,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (949,
	933,
	0,
	21,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 21');
INSERT INTO ACT_EL
	VALUES (949,
	950,
	951,
	943);
INSERT INTO ACT_SMT
	VALUES (946,
	933,
	0,
	29,
	1,
	'Cross Transfer Conveyor::AutomaticControl line: 29');
INSERT INTO E_ESS
	VALUES (946,
	1,
	0,
	29,
	10,
	29,
	20,
	12,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (946);
INSERT INTO E_GSME
	VALUES (946,
	642);
INSERT INTO E_GEN
	VALUES (946,
	936);
INSERT INTO V_VAL
	VALUES (941,
	0,
	0,
	12,
	33,
	40,
	0,
	0,
	0,
	0,
	34,
	933);
INSERT INTO V_IRF
	VALUES (941,
	936);
INSERT INTO V_VAL
	VALUES (952,
	1,
	0,
	13,
	1,
	8,
	0,
	0,
	0,
	0,
	34,
	933);
INSERT INTO V_IRF
	VALUES (952,
	936);
INSERT INTO V_VAL
	VALUES (945,
	1,
	0,
	13,
	10,
	24,
	0,
	0,
	0,
	0,
	290,
	933);
INSERT INTO V_AVL
	VALUES (945,
	952,
	811,
	823);
INSERT INTO V_VAL
	VALUES (944,
	0,
	0,
	13,
	38,
	-1,
	13,
	56,
	0,
	0,
	290,
	933);
INSERT INTO V_TRV
	VALUES (944,
	562,
	940,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (953,
	0,
	0,
	13,
	79,
	87,
	0,
	0,
	0,
	0,
	778,
	933);
INSERT INTO V_EDV
	VALUES (953);
INSERT INTO V_EPR
	VALUES (953,
	574,
	575,
	0);
INSERT INTO V_PAR
	VALUES (953,
	0,
	944,
	'machine_side',
	0,
	13,
	56);
INSERT INTO V_VAL
	VALUES (954,
	0,
	0,
	15,
	13,
	23,
	0,
	0,
	0,
	0,
	908,
	933);
INSERT INTO V_EDV
	VALUES (954);
INSERT INTO V_EPR
	VALUES (954,
	574,
	577,
	0);
INSERT INTO V_VAL
	VALUES (948,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	933);
INSERT INTO V_BIN
	VALUES (948,
	955,
	954,
	'==');
INSERT INTO V_VAL
	VALUES (955,
	0,
	0,
	15,
	55,
	69,
	0,
	0,
	0,
	0,
	908,
	933);
INSERT INTO V_LEN
	VALUES (955,
	956,
	15,
	28);
INSERT INTO V_VAL
	VALUES (957,
	0,
	0,
	21,
	15,
	25,
	0,
	0,
	0,
	0,
	908,
	933);
INSERT INTO V_EDV
	VALUES (957);
INSERT INTO V_EPR
	VALUES (957,
	574,
	577,
	0);
INSERT INTO V_VAL
	VALUES (951,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	933);
INSERT INTO V_BIN
	VALUES (951,
	958,
	957,
	'==');
INSERT INTO V_VAL
	VALUES (958,
	0,
	0,
	21,
	57,
	82,
	0,
	0,
	0,
	0,
	908,
	933);
INSERT INTO V_LEN
	VALUES (958,
	959,
	21,
	30);
INSERT INTO V_VAR
	VALUES (936,
	933,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (936,
	0,
	811);
INSERT INTO V_VAR
	VALUES (938,
	933,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (938,
	0,
	543);
INSERT INTO V_VAR
	VALUES (940,
	933,
	'xtfr_cnvr',
	1,
	34);
INSERT INTO V_INT
	VALUES (940,
	0,
	543);
INSERT INTO ACT_BLK
	VALUES (947,
	0,
	0,
	0,
	'',
	'',
	'',
	19,
	4,
	17,
	47,
	0,
	0,
	18,
	47,
	0,
	0,
	0,
	0,
	0,
	932,
	0);
INSERT INTO ACT_SMT
	VALUES (960,
	947,
	961,
	17,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 17');
INSERT INTO ACT_CR
	VALUES (960,
	962,
	1,
	818,
	17,
	47);
INSERT INTO ACT_SMT
	VALUES (961,
	947,
	963,
	18,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 18');
INSERT INTO ACT_REL
	VALUES (961,
	962,
	936,
	'',
	815,
	18,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (963,
	947,
	0,
	19,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 19');
INSERT INTO ACT_AI
	VALUES (963,
	964,
	965,
	0,
	0);
INSERT INTO V_VAL
	VALUES (966,
	1,
	0,
	19,
	4,
	11,
	0,
	0,
	0,
	0,
	34,
	947);
INSERT INTO V_IRF
	VALUES (966,
	936);
INSERT INTO V_VAL
	VALUES (965,
	1,
	0,
	19,
	13,
	23,
	0,
	0,
	0,
	0,
	186,
	947);
INSERT INTO V_AVL
	VALUES (965,
	966,
	811,
	824);
INSERT INTO V_VAL
	VALUES (964,
	0,
	0,
	19,
	27,
	28,
	0,
	0,
	0,
	0,
	186,
	947);
INSERT INTO V_LIN
	VALUES (964,
	'90');
INSERT INTO V_VAR
	VALUES (962,
	947,
	'conv_len_rollout',
	1,
	34);
INSERT INTO V_INT
	VALUES (962,
	0,
	818);
INSERT INTO ACT_BLK
	VALUES (950,
	0,
	0,
	0,
	'',
	'',
	'',
	25,
	4,
	23,
	47,
	0,
	0,
	24,
	47,
	0,
	0,
	0,
	0,
	0,
	932,
	0);
INSERT INTO ACT_SMT
	VALUES (967,
	950,
	968,
	23,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 23');
INSERT INTO ACT_CR
	VALUES (967,
	969,
	1,
	636,
	23,
	47);
INSERT INTO ACT_SMT
	VALUES (968,
	950,
	970,
	24,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 24');
INSERT INTO ACT_REL
	VALUES (968,
	969,
	936,
	'',
	815,
	24,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (970,
	950,
	0,
	25,
	4,
	'Cross Transfer Conveyor::AutomaticControl line: 25');
INSERT INTO ACT_AI
	VALUES (970,
	971,
	972,
	0,
	0);
INSERT INTO V_VAL
	VALUES (973,
	1,
	0,
	25,
	4,
	11,
	0,
	0,
	0,
	0,
	34,
	950);
INSERT INTO V_IRF
	VALUES (973,
	936);
INSERT INTO V_VAL
	VALUES (972,
	1,
	0,
	25,
	13,
	23,
	0,
	0,
	0,
	0,
	186,
	950);
INSERT INTO V_AVL
	VALUES (972,
	973,
	811,
	824);
INSERT INTO V_VAL
	VALUES (971,
	0,
	0,
	25,
	27,
	29,
	0,
	0,
	0,
	0,
	186,
	950);
INSERT INTO V_LIN
	VALUES (971,
	'180');
INSERT INTO V_VAR
	VALUES (969,
	950,
	'hesitate_rollout',
	1,
	34);
INSERT INTO V_INT
	VALUES (969,
	0,
	636);
INSERT INTO SM_NSTXN
	VALUES (974,
	574,
	912,
	909,
	0);
INSERT INTO SM_TAH
	VALUES (975,
	574,
	974);
INSERT INTO SM_AH
	VALUES (975,
	574);
INSERT INTO SM_ACT
	VALUES (975,
	574,
	1,
	'// Delete the manual sequence
select one manual_seq related by self->MANSEQ[R8];
unrelate manual_seq from self across R8;
delete object instance manual_seq;

',
	'');
INSERT INTO ACT_TAB
	VALUES (976,
	574,
	975);
INSERT INTO ACT_ACT
	VALUES (976,
	'transition',
	0,
	977,
	0,
	0,
	'activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (977,
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	2,
	40,
	0,
	0,
	3,
	38,
	0,
	0,
	0,
	0,
	0,
	976,
	0);
INSERT INTO ACT_SMT
	VALUES (978,
	977,
	979,
	2,
	1,
	'activate::Actuator line: 2');
INSERT INTO ACT_SEL
	VALUES (978,
	980,
	1,
	'one',
	981);
INSERT INTO ACT_SR
	VALUES (978);
INSERT INTO ACT_LNK
	VALUES (982,
	'',
	978,
	808,
	0,
	2,
	553,
	2,
	40,
	2,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (979,
	977,
	983,
	3,
	1,
	'activate::Actuator line: 3');
INSERT INTO ACT_UNR
	VALUES (979,
	980,
	984,
	'',
	808,
	3,
	38,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (983,
	977,
	0,
	4,
	1,
	'activate::Actuator line: 4');
INSERT INTO ACT_DEL
	VALUES (983,
	980);
INSERT INTO V_VAL
	VALUES (981,
	0,
	0,
	2,
	34,
	37,
	0,
	0,
	0,
	0,
	34,
	977);
INSERT INTO V_IRF
	VALUES (981,
	984);
INSERT INTO V_VAR
	VALUES (980,
	977,
	'manual_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (980,
	0,
	553);
INSERT INTO V_VAR
	VALUES (984,
	977,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (984,
	0,
	543);
INSERT INTO SM_TXN
	VALUES (974,
	574,
	921,
	0);
INSERT INTO SM_NSTXN
	VALUES (985,
	574,
	921,
	911,
	0);
INSERT INTO SM_TAH
	VALUES (986,
	574,
	985);
INSERT INTO SM_AH
	VALUES (986,
	574);
INSERT INTO SM_ACT
	VALUES (986,
	574,
	1,
	'// Delete the motion inhibited class
select one motion_inh related by self->MOTINH[R8];
unrelate motion_inh from self across R8;
delete object instance motion_inh;

',
	'');
INSERT INTO ACT_TAB
	VALUES (987,
	574,
	986);
INSERT INTO ACT_ACT
	VALUES (987,
	'transition',
	0,
	988,
	0,
	0,
	'XTFRCNVR8: sequence_aborted',
	0);
INSERT INTO ACT_BLK
	VALUES (988,
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	2,
	40,
	0,
	0,
	3,
	38,
	0,
	0,
	0,
	0,
	0,
	987,
	0);
INSERT INTO ACT_SMT
	VALUES (989,
	988,
	990,
	2,
	1,
	'XTFRCNVR8: sequence_aborted line: 2');
INSERT INTO ACT_SEL
	VALUES (989,
	991,
	1,
	'one',
	992);
INSERT INTO ACT_SR
	VALUES (989);
INSERT INTO ACT_LNK
	VALUES (993,
	'',
	989,
	808,
	0,
	2,
	813,
	2,
	40,
	2,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (990,
	988,
	994,
	3,
	1,
	'XTFRCNVR8: sequence_aborted line: 3');
INSERT INTO ACT_UNR
	VALUES (990,
	991,
	995,
	'',
	808,
	3,
	38,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (994,
	988,
	0,
	4,
	1,
	'XTFRCNVR8: sequence_aborted line: 4');
INSERT INTO ACT_DEL
	VALUES (994,
	991);
INSERT INTO V_VAL
	VALUES (992,
	0,
	0,
	2,
	34,
	37,
	0,
	0,
	0,
	0,
	34,
	988);
INSERT INTO V_IRF
	VALUES (992,
	995);
INSERT INTO V_VAR
	VALUES (991,
	988,
	'motion_inh',
	1,
	34);
INSERT INTO V_INT
	VALUES (991,
	0,
	813);
INSERT INTO V_VAR
	VALUES (995,
	988,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (995,
	0,
	543);
INSERT INTO SM_TXN
	VALUES (985,
	574,
	912,
	0);
INSERT INTO SM_NSTXN
	VALUES (996,
	574,
	930,
	580,
	0);
INSERT INTO SM_TAH
	VALUES (997,
	574,
	996);
INSERT INTO SM_AH
	VALUES (997,
	574);
INSERT INTO SM_ACT
	VALUES (997,
	574,
	1,
	'// Delete the auto sequence class
select one auto_seq related by self->AUTOSEQ[R8];
unrelate auto_seq from self across R8;
delete object instance auto_seq;

',
	'');
INSERT INTO ACT_TAB
	VALUES (998,
	574,
	997);
INSERT INTO ACT_ACT
	VALUES (998,
	'transition',
	0,
	999,
	0,
	0,
	'XTFRCNVR7: automatic_sequence_cmplt',
	0);
INSERT INTO ACT_BLK
	VALUES (999,
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	2,
	38,
	0,
	0,
	3,
	36,
	0,
	0,
	0,
	0,
	0,
	998,
	0);
INSERT INTO ACT_SMT
	VALUES (1000,
	999,
	1001,
	2,
	1,
	'XTFRCNVR7: automatic_sequence_cmplt line: 2');
INSERT INTO ACT_SEL
	VALUES (1000,
	1002,
	1,
	'one',
	1003);
INSERT INTO ACT_SR
	VALUES (1000);
INSERT INTO ACT_LNK
	VALUES (1004,
	'',
	1000,
	808,
	0,
	2,
	811,
	2,
	38,
	2,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1001,
	999,
	1005,
	3,
	1,
	'XTFRCNVR7: automatic_sequence_cmplt line: 3');
INSERT INTO ACT_UNR
	VALUES (1001,
	1002,
	1006,
	'',
	808,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1005,
	999,
	0,
	4,
	1,
	'XTFRCNVR7: automatic_sequence_cmplt line: 4');
INSERT INTO ACT_DEL
	VALUES (1005,
	1002);
INSERT INTO V_VAL
	VALUES (1003,
	0,
	0,
	2,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	999);
INSERT INTO V_IRF
	VALUES (1003,
	1006);
INSERT INTO V_VAR
	VALUES (1002,
	999,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (1002,
	0,
	811);
INSERT INTO V_VAR
	VALUES (1006,
	999,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1006,
	0,
	543);
INSERT INTO SM_TXN
	VALUES (996,
	574,
	912,
	0);
INSERT INTO SM_NSTXN
	VALUES (1007,
	574,
	921,
	572,
	0);
INSERT INTO SM_TAH
	VALUES (1008,
	574,
	1007);
INSERT INTO SM_AH
	VALUES (1008,
	574);
INSERT INTO SM_ACT
	VALUES (1008,
	574,
	1,
	'// Delete the motion inhibited class
select one motion_inh related by self->MOTINH[R8];
unrelate motion_inh from self across R8;
delete object instance motion_inh;

',
	'');
INSERT INTO ACT_TAB
	VALUES (1009,
	574,
	1008);
INSERT INTO ACT_ACT
	VALUES (1009,
	'transition',
	0,
	1010,
	0,
	0,
	'XTFRCNVR6: discharge',
	0);
INSERT INTO ACT_BLK
	VALUES (1010,
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	2,
	40,
	0,
	0,
	3,
	38,
	0,
	0,
	0,
	0,
	0,
	1009,
	0);
INSERT INTO ACT_SMT
	VALUES (1011,
	1010,
	1012,
	2,
	1,
	'XTFRCNVR6: discharge line: 2');
INSERT INTO ACT_SEL
	VALUES (1011,
	1013,
	1,
	'one',
	1014);
INSERT INTO ACT_SR
	VALUES (1011);
INSERT INTO ACT_LNK
	VALUES (1015,
	'',
	1011,
	808,
	0,
	2,
	813,
	2,
	40,
	2,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1012,
	1010,
	1016,
	3,
	1,
	'XTFRCNVR6: discharge line: 3');
INSERT INTO ACT_UNR
	VALUES (1012,
	1013,
	1017,
	'',
	808,
	3,
	38,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1016,
	1010,
	0,
	4,
	1,
	'XTFRCNVR6: discharge line: 4');
INSERT INTO ACT_DEL
	VALUES (1016,
	1013);
INSERT INTO V_VAL
	VALUES (1014,
	0,
	0,
	2,
	34,
	37,
	0,
	0,
	0,
	0,
	34,
	1010);
INSERT INTO V_IRF
	VALUES (1014,
	1017);
INSERT INTO V_VAR
	VALUES (1013,
	1010,
	'motion_inh',
	1,
	34);
INSERT INTO V_INT
	VALUES (1013,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1017,
	1010,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1017,
	0,
	543);
INSERT INTO SM_TXN
	VALUES (1007,
	574,
	930,
	0);
INSERT INTO PE_PE
	VALUES (636,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (636,
	'Hesitating Rollout',
	14,
	'CLX2HRDCGSEQ',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (638,
	636);
INSERT INTO O_BATTR
	VALUES (638,
	636);
INSERT INTO O_ATTR
	VALUES (638,
	636,
	640,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (640,
	636);
INSERT INTO O_BATTR
	VALUES (640,
	636);
INSERT INTO O_ATTR
	VALUES (640,
	636,
	1018,
	'preliminary_move_time',
	'',
	'',
	'preliminary_move_time',
	0,
	186,
	'',
	'');
INSERT INTO O_REF
	VALUES (636,
	811,
	0,
	817,
	815,
	820,
	816,
	1018,
	1019,
	0,
	0,
	'',
	'Automatic Sequence',
	'Id',
	'R9');
INSERT INTO O_RATTR
	VALUES (1018,
	636,
	549,
	543,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1018,
	636,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	261,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	636);
INSERT INTO O_OIDA
	VALUES (1018,
	636,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	636);
INSERT INTO O_ID
	VALUES (2,
	636);
INSERT INTO SM_ISM
	VALUES (1020,
	636);
INSERT INTO SM_SM
	VALUES (1020,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1020);
INSERT INTO SM_LEVT
	VALUES (1021,
	1020,
	0);
INSERT INTO SM_SEVT
	VALUES (1021,
	1020,
	0);
INSERT INTO SM_EVT
	VALUES (1021,
	1020,
	0,
	2,
	'jog_time_expired',
	0,
	'',
	'CLX2HRDCGSEQ2',
	'');
INSERT INTO SM_NLEVT
	VALUES (1022,
	1020,
	0,
	642,
	825,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1022,
	1020,
	0);
INSERT INTO SM_EVT
	VALUES (1022,
	1020,
	0,
	32,
	'initiate_auto_seq_dht',
	0,
	'Where does this show up',
	'AUTOSEQ11*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1023,
	1020,
	0,
	665,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1023,
	1020,
	0);
INSERT INTO SM_EVT
	VALUES (1023,
	1020,
	0,
	4,
	'jog_complete',
	0,
	'',
	'XTFRCNVR4*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1024,
	1020,
	0,
	667,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1024,
	1020,
	0);
INSERT INTO SM_EVT
	VALUES (1024,
	1020,
	0,
	9,
	'motor_stopped',
	0,
	'',
	'XTFRCNVR9*',
	'');
INSERT INTO SM_STATE
	VALUES (1025,
	1020,
	0,
	'Waiting',
	1,
	0);
INSERT INTO SM_CH
	VALUES (1025,
	1021,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1025,
	1021,
	1020,
	0);
INSERT INTO SM_SEME
	VALUES (1025,
	1022,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1025,
	1023,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1025,
	1023,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1025,
	1024,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1025,
	1024,
	1020,
	0);
INSERT INTO SM_MOAH
	VALUES (1026,
	1020,
	1025);
INSERT INTO SM_AH
	VALUES (1026,
	1020);
INSERT INTO SM_ACT
	VALUES (1026,
	1020,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1027,
	1020,
	1026);
INSERT INTO ACT_ACT
	VALUES (1027,
	'state',
	0,
	1028,
	0,
	0,
	'Hesitating Rollout::Waiting',
	0);
INSERT INTO ACT_BLK
	VALUES (1028,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1027,
	0);
INSERT INTO SM_STATE
	VALUES (1029,
	1020,
	0,
	'FirstMove',
	2,
	1);
INSERT INTO SM_CH
	VALUES (1029,
	1021,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1029,
	1021,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1029,
	1022,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1029,
	1022,
	1020,
	0);
INSERT INTO SM_SEME
	VALUES (1029,
	1023,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1029,
	1024,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1029,
	1024,
	1020,
	0);
INSERT INTO SM_MOAH
	VALUES (1030,
	1020,
	1029);
INSERT INTO SM_AH
	VALUES (1030,
	1020);
INSERT INTO SM_ACT
	VALUES (1030,
	1020,
	1,
	'// Run the conveyor for a short time in the desired direction. 
// 


select one auto_seq related by self->AUTOSEQ[R9];

// Jog the conveyor for a short time
xtfrcnvr::jog(direction: auto_seq.motor_direction, velocity: -1, acceleration: -1, duration: self.preliminary_move_time);

',
	'');
INSERT INTO ACT_SAB
	VALUES (1031,
	1020,
	1030);
INSERT INTO ACT_ACT
	VALUES (1031,
	'state',
	0,
	1032,
	0,
	0,
	'Hesitating Rollout::FirstMove',
	0);
INSERT INTO ACT_BLK
	VALUES (1032,
	1,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	7,
	1,
	7,
	1,
	0,
	0,
	4,
	46,
	0,
	0,
	0,
	0,
	0,
	1031,
	0);
INSERT INTO ACT_SMT
	VALUES (1033,
	1032,
	1034,
	4,
	1,
	'Hesitating Rollout::FirstMove line: 4');
INSERT INTO ACT_SEL
	VALUES (1033,
	1035,
	1,
	'one',
	1036);
INSERT INTO ACT_SR
	VALUES (1033);
INSERT INTO ACT_LNK
	VALUES (1037,
	'',
	1033,
	815,
	0,
	2,
	811,
	4,
	38,
	4,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1034,
	1032,
	0,
	7,
	1,
	'Hesitating Rollout::FirstMove line: 7');
INSERT INTO ACT_SGN
	VALUES (1034,
	7,
	11,
	7,
	1,
	0,
	281,
	0);
INSERT INTO V_VAL
	VALUES (1036,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	1032);
INSERT INTO V_IRF
	VALUES (1036,
	1038);
INSERT INTO V_VAL
	VALUES (1039,
	0,
	0,
	7,
	26,
	33,
	0,
	0,
	0,
	0,
	34,
	1032);
INSERT INTO V_IRF
	VALUES (1039,
	1035);
INSERT INTO V_VAL
	VALUES (1040,
	0,
	0,
	7,
	35,
	49,
	0,
	0,
	0,
	0,
	290,
	1032);
INSERT INTO V_AVL
	VALUES (1040,
	1039,
	811,
	823);
INSERT INTO V_PAR
	VALUES (1040,
	1034,
	0,
	'direction',
	1041,
	7,
	15);
INSERT INTO V_VAL
	VALUES (1041,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1032);
INSERT INTO V_UNY
	VALUES (1041,
	1042,
	'-');
INSERT INTO V_PAR
	VALUES (1041,
	1034,
	0,
	'velocity',
	1043,
	7,
	52);
INSERT INTO V_VAL
	VALUES (1042,
	0,
	0,
	7,
	63,
	63,
	0,
	0,
	0,
	0,
	186,
	1032);
INSERT INTO V_LIN
	VALUES (1042,
	'1');
INSERT INTO V_VAL
	VALUES (1043,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1032);
INSERT INTO V_UNY
	VALUES (1043,
	1044,
	'-');
INSERT INTO V_PAR
	VALUES (1043,
	1034,
	0,
	'acceleration',
	1045,
	7,
	66);
INSERT INTO V_VAL
	VALUES (1044,
	0,
	0,
	7,
	81,
	81,
	0,
	0,
	0,
	0,
	186,
	1032);
INSERT INTO V_LIN
	VALUES (1044,
	'1');
INSERT INTO V_VAL
	VALUES (1046,
	0,
	0,
	7,
	94,
	97,
	0,
	0,
	0,
	0,
	34,
	1032);
INSERT INTO V_IRF
	VALUES (1046,
	1038);
INSERT INTO V_VAL
	VALUES (1045,
	0,
	0,
	7,
	99,
	119,
	0,
	0,
	0,
	0,
	186,
	1032);
INSERT INTO V_AVL
	VALUES (1045,
	1046,
	636,
	640);
INSERT INTO V_PAR
	VALUES (1045,
	1034,
	0,
	'duration',
	0,
	7,
	84);
INSERT INTO V_VAR
	VALUES (1035,
	1032,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (1035,
	0,
	811);
INSERT INTO V_VAR
	VALUES (1038,
	1032,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1038,
	0,
	636);
INSERT INTO SM_STATE
	VALUES (1047,
	1020,
	0,
	'BackupMove',
	3,
	0);
INSERT INTO SM_CH
	VALUES (1047,
	1021,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1047,
	1021,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1047,
	1022,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1047,
	1022,
	1020,
	0);
INSERT INTO SM_SEME
	VALUES (1047,
	1023,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1047,
	1024,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1047,
	1024,
	1020,
	0);
INSERT INTO SM_MOAH
	VALUES (1048,
	1020,
	1047);
INSERT INTO SM_AH
	VALUES (1048,
	1020);
INSERT INTO SM_ACT
	VALUES (1048,
	1020,
	1,
	'// Run the conveyor in the opposite direction for the same time as done in the 
//    previous move to free any scrap sheets that are lodged.
// 


select one auto_seq related by self->AUTOSEQ[R9];

motor_dir = Motor_Direction::Forward;
if auto_seq.motor_direction == Motor_Direction::Forward;
   motor_dir = Motor_Direction::Reverse;
end if;

// Jog the conveyor for a short time in the opposite direction
xtfrcnvr::jog(direction: motor_dir, velocity: -1, acceleration: -1, duration: self.preliminary_move_time);

',
	'');
INSERT INTO ACT_SAB
	VALUES (1049,
	1020,
	1048);
INSERT INTO ACT_ACT
	VALUES (1049,
	'state',
	0,
	1050,
	0,
	0,
	'Hesitating Rollout::BackupMove',
	0);
INSERT INTO ACT_BLK
	VALUES (1050,
	1,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	13,
	1,
	13,
	1,
	0,
	0,
	5,
	46,
	0,
	0,
	8,
	32,
	0,
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1051,
	1050,
	1052,
	5,
	1,
	'Hesitating Rollout::BackupMove line: 5');
INSERT INTO ACT_SEL
	VALUES (1051,
	1053,
	1,
	'one',
	1054);
INSERT INTO ACT_SR
	VALUES (1051);
INSERT INTO ACT_LNK
	VALUES (1055,
	'',
	1051,
	815,
	0,
	2,
	811,
	5,
	38,
	5,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1052,
	1050,
	1056,
	7,
	1,
	'Hesitating Rollout::BackupMove line: 7');
INSERT INTO ACT_AI
	VALUES (1052,
	1057,
	1058,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1056,
	1050,
	1059,
	8,
	1,
	'Hesitating Rollout::BackupMove line: 8');
INSERT INTO ACT_IF
	VALUES (1056,
	1060,
	1061,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1059,
	1050,
	0,
	13,
	1,
	'Hesitating Rollout::BackupMove line: 13');
INSERT INTO ACT_SGN
	VALUES (1059,
	13,
	11,
	13,
	1,
	0,
	281,
	0);
INSERT INTO V_VAL
	VALUES (1054,
	0,
	0,
	5,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	1050);
INSERT INTO V_IRF
	VALUES (1054,
	1062);
INSERT INTO V_VAL
	VALUES (1058,
	1,
	1,
	7,
	1,
	9,
	0,
	0,
	0,
	0,
	290,
	1050);
INSERT INTO V_TVL
	VALUES (1058,
	1063);
INSERT INTO V_VAL
	VALUES (1057,
	0,
	0,
	7,
	30,
	36,
	0,
	0,
	0,
	0,
	290,
	1050);
INSERT INTO V_LEN
	VALUES (1057,
	526,
	7,
	13);
INSERT INTO V_VAL
	VALUES (1064,
	0,
	0,
	8,
	4,
	11,
	0,
	0,
	0,
	0,
	34,
	1050);
INSERT INTO V_IRF
	VALUES (1064,
	1053);
INSERT INTO V_VAL
	VALUES (1065,
	0,
	0,
	8,
	13,
	27,
	0,
	0,
	0,
	0,
	290,
	1050);
INSERT INTO V_AVL
	VALUES (1065,
	1064,
	811,
	823);
INSERT INTO V_VAL
	VALUES (1061,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1050);
INSERT INTO V_BIN
	VALUES (1061,
	1066,
	1065,
	'==');
INSERT INTO V_VAL
	VALUES (1066,
	0,
	0,
	8,
	49,
	55,
	0,
	0,
	0,
	0,
	290,
	1050);
INSERT INTO V_LEN
	VALUES (1066,
	526,
	8,
	32);
INSERT INTO V_VAL
	VALUES (1067,
	0,
	0,
	13,
	26,
	34,
	0,
	0,
	0,
	0,
	290,
	1050);
INSERT INTO V_TVL
	VALUES (1067,
	1063);
INSERT INTO V_PAR
	VALUES (1067,
	1059,
	0,
	'direction',
	1068,
	13,
	15);
INSERT INTO V_VAL
	VALUES (1068,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1050);
INSERT INTO V_UNY
	VALUES (1068,
	1069,
	'-');
INSERT INTO V_PAR
	VALUES (1068,
	1059,
	0,
	'velocity',
	1070,
	13,
	37);
INSERT INTO V_VAL
	VALUES (1069,
	0,
	0,
	13,
	48,
	48,
	0,
	0,
	0,
	0,
	186,
	1050);
INSERT INTO V_LIN
	VALUES (1069,
	'1');
INSERT INTO V_VAL
	VALUES (1070,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1050);
INSERT INTO V_UNY
	VALUES (1070,
	1071,
	'-');
INSERT INTO V_PAR
	VALUES (1070,
	1059,
	0,
	'acceleration',
	1072,
	13,
	51);
INSERT INTO V_VAL
	VALUES (1071,
	0,
	0,
	13,
	66,
	66,
	0,
	0,
	0,
	0,
	186,
	1050);
INSERT INTO V_LIN
	VALUES (1071,
	'1');
INSERT INTO V_VAL
	VALUES (1073,
	0,
	0,
	13,
	79,
	82,
	0,
	0,
	0,
	0,
	34,
	1050);
INSERT INTO V_IRF
	VALUES (1073,
	1062);
INSERT INTO V_VAL
	VALUES (1072,
	0,
	0,
	13,
	84,
	104,
	0,
	0,
	0,
	0,
	186,
	1050);
INSERT INTO V_AVL
	VALUES (1072,
	1073,
	636,
	640);
INSERT INTO V_PAR
	VALUES (1072,
	1059,
	0,
	'duration',
	0,
	13,
	69);
INSERT INTO V_VAR
	VALUES (1053,
	1050,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (1053,
	0,
	811);
INSERT INTO V_VAR
	VALUES (1062,
	1050,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1062,
	0,
	636);
INSERT INTO V_VAR
	VALUES (1063,
	1050,
	'motor_dir',
	1,
	290);
INSERT INTO V_TRN
	VALUES (1063,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1060,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	9,
	16,
	0,
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1074,
	1060,
	0,
	9,
	4,
	'Hesitating Rollout::BackupMove line: 9');
INSERT INTO ACT_AI
	VALUES (1074,
	1075,
	1076,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1076,
	1,
	0,
	9,
	4,
	12,
	0,
	0,
	0,
	0,
	290,
	1060);
INSERT INTO V_TVL
	VALUES (1076,
	1063);
INSERT INTO V_VAL
	VALUES (1075,
	0,
	0,
	9,
	33,
	39,
	0,
	0,
	0,
	0,
	290,
	1060);
INSERT INTO V_LEN
	VALUES (1075,
	527,
	9,
	16);
INSERT INTO SM_STATE
	VALUES (1077,
	1020,
	0,
	'FullLengthMove',
	4,
	0);
INSERT INTO SM_CH
	VALUES (1077,
	1021,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1077,
	1021,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1077,
	1022,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1077,
	1022,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1077,
	1023,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1077,
	1023,
	1020,
	0);
INSERT INTO SM_SEME
	VALUES (1077,
	1024,
	1020,
	0);
INSERT INTO SM_MOAH
	VALUES (1078,
	1020,
	1077);
INSERT INTO SM_AH
	VALUES (1078,
	1020);
INSERT INTO SM_ACT
	VALUES (1078,
	1020,
	1,
	'// Run the conveyor to discharge the scrap
// 


select one auto_seq related by self->AUTOSEQ[R9];

xtfrcnvr::jog(direction: auto_seq.motor_direction, velocity: -1, acceleration: -1, duration: auto_seq.time_to_run);

',
	'');
INSERT INTO ACT_SAB
	VALUES (1079,
	1020,
	1078);
INSERT INTO ACT_ACT
	VALUES (1079,
	'state',
	0,
	1080,
	0,
	0,
	'Hesitating Rollout::FullLengthMove',
	0);
INSERT INTO ACT_BLK
	VALUES (1080,
	1,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	6,
	1,
	6,
	1,
	0,
	0,
	4,
	46,
	0,
	0,
	0,
	0,
	0,
	1079,
	0);
INSERT INTO ACT_SMT
	VALUES (1081,
	1080,
	1082,
	4,
	1,
	'Hesitating Rollout::FullLengthMove line: 4');
INSERT INTO ACT_SEL
	VALUES (1081,
	1083,
	1,
	'one',
	1084);
INSERT INTO ACT_SR
	VALUES (1081);
INSERT INTO ACT_LNK
	VALUES (1085,
	'',
	1081,
	815,
	0,
	2,
	811,
	4,
	38,
	4,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1082,
	1080,
	0,
	6,
	1,
	'Hesitating Rollout::FullLengthMove line: 6');
INSERT INTO ACT_SGN
	VALUES (1082,
	6,
	11,
	6,
	1,
	0,
	281,
	0);
INSERT INTO V_VAL
	VALUES (1084,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	1080);
INSERT INTO V_IRF
	VALUES (1084,
	1086);
INSERT INTO V_VAL
	VALUES (1087,
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	34,
	1080);
INSERT INTO V_IRF
	VALUES (1087,
	1083);
INSERT INTO V_VAL
	VALUES (1088,
	0,
	0,
	6,
	35,
	49,
	0,
	0,
	0,
	0,
	290,
	1080);
INSERT INTO V_AVL
	VALUES (1088,
	1087,
	811,
	823);
INSERT INTO V_PAR
	VALUES (1088,
	1082,
	0,
	'direction',
	1089,
	6,
	15);
INSERT INTO V_VAL
	VALUES (1089,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1080);
INSERT INTO V_UNY
	VALUES (1089,
	1090,
	'-');
INSERT INTO V_PAR
	VALUES (1089,
	1082,
	0,
	'velocity',
	1091,
	6,
	52);
INSERT INTO V_VAL
	VALUES (1090,
	0,
	0,
	6,
	63,
	63,
	0,
	0,
	0,
	0,
	186,
	1080);
INSERT INTO V_LIN
	VALUES (1090,
	'1');
INSERT INTO V_VAL
	VALUES (1091,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1080);
INSERT INTO V_UNY
	VALUES (1091,
	1092,
	'-');
INSERT INTO V_PAR
	VALUES (1091,
	1082,
	0,
	'acceleration',
	1093,
	6,
	66);
INSERT INTO V_VAL
	VALUES (1092,
	0,
	0,
	6,
	81,
	81,
	0,
	0,
	0,
	0,
	186,
	1080);
INSERT INTO V_LIN
	VALUES (1092,
	'1');
INSERT INTO V_VAL
	VALUES (1094,
	0,
	0,
	6,
	94,
	101,
	0,
	0,
	0,
	0,
	34,
	1080);
INSERT INTO V_IRF
	VALUES (1094,
	1083);
INSERT INTO V_VAL
	VALUES (1093,
	0,
	0,
	6,
	103,
	113,
	0,
	0,
	0,
	0,
	186,
	1080);
INSERT INTO V_AVL
	VALUES (1093,
	1094,
	811,
	824);
INSERT INTO V_PAR
	VALUES (1093,
	1082,
	0,
	'duration',
	0,
	6,
	84);
INSERT INTO V_VAR
	VALUES (1083,
	1080,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (1083,
	0,
	811);
INSERT INTO V_VAR
	VALUES (1086,
	1080,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1086,
	0,
	636);
INSERT INTO SM_STATE
	VALUES (1095,
	1020,
	0,
	'ConveyorEmpty',
	5,
	0);
INSERT INTO SM_EIGN
	VALUES (1095,
	1021,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1095,
	1021,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1095,
	1022,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1095,
	1022,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1095,
	1023,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1095,
	1023,
	1020,
	0);
INSERT INTO SM_CH
	VALUES (1095,
	1024,
	1020,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1095,
	1024,
	1020,
	0);
INSERT INTO SM_MOAH
	VALUES (1096,
	1020,
	1095);
INSERT INTO SM_AH
	VALUES (1096,
	1020);
INSERT INTO SM_ACT
	VALUES (1096,
	1020,
	1,
	'// The move is complete, clean up and notify Cross Transfer Conveyor
select one auto_seq related by self->AUTOSEQ[R9];
select one xtfr_conveyor related by auto_seq->XTFRCNVR[R8];

unrelate auto_seq from xtfr_conveyor across R8;
unrelate self from auto_seq across R9;

generate XTFRCNVR7:automatic_sequence_cmplt() to xtfr_conveyor;

delete object instance self;

',
	'');
INSERT INTO ACT_SAB
	VALUES (1097,
	1020,
	1096);
INSERT INTO ACT_ACT
	VALUES (1097,
	'state',
	0,
	1098,
	0,
	0,
	'Hesitating Rollout::ConveyorEmpty',
	0);
INSERT INTO ACT_BLK
	VALUES (1098,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	10,
	1,
	3,
	47,
	0,
	0,
	6,
	36,
	0,
	0,
	0,
	0,
	0,
	1097,
	0);
INSERT INTO ACT_SMT
	VALUES (1099,
	1098,
	1100,
	2,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 2');
INSERT INTO ACT_SEL
	VALUES (1099,
	1101,
	1,
	'one',
	1102);
INSERT INTO ACT_SR
	VALUES (1099);
INSERT INTO ACT_LNK
	VALUES (1103,
	'',
	1099,
	815,
	0,
	2,
	811,
	2,
	38,
	2,
	46,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1100,
	1098,
	1104,
	3,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 3');
INSERT INTO ACT_SEL
	VALUES (1100,
	1105,
	1,
	'one',
	1106);
INSERT INTO ACT_SR
	VALUES (1100);
INSERT INTO ACT_LNK
	VALUES (1107,
	'',
	1100,
	808,
	0,
	2,
	543,
	3,
	47,
	3,
	56,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1104,
	1098,
	1108,
	5,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 5');
INSERT INTO ACT_UNR
	VALUES (1104,
	1101,
	1105,
	'',
	808,
	5,
	45,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1108,
	1098,
	1109,
	6,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 6');
INSERT INTO ACT_UNR
	VALUES (1108,
	1110,
	1101,
	'',
	815,
	6,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1109,
	1098,
	1111,
	8,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 8');
INSERT INTO E_ESS
	VALUES (1109,
	1,
	0,
	8,
	10,
	8,
	20,
	3,
	47,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1109);
INSERT INTO E_GSME
	VALUES (1109,
	580);
INSERT INTO E_GEN
	VALUES (1109,
	1105);
INSERT INTO ACT_SMT
	VALUES (1111,
	1098,
	0,
	10,
	1,
	'Hesitating Rollout::ConveyorEmpty line: 10');
INSERT INTO ACT_DEL
	VALUES (1111,
	1110);
INSERT INTO V_VAL
	VALUES (1102,
	0,
	0,
	2,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	1098);
INSERT INTO V_IRF
	VALUES (1102,
	1110);
INSERT INTO V_VAL
	VALUES (1106,
	0,
	0,
	3,
	37,
	44,
	0,
	0,
	0,
	0,
	34,
	1098);
INSERT INTO V_IRF
	VALUES (1106,
	1101);
INSERT INTO V_VAR
	VALUES (1101,
	1098,
	'auto_seq',
	1,
	34);
INSERT INTO V_INT
	VALUES (1101,
	0,
	811);
INSERT INTO V_VAR
	VALUES (1110,
	1098,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1110,
	0,
	636);
INSERT INTO V_VAR
	VALUES (1105,
	1098,
	'xtfr_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (1105,
	0,
	543);
INSERT INTO SM_NSTXN
	VALUES (1112,
	1020,
	1025,
	1022,
	0);
INSERT INTO SM_TAH
	VALUES (1113,
	1020,
	1112);
INSERT INTO SM_AH
	VALUES (1113,
	1020);
INSERT INTO SM_ACT
	VALUES (1113,
	1020,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1114,
	1020,
	1113);
INSERT INTO ACT_ACT
	VALUES (1114,
	'transition',
	0,
	1115,
	0,
	0,
	'initiate_auto_seq_dht::Automatic Sequence',
	0);
INSERT INTO ACT_BLK
	VALUES (1115,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1114,
	0);
INSERT INTO SM_TXN
	VALUES (1112,
	1020,
	1029,
	0);
INSERT INTO SM_NSTXN
	VALUES (1116,
	1020,
	1029,
	1023,
	0);
INSERT INTO SM_TAH
	VALUES (1117,
	1020,
	1116);
INSERT INTO SM_AH
	VALUES (1117,
	1020);
INSERT INTO SM_ACT
	VALUES (1117,
	1020,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1118,
	1020,
	1117);
INSERT INTO ACT_ACT
	VALUES (1118,
	'transition',
	0,
	1119,
	0,
	0,
	'jog_complete::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1119,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1118,
	0);
INSERT INTO SM_TXN
	VALUES (1116,
	1020,
	1047,
	0);
INSERT INTO SM_NSTXN
	VALUES (1120,
	1020,
	1047,
	1023,
	0);
INSERT INTO SM_TAH
	VALUES (1121,
	1020,
	1120);
INSERT INTO SM_AH
	VALUES (1121,
	1020);
INSERT INTO SM_ACT
	VALUES (1121,
	1020,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1122,
	1020,
	1121);
INSERT INTO ACT_ACT
	VALUES (1122,
	'transition',
	0,
	1123,
	0,
	0,
	'jog_complete::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1123,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1122,
	0);
INSERT INTO SM_TXN
	VALUES (1120,
	1020,
	1077,
	0);
INSERT INTO SM_NSTXN
	VALUES (1124,
	1020,
	1077,
	1024,
	0);
INSERT INTO SM_TAH
	VALUES (1125,
	1020,
	1124);
INSERT INTO SM_AH
	VALUES (1125,
	1020);
INSERT INTO SM_ACT
	VALUES (1125,
	1020,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1126,
	1020,
	1125);
INSERT INTO ACT_ACT
	VALUES (1126,
	'transition',
	0,
	1127,
	0,
	0,
	'motor_stopped::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1127,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1126,
	0);
INSERT INTO SM_TXN
	VALUES (1124,
	1020,
	1095,
	0);
INSERT INTO PE_PE
	VALUES (553,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (553,
	'Manual Sequence',
	11,
	'MANSEQ',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (555,
	553);
INSERT INTO O_BATTR
	VALUES (555,
	553);
INSERT INTO O_ATTR
	VALUES (555,
	553,
	557,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_REF
	VALUES (553,
	543,
	0,
	549,
	808,
	810,
	809,
	1128,
	1129,
	0,
	0,
	'',
	'Cross Transfer Conveyor',
	'Id',
	'R8');
INSERT INTO O_RATTR
	VALUES (1128,
	553,
	549,
	543,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1128,
	553,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	261,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (557,
	553);
INSERT INTO O_BATTR
	VALUES (557,
	553);
INSERT INTO O_ATTR
	VALUES (557,
	553,
	1128,
	'jog_direction',
	'',
	'',
	'jog_direction',
	0,
	778,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	553);
INSERT INTO O_OIDA
	VALUES (1128,
	553,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	553);
INSERT INTO O_ID
	VALUES (2,
	553);
INSERT INTO SM_ISM
	VALUES (1130,
	553);
INSERT INTO SM_SM
	VALUES (1130,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1130);
INSERT INTO SM_NLEVT
	VALUES (1131,
	1130,
	0,
	584,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1131,
	1130,
	0);
INSERT INTO SM_EVT
	VALUES (1131,
	1130,
	0,
	3,
	'jog',
	0,
	'',
	'XTFRCNVR3*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1132,
	1130,
	0,
	665,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1132,
	1130,
	0);
INSERT INTO SM_EVT
	VALUES (1132,
	1130,
	0,
	4,
	'jog_complete',
	0,
	'',
	'XTFRCNVR4*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1133,
	1130,
	0,
	588,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1133,
	1130,
	0);
INSERT INTO SM_EVT
	VALUES (1133,
	1130,
	0,
	10,
	'drive_rdy_for_inst',
	0,
	'',
	'XTFRCNVR5*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1134,
	1130,
	0,
	667,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1134,
	1130,
	0);
INSERT INTO SM_EVT
	VALUES (1134,
	1130,
	0,
	9,
	'motor_stopped',
	0,
	'',
	'XTFRCNVR9*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1135,
	1130,
	0,
	590,
	574,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1135,
	1130,
	0);
INSERT INTO SM_EVT
	VALUES (1135,
	1130,
	0,
	10,
	'enable_control',
	0,
	'',
	'XTFRCNVR10*',
	'');
INSERT INTO SM_STATE
	VALUES (1136,
	1130,
	0,
	'Stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1136,
	1131,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1136,
	1132,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1136,
	1132,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1136,
	1133,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1136,
	1133,
	1130,
	0);
INSERT INTO SM_EIGN
	VALUES (1136,
	1134,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1136,
	1134,
	1130,
	0);
INSERT INTO SM_SEME
	VALUES (1136,
	1135,
	1130,
	0);
INSERT INTO SM_MOAH
	VALUES (1137,
	1130,
	1136);
INSERT INTO SM_AH
	VALUES (1137,
	1130);
INSERT INTO SM_ACT
	VALUES (1137,
	1130,
	1,
	'// Check to see if the switch position has changed and if so initiate a jog.
// 


position = Client::get_xtfr_jog_switch_position();

if position == Jog_Switch_Position::Operator;
   generate XTFRCNVR3:jog(direction: Machine_Side::Operator) to self;
elif position == Jog_Switch_Position::Drive;
   generate XTFRCNVR3:jog(direction: Machine_Side::Drive) to self;
end if;

',
	'');
INSERT INTO ACT_SAB
	VALUES (1138,
	1130,
	1137);
INSERT INTO ACT_ACT
	VALUES (1138,
	'state',
	0,
	1139,
	0,
	0,
	'Manual Sequence::Stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1139,
	0,
	0,
	0,
	'Client',
	'',
	'',
	8,
	1,
	4,
	12,
	0,
	0,
	0,
	0,
	0,
	0,
	8,
	18,
	0,
	1138,
	0);
INSERT INTO ACT_SMT
	VALUES (1140,
	1139,
	1141,
	4,
	1,
	'Manual Sequence::Stopped line: 4');
INSERT INTO ACT_AI
	VALUES (1140,
	1142,
	1143,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1141,
	1139,
	0,
	6,
	1,
	'Manual Sequence::Stopped line: 6');
INSERT INTO ACT_IF
	VALUES (1141,
	1144,
	1145,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1146,
	1139,
	0,
	8,
	1,
	'Manual Sequence::Stopped line: 8');
INSERT INTO ACT_EL
	VALUES (1146,
	1147,
	1148,
	1141);
INSERT INTO V_VAL
	VALUES (1143,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_TVL
	VALUES (1143,
	1149);
INSERT INTO V_VAL
	VALUES (1142,
	0,
	0,
	4,
	20,
	48,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_MSV
	VALUES (1142,
	269,
	0,
	1,
	4,
	12,
	0);
INSERT INTO V_VAL
	VALUES (1150,
	0,
	0,
	6,
	4,
	11,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_TVL
	VALUES (1150,
	1149);
INSERT INTO V_VAL
	VALUES (1145,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1139);
INSERT INTO V_BIN
	VALUES (1145,
	1151,
	1150,
	'==');
INSERT INTO V_VAL
	VALUES (1151,
	0,
	0,
	6,
	37,
	44,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_LEN
	VALUES (1151,
	62,
	6,
	16);
INSERT INTO V_VAL
	VALUES (1152,
	0,
	0,
	8,
	6,
	13,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_TVL
	VALUES (1152,
	1149);
INSERT INTO V_VAL
	VALUES (1148,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1139);
INSERT INTO V_BIN
	VALUES (1148,
	1153,
	1152,
	'==');
INSERT INTO V_VAL
	VALUES (1153,
	0,
	0,
	8,
	39,
	43,
	0,
	0,
	0,
	0,
	35,
	1139);
INSERT INTO V_LEN
	VALUES (1153,
	49,
	8,
	18);
INSERT INTO V_VAR
	VALUES (1149,
	1139,
	'position',
	1,
	35);
INSERT INTO V_TRN
	VALUES (1149,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1154,
	1139,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1154,
	0,
	553);
INSERT INTO ACT_BLK
	VALUES (1144,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'direction',
	'direction',
	7,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	7,
	38,
	0,
	1138,
	0);
INSERT INTO ACT_SMT
	VALUES (1155,
	1144,
	0,
	7,
	4,
	'Manual Sequence::Stopped line: 7');
INSERT INTO E_ESS
	VALUES (1155,
	1,
	0,
	7,
	13,
	7,
	23,
	0,
	0,
	7,
	27,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1156,
	1155,
	0,
	'direction',
	0,
	7,
	27);
INSERT INTO E_GES
	VALUES (1155);
INSERT INTO E_GSME
	VALUES (1155,
	584);
INSERT INTO E_GEN
	VALUES (1155,
	1154);
INSERT INTO V_VAL
	VALUES (1156,
	0,
	0,
	7,
	52,
	59,
	0,
	0,
	0,
	0,
	778,
	1144);
INSERT INTO V_LEN
	VALUES (1156,
	779,
	7,
	38);
INSERT INTO ACT_BLK
	VALUES (1147,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'direction',
	'direction',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	9,
	38,
	0,
	1138,
	0);
INSERT INTO ACT_SMT
	VALUES (1157,
	1147,
	0,
	9,
	4,
	'Manual Sequence::Stopped line: 9');
INSERT INTO E_ESS
	VALUES (1157,
	1,
	0,
	9,
	13,
	9,
	23,
	0,
	0,
	9,
	27,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1158,
	1157,
	0,
	'direction',
	0,
	9,
	27);
INSERT INTO E_GES
	VALUES (1157);
INSERT INTO E_GSME
	VALUES (1157,
	584);
INSERT INTO E_GEN
	VALUES (1157,
	1154);
INSERT INTO V_VAL
	VALUES (1158,
	0,
	0,
	9,
	52,
	56,
	0,
	0,
	0,
	0,
	778,
	1147);
INSERT INTO V_LEN
	VALUES (1158,
	782,
	9,
	38);
INSERT INTO SM_STATE
	VALUES (1159,
	1130,
	0,
	'InitiateJog',
	2,
	0);
INSERT INTO SM_CH
	VALUES (1159,
	1131,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1159,
	1131,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1159,
	1132,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1159,
	1132,
	1130,
	0);
INSERT INTO SM_SEME
	VALUES (1159,
	1133,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1159,
	1134,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1159,
	1134,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1159,
	1135,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1159,
	1135,
	1130,
	0);
INSERT INTO SM_MOAH
	VALUES (1160,
	1130,
	1159);
INSERT INTO SM_AH
	VALUES (1160,
	1130);
INSERT INTO SM_ACT
	VALUES (1160,
	1130,
	1,
	'// Jog the conveyor to the requested side
// 


// Save the requested direction
self.jog_direction = rcvd_evt.direction;

// Translate the machine side into a motor direction then jog conveyor.
select one conveyor related by self->XTFRCNVR[R8];
xtfrcnvr::jog(direction: conveyor.GetMotorDirection(machine_side: rcvd_evt.direction),
               velocity: -1, 
           acceleration: -1, 
               duration: 0000);  // 30 seconds max jog duration, 0 for testing 
',
	'');
INSERT INTO ACT_SAB
	VALUES (1161,
	1130,
	1160);
INSERT INTO ACT_ACT
	VALUES (1161,
	'state',
	0,
	1162,
	0,
	0,
	'Manual Sequence::InitiateJog',
	0);
INSERT INTO ACT_BLK
	VALUES (1162,
	1,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	9,
	1,
	9,
	1,
	0,
	0,
	8,
	47,
	0,
	0,
	0,
	0,
	0,
	1161,
	0);
INSERT INTO ACT_SMT
	VALUES (1163,
	1162,
	1164,
	5,
	1,
	'Manual Sequence::InitiateJog line: 5');
INSERT INTO ACT_AI
	VALUES (1163,
	1165,
	1166,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1164,
	1162,
	1167,
	8,
	1,
	'Manual Sequence::InitiateJog line: 8');
INSERT INTO ACT_SEL
	VALUES (1164,
	1168,
	1,
	'one',
	1169);
INSERT INTO ACT_SR
	VALUES (1164);
INSERT INTO ACT_LNK
	VALUES (1170,
	'',
	1164,
	808,
	0,
	2,
	543,
	8,
	38,
	8,
	47,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1167,
	1162,
	0,
	9,
	1,
	'Manual Sequence::InitiateJog line: 9');
INSERT INTO ACT_SGN
	VALUES (1167,
	9,
	11,
	9,
	1,
	0,
	281,
	0);
INSERT INTO V_VAL
	VALUES (1171,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	34,
	1162);
INSERT INTO V_IRF
	VALUES (1171,
	1172);
INSERT INTO V_VAL
	VALUES (1166,
	1,
	0,
	5,
	6,
	18,
	0,
	0,
	0,
	0,
	778,
	1162);
INSERT INTO V_AVL
	VALUES (1166,
	1171,
	553,
	557);
INSERT INTO V_VAL
	VALUES (1165,
	0,
	0,
	5,
	31,
	39,
	0,
	0,
	0,
	0,
	778,
	1162);
INSERT INTO V_EDV
	VALUES (1165);
INSERT INTO V_EPR
	VALUES (1165,
	574,
	586,
	0);
INSERT INTO V_VAL
	VALUES (1169,
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	34,
	1162);
INSERT INTO V_IRF
	VALUES (1169,
	1172);
INSERT INTO V_VAL
	VALUES (1173,
	0,
	0,
	9,
	35,
	-1,
	9,
	53,
	0,
	0,
	290,
	1162);
INSERT INTO V_TRV
	VALUES (1173,
	562,
	1168,
	1,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1173,
	1167,
	0,
	'direction',
	1174,
	9,
	15);
INSERT INTO V_VAL
	VALUES (1175,
	0,
	0,
	9,
	76,
	84,
	0,
	0,
	0,
	0,
	778,
	1162);
INSERT INTO V_EDV
	VALUES (1175);
INSERT INTO V_EPR
	VALUES (1175,
	574,
	586,
	0);
INSERT INTO V_PAR
	VALUES (1175,
	0,
	1173,
	'machine_side',
	0,
	9,
	53);
INSERT INTO V_VAL
	VALUES (1174,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1162);
INSERT INTO V_UNY
	VALUES (1174,
	1176,
	'-');
INSERT INTO V_PAR
	VALUES (1174,
	1167,
	0,
	'velocity',
	1177,
	10,
	16);
INSERT INTO V_VAL
	VALUES (1176,
	0,
	0,
	10,
	27,
	27,
	0,
	0,
	0,
	0,
	186,
	1162);
INSERT INTO V_LIN
	VALUES (1176,
	'1');
INSERT INTO V_VAL
	VALUES (1177,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1162);
INSERT INTO V_UNY
	VALUES (1177,
	1178,
	'-');
INSERT INTO V_PAR
	VALUES (1177,
	1167,
	0,
	'acceleration',
	1179,
	11,
	12);
INSERT INTO V_VAL
	VALUES (1178,
	0,
	0,
	11,
	27,
	27,
	0,
	0,
	0,
	0,
	186,
	1162);
INSERT INTO V_LIN
	VALUES (1178,
	'1');
INSERT INTO V_VAL
	VALUES (1179,
	0,
	0,
	12,
	26,
	29,
	0,
	0,
	0,
	0,
	186,
	1162);
INSERT INTO V_LIN
	VALUES (1179,
	'0000');
INSERT INTO V_PAR
	VALUES (1179,
	1167,
	0,
	'duration',
	0,
	12,
	16);
INSERT INTO V_VAR
	VALUES (1172,
	1162,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1172,
	0,
	553);
INSERT INTO V_VAR
	VALUES (1168,
	1162,
	'conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (1168,
	0,
	543);
INSERT INTO SM_STATE
	VALUES (1180,
	1130,
	0,
	'ConfirmedMoving',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1180,
	1131,
	1130,
	0);
INSERT INTO SM_SEME
	VALUES (1180,
	1132,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1180,
	1133,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1180,
	1133,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1180,
	1134,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1180,
	1134,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1180,
	1135,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1180,
	1135,
	1130,
	0);
INSERT INTO SM_MOAH
	VALUES (1181,
	1130,
	1180);
INSERT INTO SM_AH
	VALUES (1181,
	1130);
INSERT INTO SM_ACT
	VALUES (1181,
	1130,
	1,
	'// Check to see if the switch position has changed and if so initiate a stop.
// 


position = Client::get_xtfr_jog_switch_position();

if ((position == Jog_Switch_Position::Stop) or
    (position == Jog_Switch_Position::Operator and self.jog_direction == Machine_Side::Drive) or
    (position == Jog_Switch_Position::Drive and self.jog_direction == Machine_Side::Operator)
   );
   // The switch position doesn''t agree with what the conveyor is doing, stop it.
   generate XTFRCNVR4:jog_complete() to self;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1182,
	1130,
	1181);
INSERT INTO ACT_ACT
	VALUES (1182,
	'state',
	0,
	1183,
	0,
	0,
	'Manual Sequence::ConfirmedMoving',
	0);
INSERT INTO ACT_BLK
	VALUES (1183,
	0,
	0,
	0,
	'Client',
	'',
	'',
	6,
	1,
	4,
	12,
	0,
	0,
	0,
	0,
	0,
	0,
	8,
	71,
	0,
	1182,
	0);
INSERT INTO ACT_SMT
	VALUES (1184,
	1183,
	1185,
	4,
	1,
	'Manual Sequence::ConfirmedMoving line: 4');
INSERT INTO ACT_AI
	VALUES (1184,
	1186,
	1187,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1185,
	1183,
	0,
	6,
	1,
	'Manual Sequence::ConfirmedMoving line: 6');
INSERT INTO ACT_IF
	VALUES (1185,
	1188,
	1189,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1187,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_TVL
	VALUES (1187,
	1190);
INSERT INTO V_VAL
	VALUES (1186,
	0,
	0,
	4,
	20,
	48,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_MSV
	VALUES (1186,
	269,
	0,
	1,
	4,
	12,
	0);
INSERT INTO V_VAL
	VALUES (1191,
	0,
	0,
	6,
	6,
	13,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_TVL
	VALUES (1191,
	1190);
INSERT INTO V_VAL
	VALUES (1192,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1192,
	1193,
	1191,
	'==');
INSERT INTO V_VAL
	VALUES (1193,
	0,
	0,
	6,
	39,
	42,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_LEN
	VALUES (1193,
	75,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1194,
	0,
	0,
	7,
	6,
	13,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_TVL
	VALUES (1194,
	1190);
INSERT INTO V_VAL
	VALUES (1195,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1195,
	1196,
	1194,
	'==');
INSERT INTO V_VAL
	VALUES (1196,
	0,
	0,
	7,
	39,
	46,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_LEN
	VALUES (1196,
	62,
	7,
	18);
INSERT INTO V_VAL
	VALUES (1197,
	0,
	0,
	7,
	52,
	55,
	0,
	0,
	0,
	0,
	34,
	1183);
INSERT INTO V_IRF
	VALUES (1197,
	1198);
INSERT INTO V_VAL
	VALUES (1199,
	0,
	0,
	7,
	57,
	69,
	0,
	0,
	0,
	0,
	778,
	1183);
INSERT INTO V_AVL
	VALUES (1199,
	1197,
	553,
	557);
INSERT INTO V_VAL
	VALUES (1200,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1200,
	1201,
	1199,
	'==');
INSERT INTO V_VAL
	VALUES (1201,
	0,
	0,
	7,
	88,
	92,
	0,
	0,
	0,
	0,
	778,
	1183);
INSERT INTO V_LEN
	VALUES (1201,
	782,
	7,
	74);
INSERT INTO V_VAL
	VALUES (1202,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1202,
	1200,
	1195,
	'and');
INSERT INTO V_VAL
	VALUES (1203,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1203,
	1202,
	1192,
	'or');
INSERT INTO V_VAL
	VALUES (1204,
	0,
	0,
	8,
	6,
	13,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_TVL
	VALUES (1204,
	1190);
INSERT INTO V_VAL
	VALUES (1205,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1205,
	1206,
	1204,
	'==');
INSERT INTO V_VAL
	VALUES (1206,
	0,
	0,
	8,
	39,
	43,
	0,
	0,
	0,
	0,
	35,
	1183);
INSERT INTO V_LEN
	VALUES (1206,
	49,
	8,
	18);
INSERT INTO V_VAL
	VALUES (1207,
	0,
	0,
	8,
	49,
	52,
	0,
	0,
	0,
	0,
	34,
	1183);
INSERT INTO V_IRF
	VALUES (1207,
	1198);
INSERT INTO V_VAL
	VALUES (1208,
	0,
	0,
	8,
	54,
	66,
	0,
	0,
	0,
	0,
	778,
	1183);
INSERT INTO V_AVL
	VALUES (1208,
	1207,
	553,
	557);
INSERT INTO V_VAL
	VALUES (1209,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1209,
	1210,
	1208,
	'==');
INSERT INTO V_VAL
	VALUES (1210,
	0,
	0,
	8,
	85,
	92,
	0,
	0,
	0,
	0,
	778,
	1183);
INSERT INTO V_LEN
	VALUES (1210,
	779,
	8,
	71);
INSERT INTO V_VAL
	VALUES (1211,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1211,
	1209,
	1205,
	'and');
INSERT INTO V_VAL
	VALUES (1189,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1183);
INSERT INTO V_BIN
	VALUES (1189,
	1211,
	1203,
	'or');
INSERT INTO V_VAR
	VALUES (1190,
	1183,
	'position',
	1,
	35);
INSERT INTO V_TRN
	VALUES (1190,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1198,
	1183,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1198,
	0,
	553);
INSERT INTO ACT_BLK
	VALUES (1188,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	11,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1182,
	0);
INSERT INTO ACT_SMT
	VALUES (1212,
	1188,
	0,
	11,
	4,
	'Manual Sequence::ConfirmedMoving line: 11');
INSERT INTO E_ESS
	VALUES (1212,
	1,
	0,
	11,
	13,
	11,
	23,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1212);
INSERT INTO E_GSME
	VALUES (1212,
	665);
INSERT INTO E_GEN
	VALUES (1212,
	1198);
INSERT INTO SM_STATE
	VALUES (1213,
	1130,
	0,
	'InitiateStop',
	4,
	0);
INSERT INTO SM_CH
	VALUES (1213,
	1131,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1213,
	1131,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1213,
	1132,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1213,
	1132,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1213,
	1133,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1213,
	1133,
	1130,
	0);
INSERT INTO SM_SEME
	VALUES (1213,
	1134,
	1130,
	0);
INSERT INTO SM_CH
	VALUES (1213,
	1135,
	1130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1213,
	1135,
	1130,
	0);
INSERT INTO SM_MOAH
	VALUES (1214,
	1130,
	1213);
INSERT INTO SM_AH
	VALUES (1214,
	1130);
INSERT INTO SM_ACT
	VALUES (1214,
	1130,
	1,
	'// The user has finished moving the cross transfer conveyor
xtfrcnvr::stop();


',
	'');
INSERT INTO ACT_SAB
	VALUES (1215,
	1130,
	1214);
INSERT INTO ACT_ACT
	VALUES (1215,
	'state',
	0,
	1216,
	0,
	0,
	'Manual Sequence::InitiateStop',
	0);
INSERT INTO ACT_BLK
	VALUES (1216,
	0,
	0,
	0,
	'xtfrcnvr',
	'',
	'',
	2,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1215,
	0);
INSERT INTO ACT_SMT
	VALUES (1217,
	1216,
	0,
	2,
	1,
	'Manual Sequence::InitiateStop line: 2');
INSERT INTO ACT_SGN
	VALUES (1217,
	2,
	11,
	2,
	1,
	0,
	283,
	0);
INSERT INTO SM_NSTXN
	VALUES (1218,
	1130,
	1136,
	1131,
	0);
INSERT INTO SM_TAH
	VALUES (1219,
	1130,
	1218);
INSERT INTO SM_AH
	VALUES (1219,
	1130);
INSERT INTO SM_ACT
	VALUES (1219,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1220,
	1130,
	1219);
INSERT INTO ACT_ACT
	VALUES (1220,
	'transition',
	0,
	1221,
	0,
	0,
	'jog::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1221,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1220,
	0);
INSERT INTO SM_TXN
	VALUES (1218,
	1130,
	1159,
	0);
INSERT INTO SM_NSTXN
	VALUES (1222,
	1130,
	1159,
	1133,
	0);
INSERT INTO SM_TAH
	VALUES (1223,
	1130,
	1222);
INSERT INTO SM_AH
	VALUES (1223,
	1130);
INSERT INTO SM_ACT
	VALUES (1223,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1224,
	1130,
	1223);
INSERT INTO ACT_ACT
	VALUES (1224,
	'transition',
	0,
	1225,
	0,
	0,
	'drive_rdy_for_inst::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1225,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1224,
	0);
INSERT INTO SM_TXN
	VALUES (1222,
	1130,
	1180,
	0);
INSERT INTO SM_NSTXN
	VALUES (1226,
	1130,
	1213,
	1134,
	0);
INSERT INTO SM_TAH
	VALUES (1227,
	1130,
	1226);
INSERT INTO SM_AH
	VALUES (1227,
	1130);
INSERT INTO SM_ACT
	VALUES (1227,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1228,
	1130,
	1227);
INSERT INTO ACT_ACT
	VALUES (1228,
	'transition',
	0,
	1229,
	0,
	0,
	'motor_stopped::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1229,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1228,
	0);
INSERT INTO SM_TXN
	VALUES (1226,
	1130,
	1136,
	0);
INSERT INTO SM_NSTXN
	VALUES (1230,
	1130,
	1180,
	1132,
	0);
INSERT INTO SM_TAH
	VALUES (1231,
	1130,
	1230);
INSERT INTO SM_AH
	VALUES (1231,
	1130);
INSERT INTO SM_ACT
	VALUES (1231,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1232,
	1130,
	1231);
INSERT INTO ACT_ACT
	VALUES (1232,
	'transition',
	0,
	1233,
	0,
	0,
	'jog_complete::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1233,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1232,
	0);
INSERT INTO SM_TXN
	VALUES (1230,
	1130,
	1213,
	0);
INSERT INTO SM_NSTXN
	VALUES (1234,
	1130,
	1180,
	1131,
	0);
INSERT INTO SM_TAH
	VALUES (1235,
	1130,
	1234);
INSERT INTO SM_AH
	VALUES (1235,
	1130);
INSERT INTO SM_ACT
	VALUES (1235,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1236,
	1130,
	1235);
INSERT INTO ACT_ACT
	VALUES (1236,
	'transition',
	0,
	1237,
	0,
	0,
	'jog::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1237,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1236,
	0);
INSERT INTO SM_TXN
	VALUES (1234,
	1130,
	1213,
	0);
INSERT INTO SM_NSTXN
	VALUES (1238,
	1130,
	1136,
	1135,
	0);
INSERT INTO SM_TAH
	VALUES (1239,
	1130,
	1238);
INSERT INTO SM_AH
	VALUES (1239,
	1130);
INSERT INTO SM_ACT
	VALUES (1239,
	1130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1240,
	1130,
	1239);
INSERT INTO ACT_ACT
	VALUES (1240,
	'transition',
	0,
	1241,
	0,
	0,
	'enable_control::Cross Transfer Conveyor',
	0);
INSERT INTO ACT_BLK
	VALUES (1241,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1240,
	0);
INSERT INTO SM_TXN
	VALUES (1238,
	1130,
	1136,
	0);
INSERT INTO PE_PE
	VALUES (813,
	1,
	807,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (813,
	'Motion Inhibited',
	12,
	'MOTINH',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1242,
	813);
INSERT INTO O_BATTR
	VALUES (1242,
	813);
INSERT INTO O_ATTR
	VALUES (1242,
	813,
	1243,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_REF
	VALUES (813,
	543,
	0,
	549,
	808,
	814,
	809,
	1243,
	1244,
	0,
	0,
	'',
	'Cross Transfer Conveyor',
	'Id',
	'R8');
INSERT INTO O_RATTR
	VALUES (1243,
	813,
	549,
	543,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1243,
	813,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	261,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	813);
INSERT INTO O_OIDA
	VALUES (1243,
	813,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	813);
INSERT INTO O_ID
	VALUES (2,
	813);
INSERT INTO SM_ISM
	VALUES (1245,
	813);
INSERT INTO SM_SM
	VALUES (1245,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1245);
INSERT INTO PE_PE
	VALUES (1246,
	1,
	0,
	94,
	7);
INSERT INTO EP_PKG
	VALUES (1246,
	0,
	528,
	'DataTypes',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1247,
	1,
	1246,
	0,
	3);
INSERT INTO S_DT
	VALUES (1247,
	0,
	'Sheet_End',
	'',
	'');
INSERT INTO S_EDT
	VALUES (1247);
INSERT INTO S_ENUM
	VALUES (1248,
	'Leading',
	'The most downstream edge of a sheet.  The edge made by the first cut of the knife.',
	1247,
	0);
INSERT INTO S_ENUM
	VALUES (1249,
	'Trailing',
	'The most upstream edge of a sheet.  The edge made by the second cut of the knife.',
	1247,
	1248);
INSERT INTO PE_PE
	VALUES (1250,
	1,
	1246,
	0,
	3);
INSERT INTO S_DT
	VALUES (1250,
	0,
	'Actuator_Event_Type',
	'',
	'');
INSERT INTO S_EDT
	VALUES (1250);
INSERT INTO S_ENUM
	VALUES (1251,
	'Engage_Material',
	'Event type identifies events which cause the actuator to engage with the product
or material being handled.',
	1250,
	0);
INSERT INTO S_ENUM
	VALUES (1252,
	'Disengage_Material',
	'Event type identifies events which cause the actuator to disengage with the product
or material being handled.',
	1250,
	1251);
INSERT INTO PE_PE
	VALUES (908,
	1,
	1246,
	0,
	3);
INSERT INTO S_DT
	VALUES (908,
	0,
	'Divert_Conv_Discharge_Alg',
	'',
	'');
INSERT INTO S_EDT
	VALUES (908);
INSERT INTO S_ENUM
	VALUES (956,
	'Dist_x1_Rollout',
	'',
	908,
	0);
INSERT INTO S_ENUM
	VALUES (959,
	'Dist_x2_Hesitating_Rollout',
	'',
	908,
	956);
INSERT INTO PE_PE
	VALUES (1253,
	1,
	1246,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1253,
	'My Constants',
	'');
INSERT INTO CNST_SYC
	VALUES (1254,
	'Forward',
	'Don''t look back.',
	186,
	1253,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1254,
	186);
INSERT INTO CNST_LSC
	VALUES (1254,
	186,
	'1');
INSERT INTO CNST_SYC
	VALUES (1255,
	'Reverse',
	'Opposite of forward.',
	186,
	1253,
	1254,
	186);
INSERT INTO CNST_LFSC
	VALUES (1255,
	186);
INSERT INTO CNST_LSC
	VALUES (1255,
	186,
	'2');
INSERT INTO PE_PE
	VALUES (1256,
	1,
	0,
	94,
	7);
INSERT INTO EP_PKG
	VALUES (1256,
	0,
	528,
	'Subsys',
	'The class diagram for the diverter may appear to be more abstract than necessary,
but there are characteristics of the diverter operation that make the abstraction
necessary.  

Establishing relationships between the diverted sheets (product) and the actuated 
components would have been the logical choice.  Thestate machines to control the 
actuators would have resided within the product.  As the product flows along the 
board path, it''s state machine would trigger actions on the machine.  This model 
fails because the actuation time delays of the actuators are configurable and 
therefore does not guarantee the sequence of events generated.  Using product 
state machines to control the actuators is non-deterministic.

The approach taken in this model is to use a tracking point class to establish the
relationship between the product and the actuators.  The tracking points are in 
no particular order and trigger an action only when the divert sheet reaches a 
calculated position along the board path.  The tracking points have no 
understanding of what actions occurred before them or will occur after them.

The key point of this model is the sequence of actions of the diverter is not set
in a state machine, but is dynamic and therefore easily changed. 

The cross transfer conveyor is different.  It receives a tracking event near the 
beginning of the divert sequence to stop the conveyor prior to the first divert
sheet entering the diverter bay.  The conveyor may be moving from a user activity.
After that point, the cross transfer conveyor actions are driven by the diverter 
bay and ultimately the diverted stack, whether it is scrap or inspection. ',
	0);
INSERT INTO PE_PE
	VALUES (1257,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (1257,
	5,
	'',
	0);
INSERT INTO R_SUBSUP
	VALUES (1257);
INSERT INTO R_SUPER
	VALUES (624,
	1257,
	1258);
INSERT INTO R_RTO
	VALUES (624,
	1257,
	1258,
	-1);
INSERT INTO R_OIR
	VALUES (624,
	1257,
	1258,
	0);
INSERT INTO R_SUB
	VALUES (1259,
	1257,
	1260);
INSERT INTO R_RGO
	VALUES (1259,
	1257,
	1260);
INSERT INTO R_OIR
	VALUES (1259,
	1257,
	1260,
	0);
INSERT INTO R_SUB
	VALUES (1261,
	1257,
	1262);
INSERT INTO R_RGO
	VALUES (1261,
	1257,
	1262);
INSERT INTO R_OIR
	VALUES (1261,
	1257,
	1262,
	0);
INSERT INTO R_SUB
	VALUES (1263,
	1257,
	1264);
INSERT INTO R_RGO
	VALUES (1263,
	1257,
	1264);
INSERT INTO R_OIR
	VALUES (1263,
	1257,
	1264,
	0);
INSERT INTO R_SUB
	VALUES (543,
	1257,
	1265);
INSERT INTO R_RGO
	VALUES (543,
	1257,
	1265);
INSERT INTO R_OIR
	VALUES (543,
	1257,
	1265,
	1266);
INSERT INTO PE_PE
	VALUES (1267,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (1267,
	3,
	'',
	0);
INSERT INTO R_ASSOC
	VALUES (1267);
INSERT INTO R_AONE
	VALUES (1268,
	1267,
	1269,
	1,
	1,
	'responds to position of');
INSERT INTO O_RTIDA
	VALUES (1270,
	1268,
	0,
	1267,
	1269);
INSERT INTO R_RTO
	VALUES (1268,
	1267,
	1269,
	0);
INSERT INTO R_OIR
	VALUES (1268,
	1267,
	1269,
	0);
INSERT INTO R_AOTH
	VALUES (624,
	1267,
	1271,
	1,
	1,
	'initiates motion on');
INSERT INTO O_RTIDA
	VALUES (628,
	624,
	0,
	1267,
	1271);
INSERT INTO R_RTO
	VALUES (624,
	1267,
	1271,
	0);
INSERT INTO R_OIR
	VALUES (624,
	1267,
	1271,
	0);
INSERT INTO R_ASSR
	VALUES (1272,
	1267,
	1273,
	0);
INSERT INTO R_RGO
	VALUES (1272,
	1267,
	1273);
INSERT INTO R_OIR
	VALUES (1272,
	1267,
	1273,
	0);
INSERT INTO PE_PE
	VALUES (1274,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (1274,
	6,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (1274);
INSERT INTO R_PART
	VALUES (630,
	1274,
	1275,
	0,
	0,
	'forms in');
INSERT INTO R_RTO
	VALUES (630,
	1274,
	1275,
	-1);
INSERT INTO R_OIR
	VALUES (630,
	1274,
	1275,
	0);
INSERT INTO R_PART
	VALUES (1276,
	1274,
	1277,
	0,
	1,
	'creates');
INSERT INTO R_RTO
	VALUES (1276,
	1274,
	1277,
	-1);
INSERT INTO R_OIR
	VALUES (1276,
	1274,
	1277,
	0);
INSERT INTO PE_PE
	VALUES (737,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (737,
	1,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (737);
INSERT INTO R_PART
	VALUES (698,
	737,
	1278,
	0,
	1,
	'next');
INSERT INTO R_RTO
	VALUES (698,
	737,
	1278,
	-1);
INSERT INTO R_OIR
	VALUES (698,
	737,
	1278,
	0);
INSERT INTO R_PART
	VALUES (698,
	737,
	1279,
	0,
	1,
	'prev');
INSERT INTO R_RTO
	VALUES (698,
	737,
	1279,
	-1);
INSERT INTO R_OIR
	VALUES (698,
	737,
	1279,
	0);
INSERT INTO PE_PE
	VALUES (717,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (717,
	4,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (717);
INSERT INTO R_PART
	VALUES (630,
	717,
	1280,
	0,
	1,
	'');
INSERT INTO R_RTO
	VALUES (630,
	717,
	1280,
	-1);
INSERT INTO R_OIR
	VALUES (630,
	717,
	1280,
	0);
INSERT INTO R_PART
	VALUES (698,
	717,
	1281,
	0,
	1,
	'receives next');
INSERT INTO R_RTO
	VALUES (698,
	717,
	1281,
	-1);
INSERT INTO R_OIR
	VALUES (698,
	717,
	1281,
	0);
INSERT INTO PE_PE
	VALUES (1282,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (1282,
	2,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (1282);
INSERT INTO R_PART
	VALUES (698,
	1282,
	1283,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (698,
	1282,
	1283,
	-1);
INSERT INTO R_OIR
	VALUES (698,
	1282,
	1283,
	0);
INSERT INTO R_PART
	VALUES (1268,
	1282,
	1284,
	1,
	0,
	'consists of');
INSERT INTO R_RTO
	VALUES (1268,
	1282,
	1284,
	-1);
INSERT INTO R_OIR
	VALUES (1268,
	1282,
	1284,
	0);
INSERT INTO PE_PE
	VALUES (1285,
	1,
	1256,
	0,
	9);
INSERT INTO R_REL
	VALUES (1285,
	7,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (1285);
INSERT INTO R_PART
	VALUES (630,
	1285,
	1286,
	0,
	0,
	'removes diverted stacks from');
INSERT INTO R_RTO
	VALUES (630,
	1285,
	1286,
	-1);
INSERT INTO R_OIR
	VALUES (630,
	1285,
	1286,
	0);
INSERT INTO R_PART
	VALUES (543,
	1285,
	1287,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (543,
	1285,
	1287,
	-1);
INSERT INTO R_OIR
	VALUES (543,
	1285,
	1287,
	1266);
INSERT INTO PE_PE
	VALUES (1266,
	1,
	1256,
	0,
	19);
INSERT INTO O_IOBJ
	VALUES (1266,
	543,
	0,
	0,
	'Cross Transfer Conveyor',
	'XTFRCNVR');
INSERT INTO PE_PE
	VALUES (1288,
	1,
	1256,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1288,
	0,
	'Init',
	'',
	'// This function performs all initialization necessary for this sub-system.
// 


// Create the hardware

// Actuator class - Air Blast
create object instance actuator of ACTR;

create object instance air_blast of ARBLST;
air_blast.position = 1000;
air_blast.blast_duration = 100;

relate air_blast to actuator across R5;

// Actuator class - Diverter Pan
create object instance actuator of ACTR;

create object instance diverter_pan of DVTPAN;
diverter_pan.position = 900;

relate diverter_pan to actuator across R5;

// Actuator class - Fingers
create object instance actuator of ACTR;

create object instance fingers of FNGRS;
fingers.position = 900;
fingers.lower_time = 5;
fingers.raise_time = 5;

relate fingers to actuator across R5;

// Actuator class - Cross Transfer Conveyor
create object instance actuator of ACTR;

create object instance xtfr_conv of XTFRCNVR;
xtfr_conv.stopping_time = 500;
xtfr_conv.drive_side = Motor_Direction::Forward;

relate xtfr_conv to actuator across R5;

create object instance manual of MANSEQ;
relate manual to xtfr_conv across R8;

create object instance diverter_bay of DVRTBAY;
relate diverter_bay to xtfr_conv across R7;

//
// // Start the class based timers
// create event instance tracking_timer of DVRTPKT_A1:calc_new_position to DVRTPKT assigner;
// timer_handle = TIM::timer_start_recurring(microseconds: 1 * 1000, 
//                                             event_inst: tracking_timer);
// 
// create event instance tracking_timer of TRKPT_A1:correct_position to TRKPT assigner;
// timer_handle = TIM::timer_start_recurring(microseconds: 100 * 1000, 
//                                             event_inst: tracking_timer);
// 

',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1289,
	1288);
INSERT INTO ACT_ACT
	VALUES (1289,
	'function',
	0,
	1290,
	0,
	0,
	'Init',
	0);
INSERT INTO ACT_BLK
	VALUES (1290,
	0,
	0,
	0,
	'',
	'',
	'',
	46,
	1,
	45,
	40,
	0,
	0,
	46,
	41,
	0,
	0,
	38,
	24,
	0,
	1289,
	0);
INSERT INTO ACT_SMT
	VALUES (1291,
	1290,
	1292,
	7,
	1,
	'Init line: 7');
INSERT INTO ACT_CR
	VALUES (1291,
	1293,
	1,
	624,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (1292,
	1290,
	1294,
	9,
	1,
	'Init line: 9');
INSERT INTO ACT_CR
	VALUES (1292,
	1295,
	1,
	1263,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1294,
	1290,
	1296,
	10,
	1,
	'Init line: 10');
INSERT INTO ACT_AI
	VALUES (1294,
	1297,
	1298,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1296,
	1290,
	1299,
	11,
	1,
	'Init line: 11');
INSERT INTO ACT_AI
	VALUES (1296,
	1300,
	1301,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1299,
	1290,
	1302,
	13,
	1,
	'Init line: 13');
INSERT INTO ACT_REL
	VALUES (1299,
	1295,
	1293,
	'',
	1257,
	13,
	37,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1302,
	1290,
	1303,
	16,
	1,
	'Init line: 16');
INSERT INTO ACT_CR
	VALUES (1302,
	1293,
	0,
	624,
	16,
	36);
INSERT INTO ACT_SMT
	VALUES (1303,
	1290,
	1304,
	18,
	1,
	'Init line: 18');
INSERT INTO ACT_CR
	VALUES (1303,
	1305,
	1,
	1261,
	18,
	40);
INSERT INTO ACT_SMT
	VALUES (1304,
	1290,
	1306,
	19,
	1,
	'Init line: 19');
INSERT INTO ACT_AI
	VALUES (1304,
	1307,
	1308,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1306,
	1290,
	1309,
	21,
	1,
	'Init line: 21');
INSERT INTO ACT_REL
	VALUES (1306,
	1305,
	1293,
	'',
	1257,
	21,
	40,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1309,
	1290,
	1310,
	24,
	1,
	'Init line: 24');
INSERT INTO ACT_CR
	VALUES (1309,
	1293,
	0,
	624,
	24,
	36);
INSERT INTO ACT_SMT
	VALUES (1310,
	1290,
	1311,
	26,
	1,
	'Init line: 26');
INSERT INTO ACT_CR
	VALUES (1310,
	1312,
	1,
	1259,
	26,
	35);
INSERT INTO ACT_SMT
	VALUES (1311,
	1290,
	1313,
	27,
	1,
	'Init line: 27');
INSERT INTO ACT_AI
	VALUES (1311,
	1314,
	1315,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1313,
	1290,
	1316,
	28,
	1,
	'Init line: 28');
INSERT INTO ACT_AI
	VALUES (1313,
	1317,
	1318,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1316,
	1290,
	1319,
	29,
	1,
	'Init line: 29');
INSERT INTO ACT_AI
	VALUES (1316,
	1320,
	1321,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1319,
	1290,
	1322,
	31,
	1,
	'Init line: 31');
INSERT INTO ACT_REL
	VALUES (1319,
	1312,
	1293,
	'',
	1257,
	31,
	35,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1322,
	1290,
	1323,
	34,
	1,
	'Init line: 34');
INSERT INTO ACT_CR
	VALUES (1322,
	1293,
	0,
	624,
	34,
	36);
INSERT INTO ACT_SMT
	VALUES (1323,
	1290,
	1324,
	36,
	1,
	'Init line: 36');
INSERT INTO ACT_CR
	VALUES (1323,
	1325,
	1,
	543,
	36,
	37);
INSERT INTO ACT_SMT
	VALUES (1324,
	1290,
	1326,
	37,
	1,
	'Init line: 37');
INSERT INTO ACT_AI
	VALUES (1324,
	1327,
	1328,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1326,
	1290,
	1329,
	38,
	1,
	'Init line: 38');
INSERT INTO ACT_AI
	VALUES (1326,
	1330,
	1331,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1329,
	1290,
	1332,
	40,
	1,
	'Init line: 40');
INSERT INTO ACT_REL
	VALUES (1329,
	1325,
	1293,
	'',
	1257,
	40,
	37,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1332,
	1290,
	1333,
	42,
	1,
	'Init line: 42');
INSERT INTO ACT_CR
	VALUES (1332,
	1334,
	1,
	553,
	42,
	34);
INSERT INTO ACT_SMT
	VALUES (1333,
	1290,
	1335,
	43,
	1,
	'Init line: 43');
INSERT INTO ACT_REL
	VALUES (1333,
	1334,
	1325,
	'',
	808,
	43,
	35,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1335,
	1290,
	1336,
	45,
	1,
	'Init line: 45');
INSERT INTO ACT_CR
	VALUES (1335,
	1337,
	1,
	630,
	45,
	40);
INSERT INTO ACT_SMT
	VALUES (1336,
	1290,
	0,
	46,
	1,
	'Init line: 46');
INSERT INTO ACT_REL
	VALUES (1336,
	1337,
	1325,
	'',
	1285,
	46,
	41,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1338,
	1,
	0,
	10,
	1,
	9,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1338,
	1295);
INSERT INTO V_VAL
	VALUES (1298,
	1,
	0,
	10,
	11,
	18,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1298,
	1338,
	1263,
	1339);
INSERT INTO V_VAL
	VALUES (1297,
	0,
	0,
	10,
	22,
	25,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1297,
	'1000');
INSERT INTO V_VAL
	VALUES (1340,
	1,
	0,
	11,
	1,
	9,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1340,
	1295);
INSERT INTO V_VAL
	VALUES (1301,
	1,
	0,
	11,
	11,
	24,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1301,
	1340,
	1263,
	1341);
INSERT INTO V_VAL
	VALUES (1300,
	0,
	0,
	11,
	28,
	30,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1300,
	'100');
INSERT INTO V_VAL
	VALUES (1342,
	1,
	0,
	19,
	1,
	12,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1342,
	1305);
INSERT INTO V_VAL
	VALUES (1308,
	1,
	0,
	19,
	14,
	21,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1308,
	1342,
	1261,
	1343);
INSERT INTO V_VAL
	VALUES (1307,
	0,
	0,
	19,
	25,
	27,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1307,
	'900');
INSERT INTO V_VAL
	VALUES (1344,
	1,
	0,
	27,
	1,
	7,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1344,
	1312);
INSERT INTO V_VAL
	VALUES (1315,
	1,
	0,
	27,
	9,
	16,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1315,
	1344,
	1259,
	1345);
INSERT INTO V_VAL
	VALUES (1314,
	0,
	0,
	27,
	20,
	22,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1314,
	'900');
INSERT INTO V_VAL
	VALUES (1346,
	1,
	0,
	28,
	1,
	7,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1346,
	1312);
INSERT INTO V_VAL
	VALUES (1318,
	1,
	0,
	28,
	9,
	18,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1318,
	1346,
	1259,
	1347);
INSERT INTO V_VAL
	VALUES (1317,
	0,
	0,
	28,
	22,
	22,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1317,
	'5');
INSERT INTO V_VAL
	VALUES (1348,
	1,
	0,
	29,
	1,
	7,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1348,
	1312);
INSERT INTO V_VAL
	VALUES (1321,
	1,
	0,
	29,
	9,
	18,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1321,
	1348,
	1259,
	1349);
INSERT INTO V_VAL
	VALUES (1320,
	0,
	0,
	29,
	22,
	22,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1320,
	'5');
INSERT INTO V_VAL
	VALUES (1350,
	1,
	0,
	37,
	1,
	9,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1350,
	1325);
INSERT INTO V_VAL
	VALUES (1328,
	1,
	0,
	37,
	11,
	23,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_AVL
	VALUES (1328,
	1350,
	543,
	547);
INSERT INTO V_VAL
	VALUES (1327,
	0,
	0,
	37,
	27,
	29,
	0,
	0,
	0,
	0,
	186,
	1290);
INSERT INTO V_LIN
	VALUES (1327,
	'500');
INSERT INTO V_VAL
	VALUES (1351,
	1,
	0,
	38,
	1,
	9,
	0,
	0,
	0,
	0,
	34,
	1290);
INSERT INTO V_IRF
	VALUES (1351,
	1325);
INSERT INTO V_VAL
	VALUES (1331,
	1,
	0,
	38,
	11,
	20,
	0,
	0,
	0,
	0,
	290,
	1290);
INSERT INTO V_AVL
	VALUES (1331,
	1351,
	543,
	551);
INSERT INTO V_VAL
	VALUES (1330,
	0,
	0,
	38,
	41,
	47,
	0,
	0,
	0,
	0,
	290,
	1290);
INSERT INTO V_LEN
	VALUES (1330,
	526,
	38,
	24);
INSERT INTO V_VAR
	VALUES (1293,
	1290,
	'actuator',
	1,
	34);
INSERT INTO V_INT
	VALUES (1293,
	0,
	624);
INSERT INTO V_VAR
	VALUES (1295,
	1290,
	'air_blast',
	1,
	34);
INSERT INTO V_INT
	VALUES (1295,
	0,
	1263);
INSERT INTO V_VAR
	VALUES (1305,
	1290,
	'diverter_pan',
	1,
	34);
INSERT INTO V_INT
	VALUES (1305,
	0,
	1261);
INSERT INTO V_VAR
	VALUES (1312,
	1290,
	'fingers',
	1,
	34);
INSERT INTO V_INT
	VALUES (1312,
	0,
	1259);
INSERT INTO V_VAR
	VALUES (1325,
	1290,
	'xtfr_conv',
	1,
	34);
INSERT INTO V_INT
	VALUES (1325,
	0,
	543);
INSERT INTO V_VAR
	VALUES (1334,
	1290,
	'manual',
	1,
	34);
INSERT INTO V_INT
	VALUES (1334,
	0,
	553);
INSERT INTO V_VAR
	VALUES (1337,
	1290,
	'diverter_bay',
	1,
	34);
INSERT INTO V_INT
	VALUES (1337,
	0,
	630);
INSERT INTO PE_PE
	VALUES (624,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (624,
	'Actuator',
	3,
	'ACTR',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (626,
	624);
INSERT INTO O_BATTR
	VALUES (626,
	624);
INSERT INTO O_ATTR
	VALUES (626,
	624,
	628,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (628,
	624);
INSERT INTO O_BATTR
	VALUES (628,
	624);
INSERT INTO O_ATTR
	VALUES (628,
	624,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	624);
INSERT INTO O_OIDA
	VALUES (628,
	624,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	624);
INSERT INTO O_ID
	VALUES (2,
	624);
INSERT INTO SM_ISM
	VALUES (910,
	624);
INSERT INTO SM_SM
	VALUES (910,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (910);
INSERT INTO SM_PEVT
	VALUES (567,
	910,
	0,
	'Actuator',
	'ACTR',
	'activate');
INSERT INTO SM_EVT
	VALUES (567,
	910,
	0,
	1,
	'activate',
	0,
	'',
	'ACTR1',
	'');
INSERT INTO SM_PEVT
	VALUES (1352,
	910,
	0,
	'Actuator',
	'ACTR',
	'de_activate');
INSERT INTO SM_EVT
	VALUES (1352,
	910,
	0,
	2,
	'de_activate',
	0,
	'',
	'ACTR2',
	'');
INSERT INTO PE_PE
	VALUES (1263,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1263,
	'Air Blast',
	10,
	'ARBLST',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1339,
	1263);
INSERT INTO O_BATTR
	VALUES (1339,
	1263);
INSERT INTO O_ATTR
	VALUES (1339,
	1263,
	0,
	'position',
	'',
	'',
	'position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1353,
	1263);
INSERT INTO O_BATTR
	VALUES (1353,
	1263);
INSERT INTO O_ATTR
	VALUES (1353,
	1263,
	1341,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1341,
	1263);
INSERT INTO O_BATTR
	VALUES (1341,
	1263);
INSERT INTO O_ATTR
	VALUES (1341,
	1263,
	1339,
	'blast_duration',
	'',
	'',
	'blast_duration',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1263);
INSERT INTO O_ID
	VALUES (1,
	1263);
INSERT INTO O_ID
	VALUES (2,
	1263);
INSERT INTO SM_ISM
	VALUES (1354,
	1263);
INSERT INTO SM_SM
	VALUES (1354,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1354);
INSERT INTO SM_NLEVT
	VALUES (1355,
	1354,
	0,
	567,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1355,
	1354,
	0);
INSERT INTO SM_EVT
	VALUES (1355,
	1354,
	0,
	1,
	'activate',
	0,
	'',
	'ACTR1*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1356,
	1354,
	0,
	1352,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1356,
	1354,
	0);
INSERT INTO SM_EVT
	VALUES (1356,
	1354,
	0,
	2,
	'de_activate',
	0,
	'',
	'ACTR2*',
	'');
INSERT INTO SM_STATE
	VALUES (1357,
	1354,
	0,
	'Off',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1357,
	1355,
	1354,
	0);
INSERT INTO SM_CH
	VALUES (1357,
	1356,
	1354,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1357,
	1356,
	1354,
	0);
INSERT INTO SM_MOAH
	VALUES (1358,
	1354,
	1357);
INSERT INTO SM_AH
	VALUES (1358,
	1354);
INSERT INTO SM_ACT
	VALUES (1358,
	1354,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1359,
	1354,
	1358);
INSERT INTO ACT_ACT
	VALUES (1359,
	'state',
	0,
	1360,
	0,
	0,
	'Air Blast::Off',
	0);
INSERT INTO ACT_BLK
	VALUES (1360,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1359,
	0);
INSERT INTO SM_STATE
	VALUES (1361,
	1354,
	0,
	'On',
	2,
	0);
INSERT INTO SM_CH
	VALUES (1361,
	1355,
	1354,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1361,
	1355,
	1354,
	0);
INSERT INTO SM_SEME
	VALUES (1361,
	1356,
	1354,
	0);
INSERT INTO SM_MOAH
	VALUES (1362,
	1354,
	1361);
INSERT INTO SM_AH
	VALUES (1362,
	1354);
INSERT INTO SM_ACT
	VALUES (1362,
	1354,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1363,
	1354,
	1362);
INSERT INTO ACT_ACT
	VALUES (1363,
	'state',
	0,
	1364,
	0,
	0,
	'Air Blast::On',
	0);
INSERT INTO ACT_BLK
	VALUES (1364,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1363,
	0);
INSERT INTO SM_NSTXN
	VALUES (1365,
	1354,
	1357,
	1355,
	0);
INSERT INTO SM_TAH
	VALUES (1366,
	1354,
	1365);
INSERT INTO SM_AH
	VALUES (1366,
	1354);
INSERT INTO SM_ACT
	VALUES (1366,
	1354,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1367,
	1354,
	1366);
INSERT INTO ACT_ACT
	VALUES (1367,
	'transition',
	0,
	1368,
	0,
	0,
	'activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1368,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1367,
	0);
INSERT INTO SM_TXN
	VALUES (1365,
	1354,
	1361,
	0);
INSERT INTO SM_NSTXN
	VALUES (1369,
	1354,
	1361,
	1356,
	0);
INSERT INTO SM_TAH
	VALUES (1370,
	1354,
	1369);
INSERT INTO SM_AH
	VALUES (1370,
	1354);
INSERT INTO SM_ACT
	VALUES (1370,
	1354,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1371,
	1354,
	1370);
INSERT INTO ACT_ACT
	VALUES (1371,
	'transition',
	0,
	1372,
	0,
	0,
	'de_activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1372,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1371,
	0);
INSERT INTO SM_TXN
	VALUES (1369,
	1354,
	1357,
	0);
INSERT INTO PE_PE
	VALUES (698,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (698,
	'Divert Packet',
	1,
	'DVRTPKT',
	'',
	0);
INSERT INTO O_TFR
	VALUES (1373,
	698,
	'SheetDiverted',
	'',
	39,
	1,
	'// Notify the diverter bay that it has received another sheet
select one diverter_bay related by self->DVRTBAY[R4];
generate DVRTBAY1:receive_sheet(sheet_caliper: self.web_caliper) to diverter_bay;

// Check to see if there are any more sheets remaining
select many divert_sheets related by self->DVRTSHT[R2];
if empty divert_sheets;
   // This divert packet can be deleted now, perform cleanup
   unrelate self from diverter_bay across R4;
   
   select one divert_sheet related by self->DVRTPKT[R1.''next''];
   if not_empty divert_sheet;
      // remove relationship between this instance of divert packet and the next
      unrelate self from divert_sheet across R1.''next'';

      // establish the new relationship with the diverter bay
      relate divert_sheet to diverter_bay across R4;
   end if;
   
   // Notify the diverter bay that it has received the last sheet from this divert packet
   generate DVRTBAY2:divert_packet_received() to diverter_bay;
   
   // Remove this divert packet
   delete object instance self;
end if;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (1374,
	1373);
INSERT INTO ACT_ACT
	VALUES (1374,
	'operation',
	0,
	1375,
	0,
	0,
	'Divert Packet::SheetDiverted',
	0);
INSERT INTO ACT_BLK
	VALUES (1375,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'sheet_caliper',
	'sheet_caliper',
	7,
	1,
	6,
	44,
	0,
	0,
	6,
	52,
	0,
	0,
	0,
	0,
	0,
	1374,
	0);
INSERT INTO ACT_SMT
	VALUES (1376,
	1375,
	1377,
	2,
	1,
	'Divert Packet::SheetDiverted line: 2');
INSERT INTO ACT_SEL
	VALUES (1376,
	1378,
	1,
	'one',
	1379);
INSERT INTO ACT_SR
	VALUES (1376);
INSERT INTO ACT_LNK
	VALUES (1380,
	'',
	1376,
	717,
	0,
	2,
	630,
	2,
	42,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1377,
	1375,
	1381,
	3,
	1,
	'Divert Packet::SheetDiverted line: 3');
INSERT INTO E_ESS
	VALUES (1377,
	1,
	0,
	3,
	10,
	3,
	19,
	2,
	42,
	3,
	33,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1382,
	1377,
	0,
	'sheet_caliper',
	0,
	3,
	33);
INSERT INTO E_GES
	VALUES (1377);
INSERT INTO E_GSME
	VALUES (1377,
	1383);
INSERT INTO E_GEN
	VALUES (1377,
	1378);
INSERT INTO ACT_SMT
	VALUES (1381,
	1375,
	1384,
	6,
	1,
	'Divert Packet::SheetDiverted line: 6');
INSERT INTO ACT_SEL
	VALUES (1381,
	1385,
	1,
	'many',
	1386);
INSERT INTO ACT_SR
	VALUES (1381);
INSERT INTO ACT_LNK
	VALUES (1387,
	'',
	1381,
	1282,
	0,
	3,
	1268,
	6,
	44,
	6,
	52,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1384,
	1375,
	0,
	7,
	1,
	'Divert Packet::SheetDiverted line: 7');
INSERT INTO ACT_IF
	VALUES (1384,
	1388,
	1389,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1379,
	0,
	0,
	2,
	36,
	39,
	0,
	0,
	0,
	0,
	34,
	1375);
INSERT INTO V_IRF
	VALUES (1379,
	1390);
INSERT INTO V_VAL
	VALUES (1391,
	0,
	0,
	3,
	48,
	51,
	0,
	0,
	0,
	0,
	34,
	1375);
INSERT INTO V_IRF
	VALUES (1391,
	1390);
INSERT INTO V_VAL
	VALUES (1382,
	0,
	0,
	3,
	53,
	63,
	0,
	0,
	0,
	0,
	186,
	1375);
INSERT INTO V_AVL
	VALUES (1382,
	1391,
	698,
	731);
INSERT INTO V_VAL
	VALUES (1386,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	34,
	1375);
INSERT INTO V_IRF
	VALUES (1386,
	1390);
INSERT INTO V_VAL
	VALUES (1392,
	0,
	0,
	7,
	10,
	22,
	0,
	0,
	0,
	0,
	262,
	1375);
INSERT INTO V_ISR
	VALUES (1392,
	1385);
INSERT INTO V_VAL
	VALUES (1389,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1375);
INSERT INTO V_UNY
	VALUES (1389,
	1392,
	'empty');
INSERT INTO V_VAR
	VALUES (1378,
	1375,
	'diverter_bay',
	1,
	34);
INSERT INTO V_INT
	VALUES (1378,
	0,
	630);
INSERT INTO V_VAR
	VALUES (1390,
	1375,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1390,
	0,
	698);
INSERT INTO V_VAR
	VALUES (1385,
	1375,
	'divert_sheets',
	1,
	262);
INSERT INTO V_INS
	VALUES (1385,
	1268);
INSERT INTO ACT_BLK
	VALUES (1388,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	24,
	4,
	11,
	45,
	0,
	0,
	11,
	53,
	11,
	56,
	0,
	0,
	0,
	1374,
	0);
INSERT INTO ACT_SMT
	VALUES (1393,
	1388,
	1394,
	9,
	4,
	'Divert Packet::SheetDiverted line: 9');
INSERT INTO ACT_UNR
	VALUES (1393,
	1390,
	1378,
	'',
	717,
	9,
	43,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1394,
	1388,
	1395,
	11,
	4,
	'Divert Packet::SheetDiverted line: 11');
INSERT INTO ACT_SEL
	VALUES (1394,
	1396,
	1,
	'one',
	1397);
INSERT INTO ACT_SR
	VALUES (1394);
INSERT INTO ACT_LNK
	VALUES (1398,
	'next',
	1394,
	737,
	0,
	2,
	698,
	11,
	45,
	11,
	53,
	11,
	56);
INSERT INTO ACT_SMT
	VALUES (1395,
	1388,
	1399,
	12,
	4,
	'Divert Packet::SheetDiverted line: 12');
INSERT INTO ACT_IF
	VALUES (1395,
	1400,
	1401,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1399,
	1388,
	1402,
	21,
	4,
	'Divert Packet::SheetDiverted line: 21');
INSERT INTO E_ESS
	VALUES (1399,
	1,
	0,
	21,
	13,
	21,
	22,
	11,
	45,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1399);
INSERT INTO E_GSME
	VALUES (1399,
	1403);
INSERT INTO E_GEN
	VALUES (1399,
	1378);
INSERT INTO ACT_SMT
	VALUES (1402,
	1388,
	0,
	24,
	4,
	'Divert Packet::SheetDiverted line: 24');
INSERT INTO ACT_DEL
	VALUES (1402,
	1390);
INSERT INTO V_VAL
	VALUES (1397,
	0,
	0,
	11,
	39,
	42,
	0,
	0,
	0,
	0,
	34,
	1388);
INSERT INTO V_IRF
	VALUES (1397,
	1390);
INSERT INTO V_VAL
	VALUES (1404,
	0,
	0,
	12,
	17,
	28,
	0,
	0,
	0,
	0,
	34,
	1388);
INSERT INTO V_IRF
	VALUES (1404,
	1396);
INSERT INTO V_VAL
	VALUES (1401,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1388);
INSERT INTO V_UNY
	VALUES (1401,
	1404,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1396,
	1388,
	'divert_sheet',
	1,
	34);
INSERT INTO V_INT
	VALUES (1396,
	0,
	698);
INSERT INTO ACT_BLK
	VALUES (1400,
	0,
	0,
	0,
	'next',
	'',
	'',
	17,
	7,
	0,
	0,
	0,
	0,
	17,
	50,
	14,
	49,
	0,
	0,
	0,
	1374,
	0);
INSERT INTO ACT_SMT
	VALUES (1405,
	1400,
	1406,
	14,
	7,
	'Divert Packet::SheetDiverted line: 14');
INSERT INTO ACT_UNR
	VALUES (1405,
	1390,
	1396,
	'next',
	737,
	14,
	46,
	14,
	49);
INSERT INTO ACT_SMT
	VALUES (1406,
	1400,
	0,
	17,
	7,
	'Divert Packet::SheetDiverted line: 17');
INSERT INTO ACT_REL
	VALUES (1406,
	1396,
	1378,
	'',
	717,
	17,
	50,
	0,
	0);
INSERT INTO O_TFR
	VALUES (1407,
	698,
	'UpdatePosition',
	'',
	39,
	1,
	'// Update the position of the divert packet and the divert sheets. 
if (self.trailing_edge_position < 0);
   self.leading_edge_position = self.leading_edge_position + param.web_travel_dist;
   if (self.leading_edge_position > 0);
      self.leading_edge_position = 0;
   end if;
   
   self.trailing_edge_position = self.trailing_edge_position + param.web_travel_dist;
   if (self.trailing_edge_position > 0);
      self.trailing_edge_position = 0;
   end if;
end if;

// Update the position of the tracked divert sheets
select many divert_sheets related by self->DVRTSHT[R2];
for each divert_sheet in divert_sheets;
   divert_sheet.UpdatePosition(web_travel_dist: param.web_travel_dist, sheet_travel_dist: param.sheet_travel_dist);
end for;
',
	1,
	'',
	1373);
INSERT INTO O_TPARM
	VALUES (1408,
	1407,
	'web_travel_dist',
	186,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1409,
	1407,
	'sheet_travel_dist',
	186,
	0,
	'',
	1408,
	'');
INSERT INTO ACT_OPB
	VALUES (1410,
	1407);
INSERT INTO ACT_ACT
	VALUES (1410,
	'operation',
	0,
	1411,
	0,
	0,
	'Divert Packet::UpdatePosition',
	0);
INSERT INTO ACT_BLK
	VALUES (1411,
	1,
	0,
	0,
	'',
	'',
	'',
	16,
	1,
	15,
	44,
	0,
	0,
	15,
	52,
	0,
	0,
	0,
	0,
	0,
	1410,
	0);
INSERT INTO ACT_SMT
	VALUES (1412,
	1411,
	1413,
	2,
	1,
	'Divert Packet::UpdatePosition line: 2');
INSERT INTO ACT_IF
	VALUES (1412,
	1414,
	1415,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1413,
	1411,
	1416,
	15,
	1,
	'Divert Packet::UpdatePosition line: 15');
INSERT INTO ACT_SEL
	VALUES (1413,
	1417,
	1,
	'many',
	1418);
INSERT INTO ACT_SR
	VALUES (1413);
INSERT INTO ACT_LNK
	VALUES (1419,
	'',
	1413,
	1282,
	0,
	3,
	1268,
	15,
	44,
	15,
	52,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1416,
	1411,
	0,
	16,
	1,
	'Divert Packet::UpdatePosition line: 16');
INSERT INTO ACT_FOR
	VALUES (1416,
	1420,
	1,
	1421,
	1417,
	1268);
INSERT INTO V_VAL
	VALUES (1422,
	0,
	0,
	2,
	5,
	8,
	0,
	0,
	0,
	0,
	34,
	1411);
INSERT INTO V_IRF
	VALUES (1422,
	1423);
INSERT INTO V_VAL
	VALUES (1424,
	0,
	0,
	2,
	10,
	31,
	0,
	0,
	0,
	0,
	186,
	1411);
INSERT INTO V_AVL
	VALUES (1424,
	1422,
	698,
	725);
INSERT INTO V_VAL
	VALUES (1415,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1411);
INSERT INTO V_BIN
	VALUES (1415,
	1425,
	1424,
	'<');
INSERT INTO V_VAL
	VALUES (1425,
	0,
	0,
	2,
	35,
	35,
	0,
	0,
	0,
	0,
	186,
	1411);
INSERT INTO V_LIN
	VALUES (1425,
	'0');
INSERT INTO V_VAL
	VALUES (1418,
	0,
	0,
	15,
	38,
	41,
	0,
	0,
	0,
	0,
	34,
	1411);
INSERT INTO V_IRF
	VALUES (1418,
	1423);
INSERT INTO V_VAR
	VALUES (1423,
	1411,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1423,
	0,
	698);
INSERT INTO V_VAR
	VALUES (1417,
	1411,
	'divert_sheets',
	1,
	262);
INSERT INTO V_INS
	VALUES (1417,
	1268);
INSERT INTO V_VAR
	VALUES (1421,
	1411,
	'divert_sheet',
	1,
	34);
INSERT INTO V_INT
	VALUES (1421,
	1,
	1268);
INSERT INTO ACT_BLK
	VALUES (1414,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1410,
	0);
INSERT INTO ACT_SMT
	VALUES (1426,
	1414,
	1427,
	3,
	4,
	'Divert Packet::UpdatePosition line: 3');
INSERT INTO ACT_AI
	VALUES (1426,
	1428,
	1429,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1427,
	1414,
	1430,
	4,
	4,
	'Divert Packet::UpdatePosition line: 4');
INSERT INTO ACT_IF
	VALUES (1427,
	1431,
	1432,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1430,
	1414,
	1433,
	8,
	4,
	'Divert Packet::UpdatePosition line: 8');
INSERT INTO ACT_AI
	VALUES (1430,
	1434,
	1435,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1433,
	1414,
	0,
	9,
	4,
	'Divert Packet::UpdatePosition line: 9');
INSERT INTO ACT_IF
	VALUES (1433,
	1436,
	1437,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1438,
	1,
	0,
	3,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1438,
	1423);
INSERT INTO V_VAL
	VALUES (1429,
	1,
	0,
	3,
	9,
	29,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1429,
	1438,
	698,
	723);
INSERT INTO V_VAL
	VALUES (1439,
	0,
	0,
	3,
	33,
	36,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1439,
	1423);
INSERT INTO V_VAL
	VALUES (1440,
	0,
	0,
	3,
	38,
	58,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1440,
	1439,
	698,
	723);
INSERT INTO V_VAL
	VALUES (1428,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_BIN
	VALUES (1428,
	1441,
	1440,
	'+');
INSERT INTO V_VAL
	VALUES (1441,
	0,
	0,
	3,
	68,
	82,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_PVL
	VALUES (1441,
	0,
	0,
	1408,
	0);
INSERT INTO V_VAL
	VALUES (1442,
	0,
	0,
	4,
	8,
	11,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1442,
	1423);
INSERT INTO V_VAL
	VALUES (1443,
	0,
	0,
	4,
	13,
	33,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1443,
	1442,
	698,
	723);
INSERT INTO V_VAL
	VALUES (1432,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1414);
INSERT INTO V_BIN
	VALUES (1432,
	1444,
	1443,
	'>');
INSERT INTO V_VAL
	VALUES (1444,
	0,
	0,
	4,
	37,
	37,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_LIN
	VALUES (1444,
	'0');
INSERT INTO V_VAL
	VALUES (1445,
	1,
	0,
	8,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1445,
	1423);
INSERT INTO V_VAL
	VALUES (1435,
	1,
	0,
	8,
	9,
	30,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1435,
	1445,
	698,
	725);
INSERT INTO V_VAL
	VALUES (1446,
	0,
	0,
	8,
	34,
	37,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1446,
	1423);
INSERT INTO V_VAL
	VALUES (1447,
	0,
	0,
	8,
	39,
	60,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1447,
	1446,
	698,
	725);
INSERT INTO V_VAL
	VALUES (1434,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_BIN
	VALUES (1434,
	1448,
	1447,
	'+');
INSERT INTO V_VAL
	VALUES (1448,
	0,
	0,
	8,
	70,
	84,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_PVL
	VALUES (1448,
	0,
	0,
	1408,
	0);
INSERT INTO V_VAL
	VALUES (1449,
	0,
	0,
	9,
	8,
	11,
	0,
	0,
	0,
	0,
	34,
	1414);
INSERT INTO V_IRF
	VALUES (1449,
	1423);
INSERT INTO V_VAL
	VALUES (1450,
	0,
	0,
	9,
	13,
	34,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_AVL
	VALUES (1450,
	1449,
	698,
	725);
INSERT INTO V_VAL
	VALUES (1437,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1414);
INSERT INTO V_BIN
	VALUES (1437,
	1451,
	1450,
	'>');
INSERT INTO V_VAL
	VALUES (1451,
	0,
	0,
	9,
	38,
	38,
	0,
	0,
	0,
	0,
	186,
	1414);
INSERT INTO V_LIN
	VALUES (1451,
	'0');
INSERT INTO ACT_BLK
	VALUES (1431,
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1410,
	0);
INSERT INTO ACT_SMT
	VALUES (1452,
	1431,
	0,
	5,
	7,
	'Divert Packet::UpdatePosition line: 5');
INSERT INTO ACT_AI
	VALUES (1452,
	1453,
	1454,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1455,
	1,
	0,
	5,
	7,
	10,
	0,
	0,
	0,
	0,
	34,
	1431);
INSERT INTO V_IRF
	VALUES (1455,
	1423);
INSERT INTO V_VAL
	VALUES (1454,
	1,
	0,
	5,
	12,
	32,
	0,
	0,
	0,
	0,
	186,
	1431);
INSERT INTO V_AVL
	VALUES (1454,
	1455,
	698,
	723);
INSERT INTO V_VAL
	VALUES (1453,
	0,
	0,
	5,
	36,
	36,
	0,
	0,
	0,
	0,
	186,
	1431);
INSERT INTO V_LIN
	VALUES (1453,
	'0');
INSERT INTO ACT_BLK
	VALUES (1436,
	0,
	0,
	0,
	'',
	'',
	'',
	10,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1410,
	0);
INSERT INTO ACT_SMT
	VALUES (1456,
	1436,
	0,
	10,
	7,
	'Divert Packet::UpdatePosition line: 10');
INSERT INTO ACT_AI
	VALUES (1456,
	1457,
	1458,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1459,
	1,
	0,
	10,
	7,
	10,
	0,
	0,
	0,
	0,
	34,
	1436);
INSERT INTO V_IRF
	VALUES (1459,
	1423);
INSERT INTO V_VAL
	VALUES (1458,
	1,
	0,
	10,
	12,
	33,
	0,
	0,
	0,
	0,
	186,
	1436);
INSERT INTO V_AVL
	VALUES (1458,
	1459,
	698,
	725);
INSERT INTO V_VAL
	VALUES (1457,
	0,
	0,
	10,
	37,
	37,
	0,
	0,
	0,
	0,
	186,
	1436);
INSERT INTO V_LIN
	VALUES (1457,
	'0');
INSERT INTO ACT_BLK
	VALUES (1420,
	0,
	0,
	0,
	'',
	'',
	'',
	17,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1410,
	0);
INSERT INTO ACT_SMT
	VALUES (1460,
	1420,
	0,
	17,
	4,
	'Divert Packet::UpdatePosition line: 17');
INSERT INTO ACT_TFM
	VALUES (1460,
	1461,
	1421,
	17,
	17,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1462,
	0,
	0,
	17,
	55,
	69,
	0,
	0,
	0,
	0,
	186,
	1420);
INSERT INTO V_PVL
	VALUES (1462,
	0,
	0,
	1408,
	0);
INSERT INTO V_PAR
	VALUES (1462,
	1460,
	0,
	'web_travel_dist',
	1463,
	17,
	32);
INSERT INTO V_VAL
	VALUES (1463,
	0,
	0,
	17,
	97,
	113,
	0,
	0,
	0,
	0,
	186,
	1420);
INSERT INTO V_PVL
	VALUES (1463,
	0,
	0,
	1409,
	0);
INSERT INTO V_PAR
	VALUES (1463,
	1460,
	0,
	'sheet_travel_dist',
	0,
	17,
	72);
INSERT INTO O_NBATTR
	VALUES (1464,
	698);
INSERT INTO O_BATTR
	VALUES (1464,
	698);
INSERT INTO O_ATTR
	VALUES (1464,
	698,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (721,
	698);
INSERT INTO O_BATTR
	VALUES (721,
	698);
INSERT INTO O_ATTR
	VALUES (721,
	698,
	1464,
	'type',
	'',
	'',
	'type',
	0,
	272,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (723,
	698);
INSERT INTO O_BATTR
	VALUES (723,
	698);
INSERT INTO O_ATTR
	VALUES (723,
	698,
	721,
	'leading_edge_position',
	'',
	'',
	'leading_edge_position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (725,
	698);
INSERT INTO O_BATTR
	VALUES (725,
	698);
INSERT INTO O_ATTR
	VALUES (725,
	698,
	723,
	'trailing_edge_position',
	'',
	'',
	'trailing_edge_position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (731,
	698);
INSERT INTO O_BATTR
	VALUES (731,
	698);
INSERT INTO O_ATTR
	VALUES (731,
	698,
	725,
	'web_caliper',
	'',
	'',
	'web_caliper',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	698);
INSERT INTO O_OIDA
	VALUES (1464,
	698,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	698);
INSERT INTO O_ID
	VALUES (2,
	698);
INSERT INTO SM_ASM
	VALUES (1465,
	698);
INSERT INTO SM_SM
	VALUES (1465,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1465);
INSERT INTO SM_LEVT
	VALUES (1466,
	1465,
	0);
INSERT INTO SM_SEVT
	VALUES (1466,
	1465,
	0);
INSERT INTO SM_EVT
	VALUES (1466,
	1465,
	0,
	1,
	'calc_new_position',
	0,
	'',
	'DVRTPKT_A1',
	'');
INSERT INTO SM_STATE
	VALUES (1467,
	1465,
	0,
	'Tracking',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1467,
	1466,
	1465,
	0);
INSERT INTO SM_MOAH
	VALUES (1468,
	1465,
	1467);
INSERT INTO SM_AH
	VALUES (1468,
	1465);
INSERT INTO SM_ACT
	VALUES (1468,
	1465,
	1,
	'// Calculate how far the web has moved and how far the sheets in the sheet
//    handling system have moved.
// 


// Obtain the speeds from required interface
web_speed = 100;           // Units = Meter / Minute
sheet_handler_speed = 105; // Units = Meter / Minute

// Determine how far the web has moved relative to the last calculation.

// x1 = x0 + (v0 * t) + (0.5 * a * t^2);  x0 = 0, a = 0, t = 1 mSec
web_dist = web_speed / 60;              // Units = mm / mSec
sheet_dist = sheet_handler_speed / 60;  // Units = mm / mSec

// Update the position of the divert packets
select many divert_packets from DVRTPKT;
for each divert_packet in divert_packets;
   divert_packet.UpdatePosition(web_travel_dist: web_dist, sheet_travel_dist: sheet_dist);
end for;

',
	'');
INSERT INTO ACT_SAB
	VALUES (1469,
	1465,
	1468);
INSERT INTO ACT_ACT
	VALUES (1469,
	'class state',
	0,
	1470,
	0,
	0,
	'Divert Packet::Tracking',
	0);
INSERT INTO ACT_BLK
	VALUES (1470,
	1,
	0,
	0,
	'',
	'',
	'',
	17,
	1,
	16,
	33,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1469,
	0);
INSERT INTO ACT_SMT
	VALUES (1471,
	1470,
	1472,
	6,
	1,
	'Divert Packet::Tracking line: 6');
INSERT INTO ACT_AI
	VALUES (1471,
	1473,
	1474,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1472,
	1470,
	1475,
	7,
	1,
	'Divert Packet::Tracking line: 7');
INSERT INTO ACT_AI
	VALUES (1472,
	1476,
	1477,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1475,
	1470,
	1478,
	12,
	1,
	'Divert Packet::Tracking line: 12');
INSERT INTO ACT_AI
	VALUES (1475,
	1479,
	1480,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1478,
	1470,
	1481,
	13,
	1,
	'Divert Packet::Tracking line: 13');
INSERT INTO ACT_AI
	VALUES (1478,
	1482,
	1483,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1481,
	1470,
	1484,
	16,
	1,
	'Divert Packet::Tracking line: 16');
INSERT INTO ACT_FIO
	VALUES (1481,
	1485,
	1,
	'many',
	698,
	16,
	33);
INSERT INTO ACT_SMT
	VALUES (1484,
	1470,
	0,
	17,
	1,
	'Divert Packet::Tracking line: 17');
INSERT INTO ACT_FOR
	VALUES (1484,
	1486,
	1,
	1487,
	1485,
	698);
INSERT INTO V_VAL
	VALUES (1474,
	1,
	1,
	6,
	1,
	9,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1474,
	1488);
INSERT INTO V_VAL
	VALUES (1473,
	0,
	0,
	6,
	13,
	15,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_LIN
	VALUES (1473,
	'100');
INSERT INTO V_VAL
	VALUES (1477,
	1,
	1,
	7,
	1,
	19,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1477,
	1489);
INSERT INTO V_VAL
	VALUES (1476,
	0,
	0,
	7,
	23,
	25,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_LIN
	VALUES (1476,
	'105');
INSERT INTO V_VAL
	VALUES (1480,
	1,
	1,
	12,
	1,
	8,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1480,
	1490);
INSERT INTO V_VAL
	VALUES (1491,
	0,
	0,
	12,
	12,
	20,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1491,
	1488);
INSERT INTO V_VAL
	VALUES (1479,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_BIN
	VALUES (1479,
	1492,
	1491,
	'/');
INSERT INTO V_VAL
	VALUES (1492,
	0,
	0,
	12,
	24,
	25,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_LIN
	VALUES (1492,
	'60');
INSERT INTO V_VAL
	VALUES (1483,
	1,
	1,
	13,
	1,
	10,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1483,
	1493);
INSERT INTO V_VAL
	VALUES (1494,
	0,
	0,
	13,
	14,
	32,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_TVL
	VALUES (1494,
	1489);
INSERT INTO V_VAL
	VALUES (1482,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_BIN
	VALUES (1482,
	1495,
	1494,
	'/');
INSERT INTO V_VAL
	VALUES (1495,
	0,
	0,
	13,
	36,
	37,
	0,
	0,
	0,
	0,
	186,
	1470);
INSERT INTO V_LIN
	VALUES (1495,
	'60');
INSERT INTO V_VAR
	VALUES (1488,
	1470,
	'web_speed',
	1,
	186);
INSERT INTO V_TRN
	VALUES (1488,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1489,
	1470,
	'sheet_handler_speed',
	1,
	186);
INSERT INTO V_TRN
	VALUES (1489,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1490,
	1470,
	'web_dist',
	1,
	186);
INSERT INTO V_TRN
	VALUES (1490,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1493,
	1470,
	'sheet_dist',
	1,
	186);
INSERT INTO V_TRN
	VALUES (1493,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1485,
	1470,
	'divert_packets',
	1,
	262);
INSERT INTO V_INS
	VALUES (1485,
	698);
INSERT INTO V_VAR
	VALUES (1487,
	1470,
	'divert_packet',
	1,
	34);
INSERT INTO V_INT
	VALUES (1487,
	1,
	698);
INSERT INTO ACT_BLK
	VALUES (1486,
	0,
	0,
	0,
	'',
	'',
	'',
	18,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1469,
	0);
INSERT INTO ACT_SMT
	VALUES (1496,
	1486,
	0,
	18,
	4,
	'Divert Packet::Tracking line: 18');
INSERT INTO ACT_TFM
	VALUES (1496,
	1407,
	1487,
	18,
	18,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1497,
	0,
	0,
	18,
	50,
	57,
	0,
	0,
	0,
	0,
	186,
	1486);
INSERT INTO V_TVL
	VALUES (1497,
	1490);
INSERT INTO V_PAR
	VALUES (1497,
	1496,
	0,
	'web_travel_dist',
	1498,
	18,
	33);
INSERT INTO V_VAL
	VALUES (1498,
	0,
	0,
	18,
	79,
	88,
	0,
	0,
	0,
	0,
	186,
	1486);
INSERT INTO V_TVL
	VALUES (1498,
	1493);
INSERT INTO V_PAR
	VALUES (1498,
	1496,
	0,
	'sheet_travel_dist',
	0,
	18,
	60);
INSERT INTO SM_NSTXN
	VALUES (1499,
	1465,
	1467,
	1466,
	0);
INSERT INTO SM_TAH
	VALUES (1500,
	1465,
	1499);
INSERT INTO SM_AH
	VALUES (1500,
	1465);
INSERT INTO SM_ACT
	VALUES (1500,
	1465,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1501,
	1465,
	1500);
INSERT INTO ACT_ACT
	VALUES (1501,
	'class transition',
	0,
	1502,
	0,
	0,
	'DVRTPKT_A1: calc_new_position',
	0);
INSERT INTO ACT_BLK
	VALUES (1502,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1501,
	0);
INSERT INTO SM_TXN
	VALUES (1499,
	1465,
	1467,
	0);
INSERT INTO PE_PE
	VALUES (1268,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1268,
	'Divert Sheet',
	2,
	'DVRTSHT',
	'',
	0);
INSERT INTO O_TFR
	VALUES (1461,
	1268,
	'UpdatePosition',
	'',
	39,
	1,
	'// Update the tracked sheet''s position, check if any tracking points have been
//    reached, if so fire the events off, remove tracked sheet if it has no more
//    tracking points and add it to the stack.
// 


// Update position of sheet
if self.position - self.length < 0;
   // This sheet is still part of the web, use distance the web moved
   self.position = self.position + param.web_travel_dist;
else;
   // This sheet has been cut off and is under the control of the sheet handler
   self.position = self.position + param.sheet_travel_dist;
end if;

// Find the tracking points that should be fired
select many tracking_points related by self->TRKPT[R3] where 
   (selected.edge_to_track == Sheet_End::Leading and 
    self.position >= selected.effective_position) or
   (selected.edge_to_track == Sheet_End::Trailing and 
    self.position - self.length >= selected.effective_position);
      
for each tracking_point in tracking_points;
   // Send the event to the actuator
   select one actuator related by tracking_point->ACTR[R3];
   if tracking_point.type == Actuator_Event_Type::Engage_Material;
      generate ACTR1:activate() to actuator;
   else;
      generate ACTR2:de_activate() to actuator;
   end if;
     
   // Remove the tracking point
   unrelate actuator from self across R3 using tracking_point;
   delete object instance tracking_point;
end for;

// Check to see if this tracked_sheet has any more tracking points, if not,
//    it is a candidate for deletion.
// 

if self.position - self.length >= 0;  // The sheet must be severed from web
   select any tracking_point related by self->TRKPT[R3];
   if empty tracking_point;
      // Inform the Divert Packet this sheet has been diverted
      select one divert_packet related by self->DVRTPKT[R2];
      divert_packet.SheetDiverted();
   
      delete object instance self;
   end if;
end if;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1503,
	1461,
	'web_travel_dist',
	186,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1504,
	1461,
	'sheet_travel_dist',
	186,
	0,
	'',
	1503,
	'');
INSERT INTO ACT_OPB
	VALUES (1505,
	1461);
INSERT INTO ACT_ACT
	VALUES (1505,
	'operation',
	0,
	1506,
	0,
	0,
	'Divert Sheet::UpdatePosition',
	0);
INSERT INTO ACT_BLK
	VALUES (1506,
	1,
	0,
	1,
	'',
	'',
	'',
	39,
	1,
	16,
	46,
	0,
	0,
	16,
	52,
	0,
	0,
	19,
	31,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1507,
	1506,
	1508,
	7,
	1,
	'Divert Sheet::UpdatePosition line: 7');
INSERT INTO ACT_IF
	VALUES (1507,
	1509,
	1510,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1511,
	1506,
	0,
	10,
	1,
	'Divert Sheet::UpdatePosition line: 10');
INSERT INTO ACT_E
	VALUES (1511,
	1512,
	1507);
INSERT INTO ACT_SMT
	VALUES (1508,
	1506,
	1513,
	16,
	1,
	'Divert Sheet::UpdatePosition line: 16');
INSERT INTO ACT_SEL
	VALUES (1508,
	1514,
	1,
	'many',
	1515);
INSERT INTO ACT_SRW
	VALUES (1508,
	1516);
INSERT INTO ACT_LNK
	VALUES (1517,
	'',
	1508,
	1267,
	0,
	3,
	1272,
	16,
	46,
	16,
	52,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1513,
	1506,
	1518,
	22,
	1,
	'Divert Sheet::UpdatePosition line: 22');
INSERT INTO ACT_FOR
	VALUES (1513,
	1519,
	1,
	1520,
	1514,
	1272);
INSERT INTO ACT_SMT
	VALUES (1518,
	1506,
	0,
	39,
	1,
	'Divert Sheet::UpdatePosition line: 39');
INSERT INTO ACT_IF
	VALUES (1518,
	1521,
	1522,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1523,
	0,
	0,
	7,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1523,
	1524);
INSERT INTO V_VAL
	VALUES (1525,
	0,
	0,
	7,
	9,
	16,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1525,
	1523,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1527,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_BIN
	VALUES (1527,
	1528,
	1525,
	'-');
INSERT INTO V_VAL
	VALUES (1529,
	0,
	0,
	7,
	20,
	23,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1529,
	1524);
INSERT INTO V_VAL
	VALUES (1528,
	0,
	0,
	7,
	25,
	30,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1528,
	1529,
	1268,
	1530);
INSERT INTO V_VAL
	VALUES (1510,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1510,
	1531,
	1527,
	'<');
INSERT INTO V_VAL
	VALUES (1531,
	0,
	0,
	7,
	34,
	34,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_LIN
	VALUES (1531,
	'0');
INSERT INTO V_VAL
	VALUES (1515,
	0,
	0,
	16,
	40,
	43,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1515,
	1524);
INSERT INTO V_VAL
	VALUES (1532,
	0,
	0,
	17,
	5,
	-1,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_SLR
	VALUES (1532,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1533,
	0,
	0,
	17,
	14,
	26,
	0,
	0,
	0,
	0,
	1247,
	1506);
INSERT INTO V_AVL
	VALUES (1533,
	1532,
	1272,
	1534);
INSERT INTO V_VAL
	VALUES (1535,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1535,
	1536,
	1533,
	'==');
INSERT INTO V_VAL
	VALUES (1536,
	0,
	0,
	17,
	42,
	48,
	0,
	0,
	0,
	0,
	1247,
	1506);
INSERT INTO V_LEN
	VALUES (1536,
	1248,
	17,
	31);
INSERT INTO V_VAL
	VALUES (1537,
	0,
	0,
	18,
	5,
	8,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1537,
	1524);
INSERT INTO V_VAL
	VALUES (1538,
	0,
	0,
	18,
	10,
	17,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1538,
	1537,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1539,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1539,
	1540,
	1538,
	'>=');
INSERT INTO V_VAL
	VALUES (1541,
	0,
	0,
	18,
	22,
	-1,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_SLR
	VALUES (1541,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1540,
	0,
	0,
	18,
	31,
	48,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1540,
	1541,
	1272,
	1542);
INSERT INTO V_VAL
	VALUES (1543,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1543,
	1539,
	1535,
	'and');
INSERT INTO V_VAL
	VALUES (1544,
	0,
	0,
	19,
	5,
	-1,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_SLR
	VALUES (1544,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1545,
	0,
	0,
	19,
	14,
	26,
	0,
	0,
	0,
	0,
	1247,
	1506);
INSERT INTO V_AVL
	VALUES (1545,
	1544,
	1272,
	1534);
INSERT INTO V_VAL
	VALUES (1546,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1546,
	1547,
	1545,
	'==');
INSERT INTO V_VAL
	VALUES (1547,
	0,
	0,
	19,
	42,
	49,
	0,
	0,
	0,
	0,
	1247,
	1506);
INSERT INTO V_LEN
	VALUES (1547,
	1249,
	19,
	31);
INSERT INTO V_VAL
	VALUES (1548,
	0,
	0,
	20,
	5,
	8,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1548,
	1524);
INSERT INTO V_VAL
	VALUES (1549,
	0,
	0,
	20,
	10,
	17,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1549,
	1548,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1550,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_BIN
	VALUES (1550,
	1551,
	1549,
	'-');
INSERT INTO V_VAL
	VALUES (1552,
	0,
	0,
	20,
	21,
	24,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1552,
	1524);
INSERT INTO V_VAL
	VALUES (1551,
	0,
	0,
	20,
	26,
	31,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1551,
	1552,
	1268,
	1530);
INSERT INTO V_VAL
	VALUES (1553,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1553,
	1554,
	1550,
	'>=');
INSERT INTO V_VAL
	VALUES (1555,
	0,
	0,
	20,
	36,
	-1,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_SLR
	VALUES (1555,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1554,
	0,
	0,
	20,
	45,
	62,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1554,
	1555,
	1272,
	1542);
INSERT INTO V_VAL
	VALUES (1556,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1556,
	1553,
	1546,
	'and');
INSERT INTO V_VAL
	VALUES (1516,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1516,
	1556,
	1543,
	'or');
INSERT INTO V_VAL
	VALUES (1557,
	0,
	0,
	39,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1557,
	1524);
INSERT INTO V_VAL
	VALUES (1558,
	0,
	0,
	39,
	9,
	16,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1558,
	1557,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1559,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_BIN
	VALUES (1559,
	1560,
	1558,
	'-');
INSERT INTO V_VAL
	VALUES (1561,
	0,
	0,
	39,
	20,
	23,
	0,
	0,
	0,
	0,
	34,
	1506);
INSERT INTO V_IRF
	VALUES (1561,
	1524);
INSERT INTO V_VAL
	VALUES (1560,
	0,
	0,
	39,
	25,
	30,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_AVL
	VALUES (1560,
	1561,
	1268,
	1530);
INSERT INTO V_VAL
	VALUES (1522,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1506);
INSERT INTO V_BIN
	VALUES (1522,
	1562,
	1559,
	'>=');
INSERT INTO V_VAL
	VALUES (1562,
	0,
	0,
	39,
	35,
	35,
	0,
	0,
	0,
	0,
	186,
	1506);
INSERT INTO V_LIN
	VALUES (1562,
	'0');
INSERT INTO V_VAR
	VALUES (1524,
	1506,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1524,
	0,
	1268);
INSERT INTO V_VAR
	VALUES (1514,
	1506,
	'tracking_points',
	1,
	262);
INSERT INTO V_INS
	VALUES (1514,
	1272);
INSERT INTO V_VAR
	VALUES (1520,
	1506,
	'tracking_point',
	1,
	34);
INSERT INTO V_INT
	VALUES (1520,
	1,
	1272);
INSERT INTO ACT_BLK
	VALUES (1509,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1563,
	1509,
	0,
	9,
	4,
	'Divert Sheet::UpdatePosition line: 9');
INSERT INTO ACT_AI
	VALUES (1563,
	1564,
	1565,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1566,
	1,
	0,
	9,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1509);
INSERT INTO V_IRF
	VALUES (1566,
	1524);
INSERT INTO V_VAL
	VALUES (1565,
	1,
	0,
	9,
	9,
	16,
	0,
	0,
	0,
	0,
	186,
	1509);
INSERT INTO V_AVL
	VALUES (1565,
	1566,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1567,
	0,
	0,
	9,
	20,
	23,
	0,
	0,
	0,
	0,
	34,
	1509);
INSERT INTO V_IRF
	VALUES (1567,
	1524);
INSERT INTO V_VAL
	VALUES (1568,
	0,
	0,
	9,
	25,
	32,
	0,
	0,
	0,
	0,
	186,
	1509);
INSERT INTO V_AVL
	VALUES (1568,
	1567,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1564,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1509);
INSERT INTO V_BIN
	VALUES (1564,
	1569,
	1568,
	'+');
INSERT INTO V_VAL
	VALUES (1569,
	0,
	0,
	9,
	42,
	56,
	0,
	0,
	0,
	0,
	186,
	1509);
INSERT INTO V_PVL
	VALUES (1569,
	0,
	0,
	1503,
	0);
INSERT INTO ACT_BLK
	VALUES (1512,
	0,
	0,
	0,
	'',
	'',
	'',
	12,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1570,
	1512,
	0,
	12,
	4,
	'Divert Sheet::UpdatePosition line: 12');
INSERT INTO ACT_AI
	VALUES (1570,
	1571,
	1572,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1573,
	1,
	0,
	12,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	1512);
INSERT INTO V_IRF
	VALUES (1573,
	1524);
INSERT INTO V_VAL
	VALUES (1572,
	1,
	0,
	12,
	9,
	16,
	0,
	0,
	0,
	0,
	186,
	1512);
INSERT INTO V_AVL
	VALUES (1572,
	1573,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1574,
	0,
	0,
	12,
	20,
	23,
	0,
	0,
	0,
	0,
	34,
	1512);
INSERT INTO V_IRF
	VALUES (1574,
	1524);
INSERT INTO V_VAL
	VALUES (1575,
	0,
	0,
	12,
	25,
	32,
	0,
	0,
	0,
	0,
	186,
	1512);
INSERT INTO V_AVL
	VALUES (1575,
	1574,
	1268,
	1526);
INSERT INTO V_VAL
	VALUES (1571,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1512);
INSERT INTO V_BIN
	VALUES (1571,
	1576,
	1575,
	'+');
INSERT INTO V_VAL
	VALUES (1576,
	0,
	0,
	12,
	42,
	58,
	0,
	0,
	0,
	0,
	186,
	1512);
INSERT INTO V_PVL
	VALUES (1576,
	0,
	0,
	1504,
	0);
INSERT INTO ACT_BLK
	VALUES (1519,
	1,
	0,
	0,
	'',
	'',
	'',
	33,
	4,
	24,
	51,
	0,
	0,
	32,
	39,
	0,
	0,
	25,
	30,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1577,
	1519,
	1578,
	24,
	4,
	'Divert Sheet::UpdatePosition line: 24');
INSERT INTO ACT_SEL
	VALUES (1577,
	1579,
	1,
	'one',
	1580);
INSERT INTO ACT_SR
	VALUES (1577);
INSERT INTO ACT_LNK
	VALUES (1581,
	'',
	1577,
	1267,
	0,
	2,
	624,
	24,
	51,
	24,
	56,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1578,
	1519,
	1582,
	25,
	4,
	'Divert Sheet::UpdatePosition line: 25');
INSERT INTO ACT_IF
	VALUES (1578,
	1583,
	1584,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1585,
	1519,
	0,
	27,
	4,
	'Divert Sheet::UpdatePosition line: 27');
INSERT INTO ACT_E
	VALUES (1585,
	1586,
	1578);
INSERT INTO ACT_SMT
	VALUES (1582,
	1519,
	1587,
	32,
	4,
	'Divert Sheet::UpdatePosition line: 32');
INSERT INTO ACT_URU
	VALUES (1582,
	1579,
	1524,
	1520,
	'',
	1267,
	32,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1587,
	1519,
	0,
	33,
	4,
	'Divert Sheet::UpdatePosition line: 33');
INSERT INTO ACT_DEL
	VALUES (1587,
	1520);
INSERT INTO V_VAL
	VALUES (1580,
	0,
	0,
	24,
	35,
	48,
	0,
	0,
	0,
	0,
	34,
	1519);
INSERT INTO V_IRF
	VALUES (1580,
	1520);
INSERT INTO V_VAL
	VALUES (1588,
	0,
	0,
	25,
	7,
	20,
	0,
	0,
	0,
	0,
	34,
	1519);
INSERT INTO V_IRF
	VALUES (1588,
	1520);
INSERT INTO V_VAL
	VALUES (1589,
	0,
	0,
	25,
	22,
	25,
	0,
	0,
	0,
	0,
	1250,
	1519);
INSERT INTO V_AVL
	VALUES (1589,
	1588,
	1272,
	1590);
INSERT INTO V_VAL
	VALUES (1584,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1519);
INSERT INTO V_BIN
	VALUES (1584,
	1591,
	1589,
	'==');
INSERT INTO V_VAL
	VALUES (1591,
	0,
	0,
	25,
	51,
	65,
	0,
	0,
	0,
	0,
	1250,
	1519);
INSERT INTO V_LEN
	VALUES (1591,
	1251,
	25,
	30);
INSERT INTO V_VAR
	VALUES (1579,
	1519,
	'actuator',
	1,
	34);
INSERT INTO V_INT
	VALUES (1579,
	0,
	624);
INSERT INTO ACT_BLK
	VALUES (1583,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	26,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1592,
	1583,
	0,
	26,
	7,
	'Divert Sheet::UpdatePosition line: 26');
INSERT INTO E_ESS
	VALUES (1592,
	1,
	0,
	26,
	16,
	26,
	22,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1592);
INSERT INTO E_GSME
	VALUES (1592,
	567);
INSERT INTO E_GEN
	VALUES (1592,
	1579);
INSERT INTO ACT_BLK
	VALUES (1586,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	28,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1593,
	1586,
	0,
	28,
	7,
	'Divert Sheet::UpdatePosition line: 28');
INSERT INTO E_ESS
	VALUES (1593,
	1,
	0,
	28,
	16,
	28,
	22,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1593);
INSERT INTO E_GSME
	VALUES (1593,
	1352);
INSERT INTO E_GEN
	VALUES (1593,
	1579);
INSERT INTO ACT_BLK
	VALUES (1521,
	1,
	0,
	0,
	'',
	'',
	'',
	41,
	4,
	40,
	47,
	0,
	0,
	40,
	53,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1594,
	1521,
	1595,
	40,
	4,
	'Divert Sheet::UpdatePosition line: 40');
INSERT INTO ACT_SEL
	VALUES (1594,
	1520,
	0,
	'any',
	1596);
INSERT INTO ACT_SR
	VALUES (1594);
INSERT INTO ACT_LNK
	VALUES (1597,
	'',
	1594,
	1267,
	0,
	3,
	1272,
	40,
	47,
	40,
	53,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1595,
	1521,
	0,
	41,
	4,
	'Divert Sheet::UpdatePosition line: 41');
INSERT INTO ACT_IF
	VALUES (1595,
	1598,
	1599,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1596,
	0,
	0,
	40,
	41,
	44,
	0,
	0,
	0,
	0,
	34,
	1521);
INSERT INTO V_IRF
	VALUES (1596,
	1524);
INSERT INTO V_VAL
	VALUES (1600,
	0,
	0,
	41,
	13,
	26,
	0,
	0,
	0,
	0,
	34,
	1521);
INSERT INTO V_IRF
	VALUES (1600,
	1520);
INSERT INTO V_VAL
	VALUES (1599,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1521);
INSERT INTO V_UNY
	VALUES (1599,
	1600,
	'empty');
INSERT INTO ACT_BLK
	VALUES (1598,
	1,
	0,
	0,
	'',
	'',
	'',
	46,
	7,
	43,
	49,
	0,
	0,
	43,
	57,
	0,
	0,
	0,
	0,
	0,
	1505,
	0);
INSERT INTO ACT_SMT
	VALUES (1601,
	1598,
	1602,
	43,
	7,
	'Divert Sheet::UpdatePosition line: 43');
INSERT INTO ACT_SEL
	VALUES (1601,
	1603,
	1,
	'one',
	1604);
INSERT INTO ACT_SR
	VALUES (1601);
INSERT INTO ACT_LNK
	VALUES (1605,
	'',
	1601,
	1282,
	0,
	2,
	698,
	43,
	49,
	43,
	57,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1602,
	1598,
	1606,
	44,
	7,
	'Divert Sheet::UpdatePosition line: 44');
INSERT INTO ACT_TFM
	VALUES (1602,
	1373,
	1603,
	44,
	21,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1606,
	1598,
	0,
	46,
	7,
	'Divert Sheet::UpdatePosition line: 46');
INSERT INTO ACT_DEL
	VALUES (1606,
	1524);
INSERT INTO V_VAL
	VALUES (1604,
	0,
	0,
	43,
	43,
	46,
	0,
	0,
	0,
	0,
	34,
	1598);
INSERT INTO V_IRF
	VALUES (1604,
	1524);
INSERT INTO V_VAR
	VALUES (1603,
	1598,
	'divert_packet',
	1,
	34);
INSERT INTO V_INT
	VALUES (1603,
	0,
	698);
INSERT INTO O_NBATTR
	VALUES (1526,
	1268);
INSERT INTO O_BATTR
	VALUES (1526,
	1268);
INSERT INTO O_ATTR
	VALUES (1526,
	1268,
	1270,
	'position',
	'Units = mm
The position of a divert sheet is defined as the distance between the leading
edge of the sheet and the knife cut line.  If the leading edge of the sheet has
not yet reached the knife cut line the distance will be negative.',
	'',
	'position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1270,
	1268);
INSERT INTO O_BATTR
	VALUES (1270,
	1268);
INSERT INTO O_ATTR
	VALUES (1270,
	1268,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1530,
	1268);
INSERT INTO O_BATTR
	VALUES (1530,
	1268);
INSERT INTO O_ATTR
	VALUES (1530,
	1268,
	1526,
	'length',
	'',
	'',
	'length',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1268);
INSERT INTO O_OIDA
	VALUES (1270,
	1268,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	1268);
INSERT INTO O_ID
	VALUES (2,
	1268);
INSERT INTO PE_PE
	VALUES (1276,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1276,
	'Divert Stack',
	5,
	'DVRTSTK',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1607,
	1276);
INSERT INTO O_BATTR
	VALUES (1607,
	1276);
INSERT INTO O_ATTR
	VALUES (1607,
	1276,
	0,
	'stack_type',
	'',
	'',
	'stack_type',
	0,
	272,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1608,
	1276);
INSERT INTO O_BATTR
	VALUES (1608,
	1276);
INSERT INTO O_ATTR
	VALUES (1608,
	1276,
	1607,
	'number_of_sheets',
	'',
	'',
	'number_of_sheets',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1609,
	1276);
INSERT INTO O_BATTR
	VALUES (1609,
	1276);
INSERT INTO O_ATTR
	VALUES (1609,
	1276,
	1608,
	'stack_thickness',
	'',
	'',
	'stack_thickness',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1276);
INSERT INTO O_ID
	VALUES (1,
	1276);
INSERT INTO O_ID
	VALUES (2,
	1276);
INSERT INTO PE_PE
	VALUES (630,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (630,
	'Diverter Bay',
	6,
	'DVRTBAY',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (632,
	630);
INSERT INTO O_BATTR
	VALUES (632,
	630);
INSERT INTO O_ATTR
	VALUES (632,
	630,
	634,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (634,
	630);
INSERT INTO O_BATTR
	VALUES (634,
	630);
INSERT INTO O_ATTR
	VALUES (634,
	630,
	0,
	'sheet_settling_timer',
	'',
	'',
	'sheet_settling_timer',
	0,
	230,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	630);
INSERT INTO O_ID
	VALUES (1,
	630);
INSERT INTO O_ID
	VALUES (2,
	630);
INSERT INTO SM_ISM
	VALUES (1610,
	630);
INSERT INTO SM_SM
	VALUES (1610,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1610);
INSERT INTO SM_EVTDI
	VALUES (1611,
	1610,
	'sheet_caliper',
	'',
	186,
	'',
	1383,
	0);
INSERT INTO SM_LEVT
	VALUES (1403,
	1610,
	0);
INSERT INTO SM_SEVT
	VALUES (1403,
	1610,
	0);
INSERT INTO SM_EVT
	VALUES (1403,
	1610,
	0,
	2,
	'divert_packet_received',
	0,
	'',
	'DVRTBAY2',
	'');
INSERT INTO SM_LEVT
	VALUES (1383,
	1610,
	0);
INSERT INTO SM_SEVT
	VALUES (1383,
	1610,
	0);
INSERT INTO SM_EVT
	VALUES (1383,
	1610,
	0,
	1,
	'receive_sheet',
	0,
	'',
	'DVRTBAY1',
	'');
INSERT INTO SM_LEVT
	VALUES (1612,
	1610,
	0);
INSERT INTO SM_SEVT
	VALUES (1612,
	1610,
	0);
INSERT INTO SM_EVT
	VALUES (1612,
	1610,
	0,
	3,
	'start_discharge',
	0,
	'',
	'DVRTBAY3',
	'');
INSERT INTO SM_LEVT
	VALUES (1613,
	1610,
	0);
INSERT INTO SM_SEVT
	VALUES (1613,
	1610,
	0);
INSERT INTO SM_EVT
	VALUES (1613,
	1610,
	0,
	4,
	'discharge_complete',
	0,
	'',
	'DVRTBAY4',
	'');
INSERT INTO SM_STATE
	VALUES (1614,
	1610,
	0,
	'Empty',
	1,
	0);
INSERT INTO SM_CH
	VALUES (1614,
	1403,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1614,
	1403,
	1610,
	0);
INSERT INTO SM_SEME
	VALUES (1614,
	1383,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1614,
	1612,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1614,
	1612,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1614,
	1613,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1614,
	1613,
	1610,
	0);
INSERT INTO SM_MOAH
	VALUES (1615,
	1610,
	1614);
INSERT INTO SM_AH
	VALUES (1615,
	1610);
INSERT INTO SM_ACT
	VALUES (1615,
	1610,
	1,
	'// The stack has been diverted, remove it!
select one divert_stack related by self->DVRTSTK[R6];
if not_empty divert_stack;
   unrelate self from divert_stack across R6;
   delete object instance divert_stack;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1616,
	1610,
	1615);
INSERT INTO ACT_ACT
	VALUES (1616,
	'state',
	0,
	1617,
	0,
	0,
	'Diverter Bay::Empty',
	0);
INSERT INTO ACT_BLK
	VALUES (1617,
	1,
	0,
	0,
	'',
	'',
	'',
	3,
	1,
	2,
	42,
	0,
	0,
	2,
	50,
	0,
	0,
	0,
	0,
	0,
	1616,
	0);
INSERT INTO ACT_SMT
	VALUES (1618,
	1617,
	1619,
	2,
	1,
	'Diverter Bay::Empty line: 2');
INSERT INTO ACT_SEL
	VALUES (1618,
	1620,
	1,
	'one',
	1621);
INSERT INTO ACT_SR
	VALUES (1618);
INSERT INTO ACT_LNK
	VALUES (1622,
	'',
	1618,
	1274,
	0,
	2,
	1276,
	2,
	42,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1619,
	1617,
	0,
	3,
	1,
	'Diverter Bay::Empty line: 3');
INSERT INTO ACT_IF
	VALUES (1619,
	1623,
	1624,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1621,
	0,
	0,
	2,
	36,
	39,
	0,
	0,
	0,
	0,
	34,
	1617);
INSERT INTO V_IRF
	VALUES (1621,
	1625);
INSERT INTO V_VAL
	VALUES (1626,
	0,
	0,
	3,
	14,
	25,
	0,
	0,
	0,
	0,
	34,
	1617);
INSERT INTO V_IRF
	VALUES (1626,
	1620);
INSERT INTO V_VAL
	VALUES (1624,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1617);
INSERT INTO V_UNY
	VALUES (1624,
	1626,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1620,
	1617,
	'divert_stack',
	1,
	34);
INSERT INTO V_INT
	VALUES (1620,
	0,
	1276);
INSERT INTO V_VAR
	VALUES (1625,
	1617,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1625,
	0,
	630);
INSERT INTO ACT_BLK
	VALUES (1623,
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	4,
	0,
	0,
	0,
	0,
	4,
	43,
	0,
	0,
	0,
	0,
	0,
	1616,
	0);
INSERT INTO ACT_SMT
	VALUES (1627,
	1623,
	1628,
	4,
	4,
	'Diverter Bay::Empty line: 4');
INSERT INTO ACT_UNR
	VALUES (1627,
	1625,
	1620,
	'',
	1274,
	4,
	43,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1628,
	1623,
	0,
	5,
	4,
	'Diverter Bay::Empty line: 5');
INSERT INTO ACT_DEL
	VALUES (1628,
	1620);
INSERT INTO SM_STATE
	VALUES (1629,
	1610,
	0,
	'WaitForDischargeWindow',
	3,
	0);
INSERT INTO SM_CH
	VALUES (1629,
	1403,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1629,
	1403,
	1610,
	0);
INSERT INTO SM_SEME
	VALUES (1629,
	1383,
	1610,
	0);
INSERT INTO SM_SEME
	VALUES (1629,
	1612,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1629,
	1613,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1629,
	1613,
	1610,
	0);
INSERT INTO SM_MOAH
	VALUES (1630,
	1610,
	1629);
INSERT INTO SM_AH
	VALUES (1630,
	1610);
INSERT INTO SM_ACT
	VALUES (1630,
	1610,
	1,
	'// If there is another divert packet, determine if there is enough time to 
//    discharge this stack before the next sheets arrive.
// 



// Assuming enough time for now.  Initiate the discharge in 2 seconds to allow
//    the sheets time to settle.
// 

create event instance timer_expired of DVRTBAY3:start_discharge() to self;
self.sheet_settling_timer = 
            TIM::timer_start(microseconds: 2 * 1000 * 1000, 
                               event_inst: timer_expired);
',
	'');
INSERT INTO ACT_SAB
	VALUES (1631,
	1610,
	1630);
INSERT INTO ACT_ACT
	VALUES (1631,
	'state',
	0,
	1632,
	0,
	0,
	'Diverter Bay::WaitForDischargeWindow',
	0);
INSERT INTO ACT_BLK
	VALUES (1632,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	10,
	1,
	11,
	13,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1631,
	0);
INSERT INTO ACT_SMT
	VALUES (1633,
	1632,
	1634,
	9,
	1,
	'Diverter Bay::WaitForDischargeWindow line: 9');
INSERT INTO E_ESS
	VALUES (1633,
	1,
	0,
	9,
	40,
	9,
	49,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1633,
	1,
	1635);
INSERT INTO E_CSME
	VALUES (1633,
	1612);
INSERT INTO E_CEI
	VALUES (1633,
	1636);
INSERT INTO ACT_SMT
	VALUES (1634,
	1632,
	0,
	10,
	1,
	'Diverter Bay::WaitForDischargeWindow line: 10');
INSERT INTO ACT_AI
	VALUES (1634,
	1637,
	1638,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1639,
	1,
	0,
	10,
	1,
	4,
	0,
	0,
	0,
	0,
	34,
	1632);
INSERT INTO V_IRF
	VALUES (1639,
	1636);
INSERT INTO V_VAL
	VALUES (1638,
	1,
	0,
	10,
	6,
	25,
	0,
	0,
	0,
	0,
	230,
	1632);
INSERT INTO V_AVL
	VALUES (1638,
	1639,
	630,
	634);
INSERT INTO V_VAL
	VALUES (1637,
	0,
	0,
	11,
	18,
	-1,
	11,
	30,
	12,
	32,
	230,
	1632);
INSERT INTO V_BRV
	VALUES (1637,
	1640,
	1,
	11,
	13);
INSERT INTO V_VAL
	VALUES (1641,
	0,
	0,
	11,
	44,
	44,
	0,
	0,
	0,
	0,
	186,
	1632);
INSERT INTO V_LIN
	VALUES (1641,
	'2');
INSERT INTO V_VAL
	VALUES (1642,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1632);
INSERT INTO V_BIN
	VALUES (1642,
	1643,
	1641,
	'*');
INSERT INTO V_VAL
	VALUES (1643,
	0,
	0,
	11,
	48,
	51,
	0,
	0,
	0,
	0,
	186,
	1632);
INSERT INTO V_LIN
	VALUES (1643,
	'1000');
INSERT INTO V_VAL
	VALUES (1644,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1632);
INSERT INTO V_BIN
	VALUES (1644,
	1645,
	1642,
	'*');
INSERT INTO V_PAR
	VALUES (1644,
	0,
	1637,
	'microseconds',
	1646,
	11,
	30);
INSERT INTO V_VAL
	VALUES (1645,
	0,
	0,
	11,
	55,
	58,
	0,
	0,
	0,
	0,
	186,
	1632);
INSERT INTO V_LIN
	VALUES (1645,
	'1000');
INSERT INTO V_VAL
	VALUES (1646,
	0,
	0,
	12,
	44,
	56,
	0,
	0,
	0,
	0,
	233,
	1632);
INSERT INTO V_TVL
	VALUES (1646,
	1635);
INSERT INTO V_PAR
	VALUES (1646,
	0,
	1637,
	'event_inst',
	0,
	12,
	32);
INSERT INTO V_VAR
	VALUES (1635,
	1632,
	'timer_expired',
	1,
	233);
INSERT INTO V_TRN
	VALUES (1635,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1636,
	1632,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1636,
	0,
	630);
INSERT INTO SM_STATE
	VALUES (1647,
	1610,
	0,
	'ReceivingSheets',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1647,
	1403,
	1610,
	0);
INSERT INTO SM_SEME
	VALUES (1647,
	1383,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1647,
	1612,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1647,
	1612,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1647,
	1613,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1647,
	1613,
	1610,
	0);
INSERT INTO SM_MOAH
	VALUES (1648,
	1610,
	1647);
INSERT INTO SM_AH
	VALUES (1648,
	1610);
INSERT INTO SM_ACT
	VALUES (1648,
	1610,
	1,
	'// Receive sheets from the divert packet.
// 


select one divert_stack related by self->DVRTSTK[R6];
if empty divert_stack;
   // divert stack doesn''t exist, create it
   create object instance divert_stack of DVRTSTK;
   relate divert_stack to self across R6;
         
   // Initialize the stacks attributes
   select one divert_packet related by self->DVRTPKT[R4];
   divert_stack.stack_type = divert_packet.type;
   divert_stack.number_of_sheets = 1;
   divert_stack.stack_thickness = rcvd_evt.sheet_caliper;
else;
   // divert stack exists, update attributes
   divert_stack.number_of_sheets = divert_stack.number_of_sheets + 1;
   divert_stack.stack_thickness = divert_stack.stack_thickness + rcvd_evt.sheet_caliper;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1649,
	1610,
	1648);
INSERT INTO ACT_ACT
	VALUES (1649,
	'state',
	0,
	1650,
	0,
	0,
	'Diverter Bay::ReceivingSheets',
	0);
INSERT INTO ACT_BLK
	VALUES (1650,
	1,
	0,
	0,
	'',
	'',
	'',
	15,
	1,
	4,
	42,
	0,
	0,
	4,
	50,
	0,
	0,
	0,
	0,
	0,
	1649,
	0);
INSERT INTO ACT_SMT
	VALUES (1651,
	1650,
	1652,
	4,
	1,
	'Diverter Bay::ReceivingSheets line: 4');
INSERT INTO ACT_SEL
	VALUES (1651,
	1653,
	1,
	'one',
	1654);
INSERT INTO ACT_SR
	VALUES (1651);
INSERT INTO ACT_LNK
	VALUES (1655,
	'',
	1651,
	1274,
	0,
	2,
	1276,
	4,
	42,
	4,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1652,
	1650,
	0,
	5,
	1,
	'Diverter Bay::ReceivingSheets line: 5');
INSERT INTO ACT_IF
	VALUES (1652,
	1656,
	1657,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1658,
	1650,
	0,
	15,
	1,
	'Diverter Bay::ReceivingSheets line: 15');
INSERT INTO ACT_E
	VALUES (1658,
	1659,
	1652);
INSERT INTO V_VAL
	VALUES (1654,
	0,
	0,
	4,
	36,
	39,
	0,
	0,
	0,
	0,
	34,
	1650);
INSERT INTO V_IRF
	VALUES (1654,
	1660);
INSERT INTO V_VAL
	VALUES (1661,
	0,
	0,
	5,
	10,
	21,
	0,
	0,
	0,
	0,
	34,
	1650);
INSERT INTO V_IRF
	VALUES (1661,
	1653);
INSERT INTO V_VAL
	VALUES (1657,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1650);
INSERT INTO V_UNY
	VALUES (1657,
	1661,
	'empty');
INSERT INTO V_VAR
	VALUES (1653,
	1650,
	'divert_stack',
	1,
	34);
INSERT INTO V_INT
	VALUES (1653,
	0,
	1276);
INSERT INTO V_VAR
	VALUES (1660,
	1650,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1660,
	0,
	630);
INSERT INTO ACT_BLK
	VALUES (1656,
	1,
	0,
	0,
	'',
	'',
	'',
	14,
	4,
	11,
	46,
	0,
	0,
	11,
	54,
	0,
	0,
	0,
	0,
	0,
	1649,
	0);
INSERT INTO ACT_SMT
	VALUES (1662,
	1656,
	1663,
	7,
	4,
	'Diverter Bay::ReceivingSheets line: 7');
INSERT INTO ACT_CR
	VALUES (1662,
	1653,
	0,
	1276,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (1663,
	1656,
	1664,
	8,
	4,
	'Diverter Bay::ReceivingSheets line: 8');
INSERT INTO ACT_REL
	VALUES (1663,
	1653,
	1660,
	'',
	1274,
	8,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1664,
	1656,
	1665,
	11,
	4,
	'Diverter Bay::ReceivingSheets line: 11');
INSERT INTO ACT_SEL
	VALUES (1664,
	1666,
	1,
	'one',
	1667);
INSERT INTO ACT_SR
	VALUES (1664);
INSERT INTO ACT_LNK
	VALUES (1668,
	'',
	1664,
	717,
	0,
	2,
	698,
	11,
	46,
	11,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1665,
	1656,
	1669,
	12,
	4,
	'Diverter Bay::ReceivingSheets line: 12');
INSERT INTO ACT_AI
	VALUES (1665,
	1670,
	1671,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1669,
	1656,
	1672,
	13,
	4,
	'Diverter Bay::ReceivingSheets line: 13');
INSERT INTO ACT_AI
	VALUES (1669,
	1673,
	1674,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1672,
	1656,
	0,
	14,
	4,
	'Diverter Bay::ReceivingSheets line: 14');
INSERT INTO ACT_AI
	VALUES (1672,
	1675,
	1676,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1667,
	0,
	0,
	11,
	40,
	43,
	0,
	0,
	0,
	0,
	34,
	1656);
INSERT INTO V_IRF
	VALUES (1667,
	1660);
INSERT INTO V_VAL
	VALUES (1677,
	1,
	0,
	12,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1656);
INSERT INTO V_IRF
	VALUES (1677,
	1653);
INSERT INTO V_VAL
	VALUES (1671,
	1,
	0,
	12,
	17,
	26,
	0,
	0,
	0,
	0,
	272,
	1656);
INSERT INTO V_AVL
	VALUES (1671,
	1677,
	1276,
	1607);
INSERT INTO V_VAL
	VALUES (1678,
	0,
	0,
	12,
	30,
	42,
	0,
	0,
	0,
	0,
	34,
	1656);
INSERT INTO V_IRF
	VALUES (1678,
	1666);
INSERT INTO V_VAL
	VALUES (1670,
	0,
	0,
	12,
	44,
	47,
	0,
	0,
	0,
	0,
	272,
	1656);
INSERT INTO V_AVL
	VALUES (1670,
	1678,
	698,
	721);
INSERT INTO V_VAL
	VALUES (1679,
	1,
	0,
	13,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1656);
INSERT INTO V_IRF
	VALUES (1679,
	1653);
INSERT INTO V_VAL
	VALUES (1674,
	1,
	0,
	13,
	17,
	32,
	0,
	0,
	0,
	0,
	186,
	1656);
INSERT INTO V_AVL
	VALUES (1674,
	1679,
	1276,
	1608);
INSERT INTO V_VAL
	VALUES (1673,
	0,
	0,
	13,
	36,
	36,
	0,
	0,
	0,
	0,
	186,
	1656);
INSERT INTO V_LIN
	VALUES (1673,
	'1');
INSERT INTO V_VAL
	VALUES (1680,
	1,
	0,
	14,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1656);
INSERT INTO V_IRF
	VALUES (1680,
	1653);
INSERT INTO V_VAL
	VALUES (1676,
	1,
	0,
	14,
	17,
	31,
	0,
	0,
	0,
	0,
	186,
	1656);
INSERT INTO V_AVL
	VALUES (1676,
	1680,
	1276,
	1609);
INSERT INTO V_VAL
	VALUES (1675,
	0,
	0,
	14,
	44,
	56,
	0,
	0,
	0,
	0,
	186,
	1656);
INSERT INTO V_EDV
	VALUES (1675);
INSERT INTO V_EPR
	VALUES (1675,
	1610,
	1611,
	0);
INSERT INTO V_EPR
	VALUES (1675,
	1610,
	1611,
	0);
INSERT INTO V_EPR
	VALUES (1675,
	1610,
	1611,
	0);
INSERT INTO V_VAR
	VALUES (1666,
	1656,
	'divert_packet',
	1,
	34);
INSERT INTO V_INT
	VALUES (1666,
	0,
	698);
INSERT INTO ACT_BLK
	VALUES (1659,
	0,
	0,
	0,
	'',
	'',
	'',
	18,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1649,
	0);
INSERT INTO ACT_SMT
	VALUES (1681,
	1659,
	1682,
	17,
	4,
	'Diverter Bay::ReceivingSheets line: 17');
INSERT INTO ACT_AI
	VALUES (1681,
	1683,
	1684,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1682,
	1659,
	0,
	18,
	4,
	'Diverter Bay::ReceivingSheets line: 18');
INSERT INTO ACT_AI
	VALUES (1682,
	1685,
	1686,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1687,
	1,
	0,
	17,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1659);
INSERT INTO V_IRF
	VALUES (1687,
	1653);
INSERT INTO V_VAL
	VALUES (1684,
	1,
	0,
	17,
	17,
	32,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_AVL
	VALUES (1684,
	1687,
	1276,
	1608);
INSERT INTO V_VAL
	VALUES (1688,
	0,
	0,
	17,
	36,
	47,
	0,
	0,
	0,
	0,
	34,
	1659);
INSERT INTO V_IRF
	VALUES (1688,
	1653);
INSERT INTO V_VAL
	VALUES (1689,
	0,
	0,
	17,
	49,
	64,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_AVL
	VALUES (1689,
	1688,
	1276,
	1608);
INSERT INTO V_VAL
	VALUES (1683,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_BIN
	VALUES (1683,
	1690,
	1689,
	'+');
INSERT INTO V_VAL
	VALUES (1690,
	0,
	0,
	17,
	68,
	68,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_LIN
	VALUES (1690,
	'1');
INSERT INTO V_VAL
	VALUES (1691,
	1,
	0,
	18,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1659);
INSERT INTO V_IRF
	VALUES (1691,
	1653);
INSERT INTO V_VAL
	VALUES (1686,
	1,
	0,
	18,
	17,
	31,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_AVL
	VALUES (1686,
	1691,
	1276,
	1609);
INSERT INTO V_VAL
	VALUES (1692,
	0,
	0,
	18,
	35,
	46,
	0,
	0,
	0,
	0,
	34,
	1659);
INSERT INTO V_IRF
	VALUES (1692,
	1653);
INSERT INTO V_VAL
	VALUES (1693,
	0,
	0,
	18,
	48,
	62,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_AVL
	VALUES (1693,
	1692,
	1276,
	1609);
INSERT INTO V_VAL
	VALUES (1685,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_BIN
	VALUES (1685,
	1694,
	1693,
	'+');
INSERT INTO V_VAL
	VALUES (1694,
	0,
	0,
	18,
	75,
	87,
	0,
	0,
	0,
	0,
	186,
	1659);
INSERT INTO V_EDV
	VALUES (1694);
INSERT INTO V_EPR
	VALUES (1694,
	1610,
	1611,
	0);
INSERT INTO V_EPR
	VALUES (1694,
	1610,
	1611,
	0);
INSERT INTO V_EPR
	VALUES (1694,
	1610,
	1611,
	0);
INSERT INTO SM_STATE
	VALUES (1695,
	1610,
	0,
	'Discharging',
	4,
	0);
INSERT INTO SM_CH
	VALUES (1695,
	1403,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1695,
	1403,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1695,
	1383,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1695,
	1383,
	1610,
	0);
INSERT INTO SM_CH
	VALUES (1695,
	1612,
	1610,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1695,
	1612,
	1610,
	0);
INSERT INTO SM_SEME
	VALUES (1695,
	1613,
	1610,
	0);
INSERT INTO SM_MOAH
	VALUES (1696,
	1610,
	1695);
INSERT INTO SM_AH
	VALUES (1696,
	1610);
INSERT INTO SM_ACT
	VALUES (1696,
	1610,
	1,
	'// Instruct the Cross Transfer Conveyor to run this stack out
select one divert_stack related by self->DVRTSTK[R6];

discharge_dir = Machine_Side::Operator;
discharge_alg = Divert_Conv_Discharge_Alg::Dist_x1_Rollout;
if divert_stack.stack_type == Divert_Packet::Scrap;
   discharge_dir = Machine_Side::Drive;
   discharge_alg = Divert_Conv_Discharge_Alg::Dist_x2_Hesitating_Rollout;
end if;

select one cross_transfer_conveyor related by self->XTFRCNVR[R7];
generate XTFRCNVR6:discharge(direction: discharge_dir, control_alg: discharge_alg) to cross_transfer_conveyor;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1697,
	1610,
	1696);
INSERT INTO ACT_ACT
	VALUES (1697,
	'state',
	0,
	1698,
	0,
	0,
	'Diverter Bay::Discharging',
	0);
INSERT INTO ACT_BLK
	VALUES (1698,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'direction',
	'control_alg',
	12,
	1,
	11,
	53,
	0,
	0,
	11,
	62,
	0,
	0,
	6,
	31,
	0,
	1697,
	0);
INSERT INTO ACT_SMT
	VALUES (1699,
	1698,
	1700,
	2,
	1,
	'Diverter Bay::Discharging line: 2');
INSERT INTO ACT_SEL
	VALUES (1699,
	1701,
	1,
	'one',
	1702);
INSERT INTO ACT_SR
	VALUES (1699);
INSERT INTO ACT_LNK
	VALUES (1703,
	'',
	1699,
	1274,
	0,
	2,
	1276,
	2,
	42,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1700,
	1698,
	1704,
	4,
	1,
	'Diverter Bay::Discharging line: 4');
INSERT INTO ACT_AI
	VALUES (1700,
	1705,
	1706,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1704,
	1698,
	1707,
	5,
	1,
	'Diverter Bay::Discharging line: 5');
INSERT INTO ACT_AI
	VALUES (1704,
	1708,
	1709,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1707,
	1698,
	1710,
	6,
	1,
	'Diverter Bay::Discharging line: 6');
INSERT INTO ACT_IF
	VALUES (1707,
	1711,
	1712,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1710,
	1698,
	1713,
	11,
	1,
	'Diverter Bay::Discharging line: 11');
INSERT INTO ACT_SEL
	VALUES (1710,
	1714,
	1,
	'one',
	1715);
INSERT INTO ACT_SR
	VALUES (1710);
INSERT INTO ACT_LNK
	VALUES (1716,
	'',
	1710,
	1285,
	0,
	2,
	543,
	11,
	53,
	11,
	62,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1713,
	1698,
	0,
	12,
	1,
	'Diverter Bay::Discharging line: 12');
INSERT INTO E_ESS
	VALUES (1713,
	1,
	0,
	12,
	10,
	12,
	20,
	11,
	53,
	12,
	30,
	12,
	56);
INSERT INTO V_PAR
	VALUES (1717,
	1713,
	0,
	'control_alg',
	0,
	12,
	56);
INSERT INTO V_PAR
	VALUES (1718,
	1713,
	0,
	'direction',
	1717,
	12,
	30);
INSERT INTO E_GES
	VALUES (1713);
INSERT INTO E_GSME
	VALUES (1713,
	572);
INSERT INTO E_GEN
	VALUES (1713,
	1714);
INSERT INTO V_VAL
	VALUES (1702,
	0,
	0,
	2,
	36,
	39,
	0,
	0,
	0,
	0,
	34,
	1698);
INSERT INTO V_IRF
	VALUES (1702,
	1719);
INSERT INTO V_VAL
	VALUES (1706,
	1,
	1,
	4,
	1,
	13,
	0,
	0,
	0,
	0,
	778,
	1698);
INSERT INTO V_TVL
	VALUES (1706,
	1720);
INSERT INTO V_VAL
	VALUES (1705,
	0,
	0,
	4,
	31,
	38,
	0,
	0,
	0,
	0,
	778,
	1698);
INSERT INTO V_LEN
	VALUES (1705,
	779,
	4,
	17);
INSERT INTO V_VAL
	VALUES (1709,
	1,
	1,
	5,
	1,
	13,
	0,
	0,
	0,
	0,
	908,
	1698);
INSERT INTO V_TVL
	VALUES (1709,
	1721);
INSERT INTO V_VAL
	VALUES (1708,
	0,
	0,
	5,
	44,
	58,
	0,
	0,
	0,
	0,
	908,
	1698);
INSERT INTO V_LEN
	VALUES (1708,
	956,
	5,
	17);
INSERT INTO V_VAL
	VALUES (1722,
	0,
	0,
	6,
	4,
	15,
	0,
	0,
	0,
	0,
	34,
	1698);
INSERT INTO V_IRF
	VALUES (1722,
	1701);
INSERT INTO V_VAL
	VALUES (1723,
	0,
	0,
	6,
	17,
	26,
	0,
	0,
	0,
	0,
	272,
	1698);
INSERT INTO V_AVL
	VALUES (1723,
	1722,
	1276,
	1607);
INSERT INTO V_VAL
	VALUES (1712,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	1698);
INSERT INTO V_BIN
	VALUES (1712,
	1724,
	1723,
	'==');
INSERT INTO V_VAL
	VALUES (1724,
	0,
	0,
	6,
	46,
	50,
	0,
	0,
	0,
	0,
	272,
	1698);
INSERT INTO V_LEN
	VALUES (1724,
	1725,
	6,
	31);
INSERT INTO V_VAL
	VALUES (1715,
	0,
	0,
	11,
	47,
	50,
	0,
	0,
	0,
	0,
	34,
	1698);
INSERT INTO V_IRF
	VALUES (1715,
	1719);
INSERT INTO V_VAL
	VALUES (1718,
	0,
	0,
	12,
	41,
	53,
	0,
	0,
	0,
	0,
	778,
	1698);
INSERT INTO V_TVL
	VALUES (1718,
	1720);
INSERT INTO V_VAL
	VALUES (1717,
	0,
	0,
	12,
	69,
	81,
	0,
	0,
	0,
	0,
	908,
	1698);
INSERT INTO V_TVL
	VALUES (1717,
	1721);
INSERT INTO V_VAR
	VALUES (1701,
	1698,
	'divert_stack',
	1,
	34);
INSERT INTO V_INT
	VALUES (1701,
	0,
	1276);
INSERT INTO V_VAR
	VALUES (1719,
	1698,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (1719,
	0,
	630);
INSERT INTO V_VAR
	VALUES (1720,
	1698,
	'discharge_dir',
	1,
	778);
INSERT INTO V_TRN
	VALUES (1720,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1721,
	1698,
	'discharge_alg',
	1,
	908);
INSERT INTO V_TRN
	VALUES (1721,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1714,
	1698,
	'cross_transfer_conveyor',
	1,
	34);
INSERT INTO V_INT
	VALUES (1714,
	0,
	543);
INSERT INTO ACT_BLK
	VALUES (1711,
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	8,
	20,
	0,
	1697,
	0);
INSERT INTO ACT_SMT
	VALUES (1726,
	1711,
	1727,
	7,
	4,
	'Diverter Bay::Discharging line: 7');
INSERT INTO ACT_AI
	VALUES (1726,
	1728,
	1729,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1727,
	1711,
	0,
	8,
	4,
	'Diverter Bay::Discharging line: 8');
INSERT INTO ACT_AI
	VALUES (1727,
	1730,
	1731,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1729,
	1,
	0,
	7,
	4,
	16,
	0,
	0,
	0,
	0,
	778,
	1711);
INSERT INTO V_TVL
	VALUES (1729,
	1720);
INSERT INTO V_VAL
	VALUES (1728,
	0,
	0,
	7,
	34,
	38,
	0,
	0,
	0,
	0,
	778,
	1711);
INSERT INTO V_LEN
	VALUES (1728,
	782,
	7,
	20);
INSERT INTO V_VAL
	VALUES (1731,
	1,
	0,
	8,
	4,
	16,
	0,
	0,
	0,
	0,
	908,
	1711);
INSERT INTO V_TVL
	VALUES (1731,
	1721);
INSERT INTO V_VAL
	VALUES (1730,
	0,
	0,
	8,
	47,
	72,
	0,
	0,
	0,
	0,
	908,
	1711);
INSERT INTO V_LEN
	VALUES (1730,
	959,
	8,
	20);
INSERT INTO SM_NSTXN
	VALUES (1732,
	1610,
	1647,
	1403,
	0);
INSERT INTO SM_TAH
	VALUES (1733,
	1610,
	1732);
INSERT INTO SM_AH
	VALUES (1733,
	1610);
INSERT INTO SM_ACT
	VALUES (1733,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1734,
	1610,
	1733);
INSERT INTO ACT_ACT
	VALUES (1734,
	'transition',
	0,
	1735,
	0,
	0,
	'DVRTBAY2: divert_packet_received',
	0);
INSERT INTO ACT_BLK
	VALUES (1735,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1734,
	0);
INSERT INTO SM_TXN
	VALUES (1732,
	1610,
	1629,
	0);
INSERT INTO SM_NSTXN
	VALUES (1736,
	1610,
	1647,
	1383,
	0);
INSERT INTO SM_TAH
	VALUES (1737,
	1610,
	1736);
INSERT INTO SM_AH
	VALUES (1737,
	1610);
INSERT INTO SM_ACT
	VALUES (1737,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1738,
	1610,
	1737);
INSERT INTO ACT_ACT
	VALUES (1738,
	'transition',
	0,
	1739,
	0,
	0,
	'DVRTBAY1: receive_sheet',
	0);
INSERT INTO ACT_BLK
	VALUES (1739,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1738,
	0);
INSERT INTO SM_TXN
	VALUES (1736,
	1610,
	1647,
	0);
INSERT INTO SM_NSTXN
	VALUES (1740,
	1610,
	1614,
	1383,
	0);
INSERT INTO SM_TAH
	VALUES (1741,
	1610,
	1740);
INSERT INTO SM_AH
	VALUES (1741,
	1610);
INSERT INTO SM_ACT
	VALUES (1741,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1742,
	1610,
	1741);
INSERT INTO ACT_ACT
	VALUES (1742,
	'transition',
	0,
	1743,
	0,
	0,
	'DVRTBAY1: receive_sheet',
	0);
INSERT INTO ACT_BLK
	VALUES (1743,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1742,
	0);
INSERT INTO SM_TXN
	VALUES (1740,
	1610,
	1647,
	0);
INSERT INTO SM_NSTXN
	VALUES (1744,
	1610,
	1629,
	1383,
	0);
INSERT INTO SM_TAH
	VALUES (1745,
	1610,
	1744);
INSERT INTO SM_AH
	VALUES (1745,
	1610);
INSERT INTO SM_ACT
	VALUES (1745,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1746,
	1610,
	1745);
INSERT INTO ACT_ACT
	VALUES (1746,
	'transition',
	0,
	1747,
	0,
	0,
	'DVRTBAY1: receive_sheet',
	0);
INSERT INTO ACT_BLK
	VALUES (1747,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1746,
	0);
INSERT INTO SM_TXN
	VALUES (1744,
	1610,
	1647,
	0);
INSERT INTO SM_NSTXN
	VALUES (1748,
	1610,
	1629,
	1612,
	0);
INSERT INTO SM_TAH
	VALUES (1749,
	1610,
	1748);
INSERT INTO SM_AH
	VALUES (1749,
	1610);
INSERT INTO SM_ACT
	VALUES (1749,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1750,
	1610,
	1749);
INSERT INTO ACT_ACT
	VALUES (1750,
	'transition',
	0,
	1751,
	0,
	0,
	'DVRTBAY3: start_discharge',
	0);
INSERT INTO ACT_BLK
	VALUES (1751,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1750,
	0);
INSERT INTO SM_TXN
	VALUES (1748,
	1610,
	1695,
	0);
INSERT INTO SM_NSTXN
	VALUES (1752,
	1610,
	1695,
	1613,
	0);
INSERT INTO SM_TAH
	VALUES (1753,
	1610,
	1752);
INSERT INTO SM_AH
	VALUES (1753,
	1610);
INSERT INTO SM_ACT
	VALUES (1753,
	1610,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1754,
	1610,
	1753);
INSERT INTO ACT_ACT
	VALUES (1754,
	'transition',
	0,
	1755,
	0,
	0,
	'DVRTBAY4: discharge_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (1755,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1754,
	0);
INSERT INTO SM_TXN
	VALUES (1752,
	1610,
	1614,
	0);
INSERT INTO PE_PE
	VALUES (1261,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1261,
	'Diverter Pan',
	9,
	'DVTPAN',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1343,
	1261);
INSERT INTO O_BATTR
	VALUES (1343,
	1261);
INSERT INTO O_ATTR
	VALUES (1343,
	1261,
	0,
	'position',
	'',
	'',
	'position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1756,
	1261);
INSERT INTO O_BATTR
	VALUES (1756,
	1261);
INSERT INTO O_ATTR
	VALUES (1756,
	1261,
	1343,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1261);
INSERT INTO O_ID
	VALUES (1,
	1261);
INSERT INTO O_ID
	VALUES (2,
	1261);
INSERT INTO SM_ISM
	VALUES (1757,
	1261);
INSERT INTO SM_SM
	VALUES (1757,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1757);
INSERT INTO SM_NLEVT
	VALUES (1758,
	1757,
	0,
	1352,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1758,
	1757,
	0);
INSERT INTO SM_EVT
	VALUES (1758,
	1757,
	0,
	2,
	'de_activate',
	0,
	'',
	'ACTR2*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1759,
	1757,
	0,
	567,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1759,
	1757,
	0);
INSERT INTO SM_EVT
	VALUES (1759,
	1757,
	0,
	1,
	'activate',
	0,
	'',
	'ACTR1*',
	'');
INSERT INTO SM_LEVT
	VALUES (1760,
	1757,
	0);
INSERT INTO SM_SEVT
	VALUES (1760,
	1757,
	0);
INSERT INTO SM_EVT
	VALUES (1760,
	1757,
	0,
	3,
	'LowerPan',
	0,
	'',
	'DVTPAN3',
	'');
INSERT INTO SM_STATE
	VALUES (1761,
	1757,
	0,
	'PanDown',
	3,
	0);
INSERT INTO SM_CH
	VALUES (1761,
	1758,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1761,
	1758,
	1757,
	0);
INSERT INTO SM_SEME
	VALUES (1761,
	1759,
	1757,
	0);
INSERT INTO SM_CH
	VALUES (1761,
	1760,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1761,
	1760,
	1757,
	0);
INSERT INTO SM_MOAH
	VALUES (1762,
	1757,
	1761);
INSERT INTO SM_AH
	VALUES (1762,
	1757);
INSERT INTO SM_ACT
	VALUES (1762,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1763,
	1757,
	1762);
INSERT INTO ACT_ACT
	VALUES (1763,
	'state',
	0,
	1764,
	0,
	0,
	'Diverter Pan::PanDown',
	0);
INSERT INTO ACT_BLK
	VALUES (1764,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1763,
	0);
INSERT INTO SM_STATE
	VALUES (1765,
	1757,
	0,
	'PanUp',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1765,
	1758,
	1757,
	0);
INSERT INTO SM_CH
	VALUES (1765,
	1759,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1765,
	1759,
	1757,
	0);
INSERT INTO SM_CH
	VALUES (1765,
	1760,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1765,
	1760,
	1757,
	0);
INSERT INTO SM_MOAH
	VALUES (1766,
	1757,
	1765);
INSERT INTO SM_AH
	VALUES (1766,
	1757);
INSERT INTO SM_ACT
	VALUES (1766,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1767,
	1757,
	1766);
INSERT INTO ACT_ACT
	VALUES (1767,
	'state',
	0,
	1768,
	0,
	0,
	'Diverter Pan::PanUp',
	0);
INSERT INTO ACT_BLK
	VALUES (1768,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1767,
	0);
INSERT INTO SM_STATE
	VALUES (1769,
	1757,
	0,
	'Initial',
	1,
	0);
INSERT INTO SM_CH
	VALUES (1769,
	1758,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1769,
	1758,
	1757,
	0);
INSERT INTO SM_CH
	VALUES (1769,
	1759,
	1757,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1769,
	1759,
	1757,
	0);
INSERT INTO SM_SEME
	VALUES (1769,
	1760,
	1757,
	0);
INSERT INTO SM_MOAH
	VALUES (1770,
	1757,
	1769);
INSERT INTO SM_AH
	VALUES (1770,
	1757);
INSERT INTO SM_ACT
	VALUES (1770,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1771,
	1757,
	1770);
INSERT INTO ACT_ACT
	VALUES (1771,
	'state',
	0,
	1772,
	0,
	0,
	'Diverter Pan::Initial',
	0);
INSERT INTO ACT_BLK
	VALUES (1772,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1771,
	0);
INSERT INTO SM_NSTXN
	VALUES (1773,
	1757,
	1761,
	1759,
	0);
INSERT INTO SM_TAH
	VALUES (1774,
	1757,
	1773);
INSERT INTO SM_AH
	VALUES (1774,
	1757);
INSERT INTO SM_ACT
	VALUES (1774,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1775,
	1757,
	1774);
INSERT INTO ACT_ACT
	VALUES (1775,
	'transition',
	0,
	1776,
	0,
	0,
	'activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1776,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1775,
	0);
INSERT INTO SM_TXN
	VALUES (1773,
	1757,
	1765,
	0);
INSERT INTO SM_NSTXN
	VALUES (1777,
	1757,
	1765,
	1758,
	0);
INSERT INTO SM_TAH
	VALUES (1778,
	1757,
	1777);
INSERT INTO SM_AH
	VALUES (1778,
	1757);
INSERT INTO SM_ACT
	VALUES (1778,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1779,
	1757,
	1778);
INSERT INTO ACT_ACT
	VALUES (1779,
	'transition',
	0,
	1780,
	0,
	0,
	'de_activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1780,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1779,
	0);
INSERT INTO SM_TXN
	VALUES (1777,
	1757,
	1761,
	0);
INSERT INTO SM_NSTXN
	VALUES (1781,
	1757,
	1769,
	1760,
	0);
INSERT INTO SM_TAH
	VALUES (1782,
	1757,
	1781);
INSERT INTO SM_AH
	VALUES (1782,
	1757);
INSERT INTO SM_ACT
	VALUES (1782,
	1757,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1783,
	1757,
	1782);
INSERT INTO ACT_ACT
	VALUES (1783,
	'transition',
	0,
	1784,
	0,
	0,
	'DVTPAN3: LowerPan',
	0);
INSERT INTO ACT_BLK
	VALUES (1784,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1783,
	0);
INSERT INTO SM_TXN
	VALUES (1781,
	1757,
	1761,
	0);
INSERT INTO PE_PE
	VALUES (1259,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1259,
	'Fingers',
	8,
	'FNGRS',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1345,
	1259);
INSERT INTO O_BATTR
	VALUES (1345,
	1259);
INSERT INTO O_ATTR
	VALUES (1345,
	1259,
	0,
	'position',
	'Relative to Pivot Point',
	'',
	'position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1347,
	1259);
INSERT INTO O_BATTR
	VALUES (1347,
	1259);
INSERT INTO O_ATTR
	VALUES (1347,
	1259,
	1345,
	'lower_time',
	'',
	'',
	'lower_time',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1349,
	1259);
INSERT INTO O_BATTR
	VALUES (1349,
	1259);
INSERT INTO O_ATTR
	VALUES (1349,
	1259,
	1347,
	'raise_time',
	'',
	'',
	'raise_time',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1785,
	1259);
INSERT INTO O_BATTR
	VALUES (1785,
	1259);
INSERT INTO O_ATTR
	VALUES (1785,
	1259,
	1349,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1259);
INSERT INTO O_ID
	VALUES (1,
	1259);
INSERT INTO O_ID
	VALUES (2,
	1259);
INSERT INTO SM_ISM
	VALUES (1786,
	1259);
INSERT INTO SM_SM
	VALUES (1786,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1786);
INSERT INTO SM_NLEVT
	VALUES (1787,
	1786,
	0,
	1352,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1787,
	1786,
	0);
INSERT INTO SM_EVT
	VALUES (1787,
	1786,
	0,
	2,
	'de_activate',
	0,
	'',
	'ACTR2*',
	'');
INSERT INTO SM_NLEVT
	VALUES (1788,
	1786,
	0,
	567,
	910,
	0,
	'');
INSERT INTO SM_SEVT
	VALUES (1788,
	1786,
	0);
INSERT INTO SM_EVT
	VALUES (1788,
	1786,
	0,
	1,
	'activate',
	0,
	'',
	'ACTR1*',
	'');
INSERT INTO SM_STATE
	VALUES (1789,
	1786,
	0,
	'Raised',
	1,
	0);
INSERT INTO SM_CH
	VALUES (1789,
	1787,
	1786,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1789,
	1787,
	1786,
	0);
INSERT INTO SM_SEME
	VALUES (1789,
	1788,
	1786,
	0);
INSERT INTO SM_MOAH
	VALUES (1790,
	1786,
	1789);
INSERT INTO SM_AH
	VALUES (1790,
	1786);
INSERT INTO SM_ACT
	VALUES (1790,
	1786,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1791,
	1786,
	1790);
INSERT INTO ACT_ACT
	VALUES (1791,
	'state',
	0,
	1792,
	0,
	0,
	'Fingers::Raised',
	0);
INSERT INTO ACT_BLK
	VALUES (1792,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1791,
	0);
INSERT INTO SM_STATE
	VALUES (1793,
	1786,
	0,
	'Lowered',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1793,
	1787,
	1786,
	0);
INSERT INTO SM_CH
	VALUES (1793,
	1788,
	1786,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1793,
	1788,
	1786,
	0);
INSERT INTO SM_MOAH
	VALUES (1794,
	1786,
	1793);
INSERT INTO SM_AH
	VALUES (1794,
	1786);
INSERT INTO SM_ACT
	VALUES (1794,
	1786,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1795,
	1786,
	1794);
INSERT INTO ACT_ACT
	VALUES (1795,
	'state',
	0,
	1796,
	0,
	0,
	'Fingers::Lowered',
	0);
INSERT INTO ACT_BLK
	VALUES (1796,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1795,
	0);
INSERT INTO SM_NSTXN
	VALUES (1797,
	1786,
	1789,
	1788,
	0);
INSERT INTO SM_TAH
	VALUES (1798,
	1786,
	1797);
INSERT INTO SM_AH
	VALUES (1798,
	1786);
INSERT INTO SM_ACT
	VALUES (1798,
	1786,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1799,
	1786,
	1798);
INSERT INTO ACT_ACT
	VALUES (1799,
	'transition',
	0,
	1800,
	0,
	0,
	'activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1800,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1799,
	0);
INSERT INTO SM_TXN
	VALUES (1797,
	1786,
	1793,
	0);
INSERT INTO SM_NSTXN
	VALUES (1801,
	1786,
	1793,
	1787,
	0);
INSERT INTO SM_TAH
	VALUES (1802,
	1786,
	1801);
INSERT INTO SM_AH
	VALUES (1802,
	1786);
INSERT INTO SM_ACT
	VALUES (1802,
	1786,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1803,
	1786,
	1802);
INSERT INTO ACT_ACT
	VALUES (1803,
	'transition',
	0,
	1804,
	0,
	0,
	'de_activate::Actuator',
	0);
INSERT INTO ACT_BLK
	VALUES (1804,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1803,
	0);
INSERT INTO SM_TXN
	VALUES (1801,
	1786,
	1789,
	0);
INSERT INTO PE_PE
	VALUES (1272,
	1,
	1256,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1272,
	'Tracking Point',
	4,
	'TRKPT',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1805,
	1272);
INSERT INTO O_BATTR
	VALUES (1805,
	1272);
INSERT INTO O_ATTR
	VALUES (1805,
	1272,
	1534,
	'actual_position',
	'Units = mm
The physical position on the machine measured from the knife cut line,
where the interaction is desired to occur with the divert sheet.',
	'',
	'actual_position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1590,
	1272);
INSERT INTO O_BATTR
	VALUES (1590,
	1272);
INSERT INTO O_ATTR
	VALUES (1590,
	1272,
	1542,
	'type',
	'Identity of type of event to fire when tracking point is reached.',
	'',
	'type',
	0,
	1250,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1806,
	1272);
INSERT INTO O_BATTR
	VALUES (1806,
	1272);
INSERT INTO O_ATTR
	VALUES (1806,
	1272,
	1805,
	'offset_time',
	'Units = mSec
The actuator''s delay to change position.',
	'',
	'offset_time',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1542,
	1272);
INSERT INTO O_BATTR
	VALUES (1542,
	1272);
INSERT INTO O_ATTR
	VALUES (1542,
	1272,
	1806,
	'effective_position',
	'Units = mm
The position of the divert sheet specified edge when the tracking point is reached
based on the offset_time and speed the divert sheet is traveling.  If the
offset_time is 0, then the effective_position will be equal to the actual_position.',
	'',
	'effective_position',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1534,
	1272);
INSERT INTO O_BATTR
	VALUES (1534,
	1272);
INSERT INTO O_ATTR
	VALUES (1534,
	1272,
	1807,
	'edge_to_track',
	'Defines which edge of the sheet should be used as the comparison reference.',
	'',
	'edge_to_track',
	0,
	1247,
	'',
	'');
INSERT INTO O_REF
	VALUES (1272,
	1268,
	0,
	1270,
	1267,
	1273,
	1269,
	1808,
	1809,
	0,
	0,
	'',
	'Divert Sheet',
	'Id',
	'R3.''responds to position of''');
INSERT INTO O_RATTR
	VALUES (1808,
	1272,
	1270,
	1268,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1808,
	1272,
	0,
	'TRKDVRTSHT_Id',
	'',
	'TRKDVRTSHT_',
	'Id',
	1,
	261,
	'',
	'');
INSERT INTO O_REF
	VALUES (1272,
	624,
	0,
	628,
	1267,
	1273,
	1271,
	1807,
	1810,
	0,
	0,
	'',
	'Actuator',
	'Id',
	'R3.''initiates motion on''');
INSERT INTO O_RATTR
	VALUES (1807,
	1272,
	628,
	624,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1807,
	1272,
	1808,
	'ACTR_Id',
	'',
	'ACTR_',
	'Id',
	1,
	261,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1272);
INSERT INTO O_OIDA
	VALUES (1808,
	1272,
	0,
	'TRKDVRTSHT_Id');
INSERT INTO O_OIDA
	VALUES (1807,
	1272,
	0,
	'ACTR_Id');
INSERT INTO O_ID
	VALUES (1,
	1272);
INSERT INTO O_ID
	VALUES (2,
	1272);
INSERT INTO SM_ASM
	VALUES (1811,
	1272);
INSERT INTO SM_SM
	VALUES (1811,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1811);
INSERT INTO SM_LEVT
	VALUES (1812,
	1811,
	0);
INSERT INTO SM_SEVT
	VALUES (1812,
	1811,
	0);
INSERT INTO SM_EVT
	VALUES (1812,
	1811,
	0,
	1,
	'correct_position',
	0,
	'',
	'TRKPT_A1',
	'');
INSERT INTO SM_STATE
	VALUES (1813,
	1811,
	0,
	'CorrectForVelocity',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1813,
	1812,
	1811,
	0);
INSERT INTO SM_MOAH
	VALUES (1814,
	1811,
	1813);
INSERT INTO SM_AH
	VALUES (1814,
	1811);
INSERT INTO SM_ACT
	VALUES (1814,
	1811,
	1,
	'// Update the position of all tracking points

// Obtain the current velocity of the sheet handling system
sheet_handler_velocity = 0; // velocity from required interface
   
select many tracking_points from TRKPT;
for each tracking_point in tracking_points;
   // x0 = x1 - (v0 * t) : Not accounting for acceleration changes
   tracking_point.effective_position = tracking_point.actual_position - (sheet_handler_velocity * tracking_point.offset_time); // * scaling for proper units; 
   
end for;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1815,
	1811,
	1814);
INSERT INTO ACT_ACT
	VALUES (1815,
	'class state',
	0,
	1816,
	0,
	0,
	'Tracking Point::CorrectForVelocity',
	0);
INSERT INTO ACT_BLK
	VALUES (1816,
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	1,
	6,
	34,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1815,
	0);
INSERT INTO ACT_SMT
	VALUES (1817,
	1816,
	1818,
	4,
	1,
	'Tracking Point::CorrectForVelocity line: 4');
INSERT INTO ACT_AI
	VALUES (1817,
	1819,
	1820,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1818,
	1816,
	1821,
	6,
	1,
	'Tracking Point::CorrectForVelocity line: 6');
INSERT INTO ACT_FIO
	VALUES (1818,
	1822,
	1,
	'many',
	1272,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1821,
	1816,
	0,
	7,
	1,
	'Tracking Point::CorrectForVelocity line: 7');
INSERT INTO ACT_FOR
	VALUES (1821,
	1823,
	1,
	1824,
	1822,
	1272);
INSERT INTO V_VAL
	VALUES (1820,
	1,
	1,
	4,
	1,
	22,
	0,
	0,
	0,
	0,
	186,
	1816);
INSERT INTO V_TVL
	VALUES (1820,
	1825);
INSERT INTO V_VAL
	VALUES (1819,
	0,
	0,
	4,
	26,
	26,
	0,
	0,
	0,
	0,
	186,
	1816);
INSERT INTO V_LIN
	VALUES (1819,
	'0');
INSERT INTO V_VAR
	VALUES (1825,
	1816,
	'sheet_handler_velocity',
	1,
	186);
INSERT INTO V_TRN
	VALUES (1825,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1822,
	1816,
	'tracking_points',
	1,
	262);
INSERT INTO V_INS
	VALUES (1822,
	1272);
INSERT INTO V_VAR
	VALUES (1824,
	1816,
	'tracking_point',
	1,
	34);
INSERT INTO V_INT
	VALUES (1824,
	1,
	1272);
INSERT INTO ACT_BLK
	VALUES (1823,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1815,
	0);
INSERT INTO ACT_SMT
	VALUES (1826,
	1823,
	0,
	9,
	4,
	'Tracking Point::CorrectForVelocity line: 9');
INSERT INTO ACT_AI
	VALUES (1826,
	1827,
	1828,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1829,
	1,
	0,
	9,
	4,
	17,
	0,
	0,
	0,
	0,
	34,
	1823);
INSERT INTO V_IRF
	VALUES (1829,
	1824);
INSERT INTO V_VAL
	VALUES (1828,
	1,
	0,
	9,
	19,
	36,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_AVL
	VALUES (1828,
	1829,
	1272,
	1542);
INSERT INTO V_VAL
	VALUES (1830,
	0,
	0,
	9,
	40,
	53,
	0,
	0,
	0,
	0,
	34,
	1823);
INSERT INTO V_IRF
	VALUES (1830,
	1824);
INSERT INTO V_VAL
	VALUES (1831,
	0,
	0,
	9,
	55,
	69,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_AVL
	VALUES (1831,
	1830,
	1272,
	1805);
INSERT INTO V_VAL
	VALUES (1827,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_BIN
	VALUES (1827,
	1832,
	1831,
	'-');
INSERT INTO V_VAL
	VALUES (1833,
	0,
	0,
	9,
	74,
	95,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_TVL
	VALUES (1833,
	1825);
INSERT INTO V_VAL
	VALUES (1832,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_BIN
	VALUES (1832,
	1834,
	1833,
	'*');
INSERT INTO V_VAL
	VALUES (1835,
	0,
	0,
	9,
	99,
	112,
	0,
	0,
	0,
	0,
	34,
	1823);
INSERT INTO V_IRF
	VALUES (1835,
	1824);
INSERT INTO V_VAL
	VALUES (1834,
	0,
	0,
	9,
	114,
	124,
	0,
	0,
	0,
	0,
	186,
	1823);
INSERT INTO V_AVL
	VALUES (1834,
	1835,
	1272,
	1806);
INSERT INTO SM_NSTXN
	VALUES (1836,
	1811,
	1813,
	1812,
	0);
INSERT INTO SM_TAH
	VALUES (1837,
	1811,
	1836);
INSERT INTO SM_AH
	VALUES (1837,
	1811);
INSERT INTO SM_ACT
	VALUES (1837,
	1811,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1838,
	1811,
	1837);
INSERT INTO ACT_ACT
	VALUES (1838,
	'class transition',
	0,
	1839,
	0,
	0,
	'TRKPT_A1: correct_position',
	0);
INSERT INTO ACT_BLK
	VALUES (1839,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1838,
	0);
INSERT INTO SM_TXN
	VALUES (1836,
	1811,
	1813,
	0);
INSERT INTO PE_PE
	VALUES (1840,
	1,
	692,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (1840,
	0,
	528,
	'UnitTest',
	'',
	0);
INSERT INTO EP_PKG
	VALUES (1841,
	528,
	528,
	'PhysicalCompModel_pg1',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1842,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1842,
	1843,
	0,
	0,
	0,
	'',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive',
	'');
INSERT INTO CL_POR
	VALUES (1842,
	1844,
	'Port1',
	1845);
INSERT INTO CL_IIR
	VALUES (1846,
	1847,
	1845,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (1846,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (1848,
	1846);
INSERT INTO PE_PE
	VALUES (1849,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1849,
	1850,
	0,
	0,
	0,
	'',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_FB',
	'');
INSERT INTO CL_POR
	VALUES (1849,
	1851,
	'Port1',
	1852);
INSERT INTO CL_IIR
	VALUES (1853,
	1854,
	1852,
	0,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IP
	VALUES (1853,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IPINS
	VALUES (1855,
	1853);
INSERT INTO CL_POR
	VALUES (1849,
	1856,
	'Port2',
	1857);
INSERT INTO CL_IIR
	VALUES (1858,
	1859,
	1857,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_IR
	VALUES (1858,
	0,
	'Position Feedback',
	'');
INSERT INTO PE_PE
	VALUES (1860,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1860,
	1850,
	0,
	0,
	0,
	'Divert Pan',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_FB:Divert Pan',
	'');
INSERT INTO CL_POR
	VALUES (1860,
	1851,
	'Port1',
	1861);
INSERT INTO CL_IIR
	VALUES (1862,
	1854,
	1861,
	0,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IP
	VALUES (1862,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IPINS
	VALUES (1863,
	1862);
INSERT INTO CL_POR
	VALUES (1860,
	1856,
	'Port2',
	1864);
INSERT INTO CL_IIR
	VALUES (1865,
	1859,
	1864,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_IR
	VALUES (1865,
	0,
	'Position Feedback',
	'');
INSERT INTO PE_PE
	VALUES (1866,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1866,
	1843,
	0,
	0,
	0,
	'Cross Transfer Conveyor',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive:Cross Transfer Conveyor',
	'');
INSERT INTO CL_POR
	VALUES (1866,
	1844,
	'Port1',
	1867);
INSERT INTO CL_IIR
	VALUES (1868,
	1847,
	1867,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (1868,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (1869,
	1868);
INSERT INTO PE_PE
	VALUES (1870,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1870,
	1843,
	0,
	0,
	0,
	'Vacuum Blower',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive:Vacuum Blower',
	'');
INSERT INTO CL_POR
	VALUES (1870,
	1844,
	'Port1',
	1871);
INSERT INTO CL_IIR
	VALUES (1872,
	1847,
	1871,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (1872,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (1873,
	1872);
INSERT INTO PE_PE
	VALUES (1874,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1874,
	1843,
	0,
	0,
	0,
	'Vacuum Conveyor',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive:Vacuum Conveyor',
	'');
INSERT INTO CL_POR
	VALUES (1874,
	1844,
	'Port1',
	1875);
INSERT INTO CL_IIR
	VALUES (1876,
	1847,
	1875,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (1876,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (1877,
	1876);
INSERT INTO PE_PE
	VALUES (1878,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1878,
	1879,
	0,
	0,
	0,
	'Shingle Separator',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_Reg:Shingle Separator',
	'');
INSERT INTO CL_POR
	VALUES (1878,
	1880,
	'Port1',
	1881);
INSERT INTO CL_IIR
	VALUES (1882,
	1883,
	1881,
	0,
	'Motor Drive Registration',
	'');
INSERT INTO CL_IP
	VALUES (1882,
	'Motor Drive Registration',
	'');
INSERT INTO CL_IPINS
	VALUES (1884,
	1882);
INSERT INTO CL_POR
	VALUES (1878,
	1885,
	'Port2',
	1886);
INSERT INTO CL_IIR
	VALUES (1887,
	1888,
	1886,
	0,
	'Registration',
	'');
INSERT INTO CL_IR
	VALUES (1887,
	0,
	'Registration',
	'');
INSERT INTO PE_PE
	VALUES (1889,
	1,
	1841,
	0,
	21);
INSERT INTO CL_IC
	VALUES (1889,
	1843,
	0,
	0,
	0,
	'',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive',
	'');
INSERT INTO CL_POR
	VALUES (1889,
	1844,
	'Port1',
	1890);
INSERT INTO CL_IIR
	VALUES (1891,
	1847,
	1890,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (1891,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (1892,
	1891);
INSERT INTO PE_PE
	VALUES (1848,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1848,
	1893,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Pull Roll::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (1855,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1855,
	1894,
	1854,
	'',
	'Motor_Drive_FB::Port1::Motor Drive Feedback -o)- CTM Sensor::Motor_Drive::Motor Drive Feedback');
INSERT INTO PE_PE
	VALUES (1863,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1863,
	1895,
	1854,
	'',
	'Motor_Drive_FB::Port1::Motor Drive Feedback -o)- Diverter::Port1::Motor Drive Feedback');
INSERT INTO PE_PE
	VALUES (1869,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1869,
	1896,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Diverter::Port2::Motor Drive');
INSERT INTO PE_PE
	VALUES (1873,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1873,
	1897,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Shingling Section::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (1877,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1877,
	1898,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Shingling Section::Port2::Motor Drive');
INSERT INTO PE_PE
	VALUES (1884,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1884,
	1899,
	1883,
	'',
	'Motor_Drive_Reg::Port1::Motor Drive Registration -o)- Bar Conveyor::Port1::Motor Drive Registration');
INSERT INTO PE_PE
	VALUES (1892,
	1,
	1841,
	0,
	22);
INSERT INTO C_SF
	VALUES (1892,
	1900,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- High Speed Nip::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (1901,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1901,
	0,
	0,
	'Bar Conveyor',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1902,
	1901,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1899,
	1903,
	0,
	1902);
INSERT INTO C_R
	VALUES (1899,
	'Motor Drive Registration',
	'',
	'Unnamed Interface',
	'Bar Conveyor::Port1::Motor Drive Registration');
INSERT INTO PE_PE
	VALUES (1904,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1904,
	0,
	0,
	'CTM Sensor',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1905,
	1904,
	'Motor_Drive',
	0,
	0);
INSERT INTO C_IR
	VALUES (1894,
	1906,
	0,
	1905);
INSERT INTO C_R
	VALUES (1894,
	'Motor Drive Feedback',
	'',
	'Unnamed Interface',
	'CTM Sensor::Motor_Drive::Motor Drive Feedback');
INSERT INTO C_PO
	VALUES (1907,
	1904,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1908,
	1909,
	0,
	1907);
INSERT INTO C_R
	VALUES (1908,
	'CTM Sensor Digital IO',
	'',
	'Unnamed Interface',
	'CTM Sensor::Port1::CTM Sensor Digital IO');
INSERT INTO SPR_REP
	VALUES (1910,
	1911,
	1908);
INSERT INTO SPR_RS
	VALUES (1910,
	'HomeReferenceOverTravelProx',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (1912,
	1910);
INSERT INTO ACT_ACT
	VALUES (1912,
	'signal',
	0,
	1913,
	0,
	0,
	'Port1::CTM Sensor Digital IO::HomeReferenceOverTravelProx',
	0);
INSERT INTO ACT_BLK
	VALUES (1913,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1912,
	0);
INSERT INTO PE_PE
	VALUES (1914,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1914,
	0,
	0,
	'Diverter',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1915,
	1914,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1895,
	1906,
	0,
	1915);
INSERT INTO C_R
	VALUES (1895,
	'Motor Drive Feedback',
	'',
	'Unnamed Interface',
	'Diverter::Port1::Motor Drive Feedback');
INSERT INTO C_PO
	VALUES (1916,
	1914,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1896,
	1917,
	0,
	1916);
INSERT INTO C_R
	VALUES (1896,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Diverter::Port2::Motor Drive');
INSERT INTO C_PO
	VALUES (1918,
	1914,
	'Port3',
	0,
	0);
INSERT INTO C_IR
	VALUES (1919,
	1920,
	0,
	1918);
INSERT INTO C_R
	VALUES (1919,
	'Diverter Digital IO',
	'',
	'Unnamed Interface',
	'Diverter::Port3::Diverter Digital IO');
INSERT INTO SPR_REP
	VALUES (1921,
	1922,
	1919);
INSERT INTO SPR_RS
	VALUES (1921,
	'UserInputs_Jog_InspectionSheet_FoilSense',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (1923,
	1921);
INSERT INTO ACT_ACT
	VALUES (1923,
	'signal',
	0,
	1924,
	0,
	0,
	'Port3::Diverter Digital IO::UserInputs_Jog_InspectionSheet_FoilSense',
	0);
INSERT INTO ACT_BLK
	VALUES (1924,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1923,
	0);
INSERT INTO SPR_REP
	VALUES (1925,
	1926,
	1919);
INSERT INTO SPR_RS
	VALUES (1925,
	'LockedInRunPosition',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (1927,
	1925);
INSERT INTO ACT_ACT
	VALUES (1927,
	'signal',
	0,
	1928,
	0,
	0,
	'Port3::Diverter Digital IO::LockedInRunPosition',
	0);
INSERT INTO ACT_BLK
	VALUES (1928,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1927,
	0);
INSERT INTO SPR_REP
	VALUES (1929,
	1930,
	1919);
INSERT INTO SPR_RO
	VALUES (1929,
	'Fingers',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1931,
	1929);
INSERT INTO ACT_ACT
	VALUES (1931,
	'interface operation',
	0,
	1932,
	0,
	0,
	'Port3::Diverter Digital IO::Fingers',
	0);
INSERT INTO ACT_BLK
	VALUES (1932,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1931,
	0);
INSERT INTO SPR_REP
	VALUES (1933,
	1934,
	1919);
INSERT INTO SPR_RO
	VALUES (1933,
	'AirBlast',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1935,
	1933);
INSERT INTO ACT_ACT
	VALUES (1935,
	'interface operation',
	0,
	1936,
	0,
	0,
	'Port3::Diverter Digital IO::AirBlast',
	0);
INSERT INTO ACT_BLK
	VALUES (1936,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1935,
	0);
INSERT INTO PE_PE
	VALUES (1937,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1937,
	0,
	0,
	'High Speed Nip',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1938,
	1937,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1900,
	1917,
	0,
	1938);
INSERT INTO C_R
	VALUES (1900,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'High Speed Nip::Port1::Motor Drive');
INSERT INTO C_PO
	VALUES (1939,
	1937,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1940,
	1941,
	0,
	1939);
INSERT INTO C_R
	VALUES (1940,
	'E_to_P',
	'',
	'Unnamed Interface',
	'High Speed Nip::Port2::E_to_P');
INSERT INTO PE_PE
	VALUES (1942,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1942,
	0,
	0,
	'Knife Cylinder',
	'',
	0,
	0,
	0,
	'');
INSERT INTO PE_PE
	VALUES (1843,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1843,
	0,
	0,
	'Motor_Drive',
	'',
	0,
	0,
	1,
	'');
INSERT INTO C_PO
	VALUES (1844,
	1843,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1847,
	1917,
	0,
	1844);
INSERT INTO C_P
	VALUES (1847,
	'Motor Drive',
	'Unnamed Interface',
	'',
	'Motor_Drive::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (1943,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1943,
	0,
	0,
	'Motor_Drive_Brake',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1944,
	1943,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1945,
	1946,
	0,
	1944);
INSERT INTO C_P
	VALUES (1945,
	'Motor Drive Brake',
	'Unnamed Interface',
	'',
	'Motor_Drive_Brake::Port1::Motor Drive Brake');
INSERT INTO C_PO
	VALUES (1947,
	1943,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1948,
	1949,
	0,
	1947);
INSERT INTO C_R
	VALUES (1948,
	'Position Feedback',
	'',
	'Unnamed Interface',
	'Motor_Drive_Brake::Port2::Position Feedback');
INSERT INTO C_PO
	VALUES (1950,
	1943,
	'Port3',
	0,
	0);
INSERT INTO C_IR
	VALUES (1951,
	1952,
	0,
	1950);
INSERT INTO C_R
	VALUES (1951,
	'Brake',
	'',
	'Unnamed Interface',
	'Motor_Drive_Brake::Port3::Brake');
INSERT INTO PE_PE
	VALUES (1850,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1850,
	0,
	0,
	'Motor_Drive_FB',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1851,
	1850,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1854,
	1906,
	0,
	1851);
INSERT INTO C_P
	VALUES (1854,
	'Motor Drive Feedback',
	'Unnamed Interface',
	'',
	'Motor_Drive_FB::Port1::Motor Drive Feedback');
INSERT INTO C_PO
	VALUES (1856,
	1850,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1859,
	1949,
	0,
	1856);
INSERT INTO C_R
	VALUES (1859,
	'Position Feedback',
	'',
	'Unnamed Interface',
	'Motor_Drive_FB::Port2::Position Feedback');
INSERT INTO PE_PE
	VALUES (1879,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1879,
	0,
	0,
	'Motor_Drive_Reg',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1880,
	1879,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1883,
	1903,
	0,
	1880);
INSERT INTO C_P
	VALUES (1883,
	'Motor Drive Registration',
	'Unnamed Interface',
	'',
	'Motor_Drive_Reg::Port1::Motor Drive Registration');
INSERT INTO C_PO
	VALUES (1885,
	1879,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1888,
	1953,
	0,
	1885);
INSERT INTO C_R
	VALUES (1888,
	'Registration',
	'',
	'Unnamed Interface',
	'Motor_Drive_Reg::Port2::Registration');
INSERT INTO PE_PE
	VALUES (1954,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1954,
	0,
	0,
	'Pull Roll',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1955,
	1954,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1893,
	1917,
	0,
	1955);
INSERT INTO C_R
	VALUES (1893,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Pull Roll::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (1956,
	1,
	1841,
	0,
	2);
INSERT INTO C_C
	VALUES (1956,
	0,
	0,
	'Shingling Section',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1957,
	1956,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1897,
	1917,
	0,
	1957);
INSERT INTO C_R
	VALUES (1897,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Shingling Section::Port1::Motor Drive');
INSERT INTO C_PO
	VALUES (1958,
	1956,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1898,
	1917,
	0,
	1958);
INSERT INTO C_R
	VALUES (1898,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Shingling Section::Port2::Motor Drive');
INSERT INTO C_PO
	VALUES (1959,
	1956,
	'Port3',
	0,
	0);
INSERT INTO C_IR
	VALUES (1960,
	1961,
	0,
	1959);
INSERT INTO C_R
	VALUES (1960,
	'Shingling Section Digital IO',
	'',
	'Unnamed Interface',
	'Shingling Section::Port3::Shingling Section Digital IO');
INSERT INTO SPR_REP
	VALUES (1962,
	1963,
	1960);
INSERT INTO SPR_RO
	VALUES (1962,
	'MainDampers',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1964,
	1962);
INSERT INTO ACT_ACT
	VALUES (1964,
	'interface operation',
	0,
	1965,
	0,
	0,
	'Port3::Shingling Section Digital IO::MainDampers',
	0);
INSERT INTO ACT_BLK
	VALUES (1965,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1964,
	0);
INSERT INTO SPR_REP
	VALUES (1966,
	1967,
	1960);
INSERT INTO SPR_RO
	VALUES (1966,
	'ChamberDampers',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1968,
	1966);
INSERT INTO ACT_ACT
	VALUES (1968,
	'interface operation',
	0,
	1969,
	0,
	0,
	'Port3::Shingling Section Digital IO::ChamberDampers',
	0);
INSERT INTO ACT_BLK
	VALUES (1969,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1968,
	0);
INSERT INTO SPR_REP
	VALUES (1970,
	1971,
	1960);
INSERT INTO SPR_RO
	VALUES (1970,
	'SyncVacCylinders',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1972,
	1970);
INSERT INTO ACT_ACT
	VALUES (1972,
	'interface operation',
	0,
	1973,
	0,
	0,
	'Port3::Shingling Section Digital IO::SyncVacCylinders',
	0);
INSERT INTO ACT_BLK
	VALUES (1973,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1972,
	0);
INSERT INTO SPR_REP
	VALUES (1974,
	1975,
	1960);
INSERT INTO SPR_RO
	VALUES (1974,
	'Multi_Flute',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1976,
	1974);
INSERT INTO ACT_ACT
	VALUES (1976,
	'interface operation',
	0,
	1977,
	0,
	0,
	'Port3::Shingling Section Digital IO::Multi_Flute',
	0);
INSERT INTO ACT_BLK
	VALUES (1977,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1976,
	0);
INSERT INTO C_PO
	VALUES (1978,
	1956,
	'Port4',
	0,
	0);
INSERT INTO C_IR
	VALUES (1979,
	1941,
	0,
	1978);
INSERT INTO C_R
	VALUES (1979,
	'E_to_P',
	'',
	'Unnamed Interface',
	'Shingling Section::Port4::E_to_P');
INSERT INTO PE_PE
	VALUES (1952,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1952,
	0,
	'Brake',
	'');
INSERT INTO PE_PE
	VALUES (1909,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1909,
	0,
	'CTM Sensor Digital IO',
	'');
INSERT INTO C_EP
	VALUES (1911,
	1909,
	-1,
	'HomeReferenceOverTravelProx',
	'');
INSERT INTO C_AS
	VALUES (1911,
	'HomeReferenceOverTravelProx',
	'',
	1,
	0);
INSERT INTO PE_PE
	VALUES (1920,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1920,
	0,
	'Diverter Digital IO',
	'');
INSERT INTO C_EP
	VALUES (1922,
	1920,
	-1,
	'UserInputs_Jog_InspectionSheet_FoilSense',
	'');
INSERT INTO C_AS
	VALUES (1922,
	'UserInputs_Jog_InspectionSheet_FoilSense',
	'',
	1,
	0);
INSERT INTO C_EP
	VALUES (1926,
	1920,
	-1,
	'LockedInRunPosition',
	'');
INSERT INTO C_AS
	VALUES (1926,
	'LockedInRunPosition',
	'',
	1,
	1922);
INSERT INTO C_EP
	VALUES (1930,
	1920,
	-1,
	'Fingers',
	'');
INSERT INTO C_IO
	VALUES (1930,
	39,
	'Fingers',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1934,
	1920,
	-1,
	'AirBlast',
	'');
INSERT INTO C_IO
	VALUES (1934,
	39,
	'AirBlast',
	'',
	0,
	'',
	1930);
INSERT INTO PE_PE
	VALUES (1941,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1941,
	0,
	'E_to_P',
	'');
INSERT INTO PE_PE
	VALUES (1946,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1946,
	0,
	'Motor Drive Brake',
	'');
INSERT INTO PE_PE
	VALUES (1906,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1906,
	0,
	'Motor Drive Feedback',
	'');
INSERT INTO PE_PE
	VALUES (1903,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1903,
	0,
	'Motor Drive Registration',
	'');
INSERT INTO PE_PE
	VALUES (1917,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1917,
	0,
	'Motor Drive',
	'');
INSERT INTO PE_PE
	VALUES (1949,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1949,
	0,
	'Position Feedback',
	'');
INSERT INTO PE_PE
	VALUES (1953,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1953,
	0,
	'Registration',
	'');
INSERT INTO PE_PE
	VALUES (1961,
	1,
	1841,
	0,
	6);
INSERT INTO C_I
	VALUES (1961,
	0,
	'Shingling Section Digital IO',
	'');
INSERT INTO C_EP
	VALUES (1963,
	1961,
	-1,
	'MainDampers',
	'');
INSERT INTO C_IO
	VALUES (1963,
	39,
	'MainDampers',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1967,
	1961,
	-1,
	'ChamberDampers',
	'');
INSERT INTO C_IO
	VALUES (1967,
	39,
	'ChamberDampers',
	'',
	0,
	'',
	1963);
INSERT INTO C_EP
	VALUES (1971,
	1961,
	-1,
	'SyncVacCylinders',
	'');
INSERT INTO C_IO
	VALUES (1971,
	39,
	'SyncVacCylinders',
	'',
	0,
	'',
	1967);
INSERT INTO C_EP
	VALUES (1975,
	1961,
	-1,
	'Multi_Flute',
	'');
INSERT INTO C_IO
	VALUES (1975,
	39,
	'Multi_Flute',
	'',
	0,
	'',
	1971);
INSERT INTO EP_PKG
	VALUES (1980,
	528,
	528,
	'PhysicalCompModel_pg2',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1981,
	1,
	1980,
	0,
	2);
INSERT INTO C_C
	VALUES (1981,
	0,
	0,
	'Backstop',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1982,
	1981,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (1983,
	1946,
	0,
	1982);
INSERT INTO C_R
	VALUES (1983,
	'Motor Drive Brake',
	'',
	'Unnamed Interface',
	'Backstop::Port1::Motor Drive Brake');
INSERT INTO C_PO
	VALUES (1984,
	1981,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (1985,
	1917,
	0,
	1984);
INSERT INTO C_R
	VALUES (1985,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Backstop::Port2::Motor Drive');
INSERT INTO C_PO
	VALUES (1986,
	1981,
	'Port3',
	0,
	0);
INSERT INTO C_IR
	VALUES (1987,
	1988,
	0,
	1986);
INSERT INTO C_R
	VALUES (1987,
	'Backstop Digital IO',
	'',
	'Unnamed Interface',
	'Backstop::Port3::Backstop Digital IO');
INSERT INTO SPR_REP
	VALUES (1989,
	1990,
	1987);
INSERT INTO SPR_RS
	VALUES (1989,
	'BackstopJammed',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (1991,
	1989);
INSERT INTO ACT_ACT
	VALUES (1991,
	'signal',
	0,
	1992,
	0,
	0,
	'Port3::Backstop Digital IO::BackstopJammed',
	0);
INSERT INTO ACT_BLK
	VALUES (1992,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1991,
	0);
INSERT INTO SPR_REP
	VALUES (1993,
	1994,
	1987);
INSERT INTO SPR_RS
	VALUES (1993,
	'StackHeightSensors',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (1995,
	1993);
INSERT INTO ACT_ACT
	VALUES (1995,
	'signal',
	0,
	1996,
	0,
	0,
	'Port3::Backstop Digital IO::StackHeightSensors',
	0);
INSERT INTO ACT_BLK
	VALUES (1996,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1995,
	0);
INSERT INTO SPR_REP
	VALUES (1997,
	1998,
	1987);
INSERT INTO SPR_RO
	VALUES (1997,
	'UpDownCylinder',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1999,
	1997);
INSERT INTO ACT_ACT
	VALUES (1999,
	'interface operation',
	0,
	2000,
	0,
	0,
	'Port3::Backstop Digital IO::UpDownCylinder',
	0);
INSERT INTO ACT_BLK
	VALUES (2000,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1999,
	0);
INSERT INTO SPR_REP
	VALUES (2001,
	2002,
	1987);
INSERT INTO SPR_RO
	VALUES (2001,
	'BundleOffsetUpDownCylinder',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2003,
	2001);
INSERT INTO ACT_ACT
	VALUES (2003,
	'interface operation',
	0,
	2004,
	0,
	0,
	'Port3::Backstop Digital IO::BundleOffsetUpDownCylinder',
	0);
INSERT INTO ACT_BLK
	VALUES (2004,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2003,
	0);
INSERT INTO PE_PE
	VALUES (2005,
	1,
	1980,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2005,
	1843,
	0,
	0,
	0,
	'Flat Belts 1 to 5',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive:Flat Belts 1 to 5',
	'');
INSERT INTO CL_POR
	VALUES (2005,
	2006,
	'Port1',
	2007);
INSERT INTO CL_IIR
	VALUES (2008,
	1847,
	2007,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (2008,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (2009,
	2008);
INSERT INTO PE_PE
	VALUES (2010,
	1,
	1980,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2010,
	1943,
	0,
	0,
	0,
	'',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_Brake',
	'');
INSERT INTO CL_POR
	VALUES (2010,
	2011,
	'Port1',
	2012);
INSERT INTO CL_IIR
	VALUES (2013,
	1945,
	2012,
	0,
	'Motor Drive Brake',
	'');
INSERT INTO CL_IP
	VALUES (2013,
	'Motor Drive Brake',
	'');
INSERT INTO CL_IPINS
	VALUES (2014,
	2013);
INSERT INTO CL_POR
	VALUES (2010,
	2015,
	'Port2',
	2016);
INSERT INTO CL_IIR
	VALUES (2017,
	1948,
	2016,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_IR
	VALUES (2017,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_POR
	VALUES (2010,
	2018,
	'Port3',
	2019);
INSERT INTO CL_IIR
	VALUES (2020,
	1951,
	2019,
	0,
	'Brake',
	'');
INSERT INTO CL_IR
	VALUES (2020,
	0,
	'Brake',
	'');
INSERT INTO PE_PE
	VALUES (2021,
	1,
	1980,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2021,
	1850,
	0,
	0,
	0,
	'',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_FB',
	'');
INSERT INTO CL_POR
	VALUES (2021,
	2022,
	'Port1',
	2023);
INSERT INTO CL_IIR
	VALUES (2024,
	1854,
	2023,
	0,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IP
	VALUES (2024,
	'Motor Drive Feedback',
	'');
INSERT INTO CL_IPINS
	VALUES (2025,
	2024);
INSERT INTO CL_POR
	VALUES (2021,
	2026,
	'Port2',
	2027);
INSERT INTO CL_IIR
	VALUES (2028,
	1859,
	2027,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_IR
	VALUES (2028,
	0,
	'Position Feedback',
	'');
INSERT INTO PE_PE
	VALUES (2029,
	1,
	1980,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2029,
	1943,
	0,
	0,
	0,
	'Positioning',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive_Brake:Positioning',
	'');
INSERT INTO CL_POR
	VALUES (2029,
	2011,
	'Port1',
	2030);
INSERT INTO CL_IIR
	VALUES (2031,
	1945,
	2030,
	0,
	'Motor Drive Brake',
	'');
INSERT INTO CL_IP
	VALUES (2031,
	'Motor Drive Brake',
	'');
INSERT INTO CL_IPINS
	VALUES (2032,
	2031);
INSERT INTO CL_POR
	VALUES (2029,
	2015,
	'Port2',
	2033);
INSERT INTO CL_IIR
	VALUES (2034,
	1948,
	2033,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_IR
	VALUES (2034,
	0,
	'Position Feedback',
	'');
INSERT INTO CL_POR
	VALUES (2029,
	2018,
	'Port3',
	2035);
INSERT INTO CL_IIR
	VALUES (2036,
	1951,
	2035,
	0,
	'Brake',
	'');
INSERT INTO CL_IR
	VALUES (2036,
	0,
	'Brake',
	'');
INSERT INTO PE_PE
	VALUES (2037,
	1,
	1980,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2037,
	1843,
	0,
	0,
	0,
	'Oscillator',
	'Diverter::PhysicalCompModel_pg1::Motor_Drive:Oscillator',
	'');
INSERT INTO CL_POR
	VALUES (2037,
	2006,
	'Port1',
	2038);
INSERT INTO CL_IIR
	VALUES (2039,
	1847,
	2038,
	0,
	'Motor Drive',
	'');
INSERT INTO CL_IP
	VALUES (2039,
	'Motor Drive',
	'');
INSERT INTO CL_IPINS
	VALUES (2040,
	2039);
INSERT INTO PE_PE
	VALUES (2009,
	1,
	1980,
	0,
	22);
INSERT INTO C_SF
	VALUES (2009,
	2041,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Flat Belts::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (2014,
	1,
	1980,
	0,
	22);
INSERT INTO C_SF
	VALUES (2014,
	2042,
	1945,
	'',
	'Motor_Drive_Brake::Port1::Motor Drive Brake -o)- Lift Bay::Port1::Motor Drive Brake');
INSERT INTO PE_PE
	VALUES (2025,
	1,
	1980,
	0,
	22);
INSERT INTO C_SF
	VALUES (2025,
	2043,
	1854,
	'',
	'Motor_Drive_FB::Port1::Motor Drive Feedback -o)- Lift Conveyor::Port1::Motor Drive Feedback');
INSERT INTO PE_PE
	VALUES (2032,
	1,
	1980,
	0,
	22);
INSERT INTO C_SF
	VALUES (2032,
	1983,
	1945,
	'',
	'Motor_Drive_Brake::Port1::Motor Drive Brake -o)- Backstop::Port1::Motor Drive Brake');
INSERT INTO PE_PE
	VALUES (2040,
	1,
	1980,
	0,
	22);
INSERT INTO C_SF
	VALUES (2040,
	1985,
	1847,
	'',
	'Motor_Drive::Port1::Motor Drive -o)- Backstop::Port2::Motor Drive');
INSERT INTO PE_PE
	VALUES (2044,
	1,
	1980,
	0,
	2);
INSERT INTO C_C
	VALUES (2044,
	0,
	0,
	'Flat Belts',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2045,
	2044,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (2041,
	1917,
	0,
	2045);
INSERT INTO C_R
	VALUES (2041,
	'Motor Drive',
	'',
	'Unnamed Interface',
	'Flat Belts::Port1::Motor Drive');
INSERT INTO PE_PE
	VALUES (2046,
	1,
	1980,
	0,
	2);
INSERT INTO C_C
	VALUES (2046,
	0,
	0,
	'Lift Bay',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2047,
	2046,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (2042,
	1946,
	0,
	2047);
INSERT INTO C_R
	VALUES (2042,
	'Motor Drive Brake',
	'',
	'Unnamed Interface',
	'Lift Bay::Port1::Motor Drive Brake');
INSERT INTO C_PO
	VALUES (2048,
	2046,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (2049,
	2050,
	0,
	2048);
INSERT INTO C_R
	VALUES (2049,
	'Lift Bay Digital IO',
	'',
	'Unnamed Interface',
	'Lift Bay::Port2::Lift Bay Digital IO');
INSERT INTO SPR_REP
	VALUES (2051,
	2052,
	2049);
INSERT INTO SPR_RS
	VALUES (2051,
	'CounterWeightMaxUpSensor',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2053,
	2051);
INSERT INTO ACT_ACT
	VALUES (2053,
	'signal',
	0,
	2054,
	0,
	0,
	'Port2::Lift Bay Digital IO::CounterWeightMaxUpSensor',
	0);
INSERT INTO ACT_BLK
	VALUES (2054,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2053,
	0);
INSERT INTO SPR_REP
	VALUES (2055,
	2056,
	2049);
INSERT INTO SPR_RO
	VALUES (2055,
	'BundleOffsetExtendCylinder',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2057,
	2055);
INSERT INTO ACT_ACT
	VALUES (2057,
	'interface operation',
	0,
	2058,
	0,
	0,
	'Port2::Lift Bay Digital IO::BundleOffsetExtendCylinder',
	0);
INSERT INTO ACT_BLK
	VALUES (2058,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2057,
	0);
INSERT INTO SPR_REP
	VALUES (2059,
	2060,
	2049);
INSERT INTO SPR_RO
	VALUES (2059,
	'BundleOffsetTopSheetHoldCylinder',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2061,
	2059);
INSERT INTO ACT_ACT
	VALUES (2061,
	'interface operation',
	0,
	2062,
	0,
	0,
	'Port2::Lift Bay Digital IO::BundleOffsetTopSheetHoldCylinder',
	0);
INSERT INTO ACT_BLK
	VALUES (2062,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2061,
	0);
INSERT INTO C_PO
	VALUES (2063,
	2046,
	'Shingle Thickness',
	0,
	0);
INSERT INTO C_IR
	VALUES (2064,
	1949,
	0,
	2063);
INSERT INTO C_R
	VALUES (2064,
	'Position Feedback',
	'',
	'Unnamed Interface',
	'Lift Bay::Shingle Thickness::Position Feedback');
INSERT INTO PE_PE
	VALUES (2065,
	1,
	1980,
	0,
	2);
INSERT INTO C_C
	VALUES (2065,
	0,
	0,
	'Lift Conveyor',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2066,
	2065,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (2043,
	1906,
	0,
	2066);
INSERT INTO C_R
	VALUES (2043,
	'Motor Drive Feedback',
	'',
	'Unnamed Interface',
	'Lift Conveyor::Port1::Motor Drive Feedback');
INSERT INTO C_PO
	VALUES (2067,
	2065,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (2068,
	2069,
	0,
	2067);
INSERT INTO C_R
	VALUES (2068,
	'Downstream Conveyor',
	'',
	'Unnamed Interface',
	'Lift Conveyor::Port2::Downstream Conveyor');
INSERT INTO C_PO
	VALUES (2070,
	2065,
	'Port3',
	0,
	0);
INSERT INTO C_IR
	VALUES (2071,
	2072,
	0,
	2070);
INSERT INTO C_R
	VALUES (2071,
	'Lift Conveyor Digital IO',
	'',
	'Unnamed Interface',
	'Lift Conveyor::Port3::Lift Conveyor Digital IO');
INSERT INTO SPR_REP
	VALUES (2073,
	2074,
	2071);
INSERT INTO SPR_RS
	VALUES (2073,
	'StackSensePE',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2075,
	2073);
INSERT INTO ACT_ACT
	VALUES (2075,
	'signal',
	0,
	2076,
	0,
	0,
	'Port3::Lift Conveyor Digital IO::StackSensePE',
	0);
INSERT INTO ACT_BLK
	VALUES (2076,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2075,
	0);
INSERT INTO SPR_REP
	VALUES (2077,
	2078,
	2071);
INSERT INTO SPR_RS
	VALUES (2077,
	'EarlyStackRollout',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2079,
	2077);
INSERT INTO ACT_ACT
	VALUES (2079,
	'signal',
	0,
	2080,
	0,
	0,
	'Port3::Lift Conveyor Digital IO::EarlyStackRollout',
	0);
INSERT INTO ACT_BLK
	VALUES (2080,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2079,
	0);
INSERT INTO PE_PE
	VALUES (2081,
	1,
	1980,
	0,
	2);
INSERT INTO C_C
	VALUES (2081,
	0,
	0,
	'Safety System',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2082,
	2081,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (2083,
	2084,
	0,
	2082);
INSERT INTO C_P
	VALUES (2083,
	'Safety System Client',
	'Unnamed Interface',
	'',
	'Safety System::Port1::Safety System Client');
INSERT INTO C_PO
	VALUES (2085,
	2081,
	'Port2',
	0,
	0);
INSERT INTO C_IR
	VALUES (2086,
	2087,
	0,
	2085);
INSERT INTO C_R
	VALUES (2086,
	'Safety System Monitor',
	'',
	'Unnamed Interface',
	'Safety System::Port2::Safety System Monitor');
INSERT INTO SPR_REP
	VALUES (2088,
	2089,
	2086);
INSERT INTO SPR_RS
	VALUES (2088,
	'UpperLevelInfeedConveyorAccess',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2090,
	2088);
INSERT INTO ACT_ACT
	VALUES (2090,
	'signal',
	0,
	2091,
	0,
	0,
	'Port2::Safety System Monitor::UpperLevelInfeedConveyorAccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2091,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2090,
	0);
INSERT INTO SPR_REP
	VALUES (2092,
	2093,
	2086);
INSERT INTO SPR_RS
	VALUES (2092,
	'SafetyTripCable',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2094,
	2092);
INSERT INTO ACT_ACT
	VALUES (2094,
	'signal',
	0,
	2095,
	0,
	0,
	'Port2::Safety System Monitor::SafetyTripCable',
	0);
INSERT INTO ACT_BLK
	VALUES (2095,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2094,
	0);
INSERT INTO SPR_REP
	VALUES (2096,
	2097,
	2086);
INSERT INTO SPR_RS
	VALUES (2096,
	'LiftRaiseObstructionPE',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2098,
	2096);
INSERT INTO ACT_ACT
	VALUES (2098,
	'signal',
	0,
	2099,
	0,
	0,
	'Port2::Safety System Monitor::LiftRaiseObstructionPE',
	0);
INSERT INTO ACT_BLK
	VALUES (2099,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2098,
	0);
INSERT INTO SPR_REP
	VALUES (2100,
	2101,
	2086);
INSERT INTO SPR_RS
	VALUES (2100,
	'SheetHandlingSlidingDoorSw',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2102,
	2100);
INSERT INTO ACT_ACT
	VALUES (2102,
	'signal',
	0,
	2103,
	0,
	0,
	'Port2::Safety System Monitor::SheetHandlingSlidingDoorSw',
	0);
INSERT INTO ACT_BLK
	VALUES (2103,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2102,
	0);
INSERT INTO SPR_REP
	VALUES (2104,
	2105,
	2086);
INSERT INTO SPR_RS
	VALUES (2104,
	'LiftBayScan',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2106,
	2104);
INSERT INTO ACT_ACT
	VALUES (2106,
	'signal',
	0,
	2107,
	0,
	0,
	'Port2::Safety System Monitor::LiftBayScan',
	0);
INSERT INTO ACT_BLK
	VALUES (2107,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2106,
	0);
INSERT INTO SPR_REP
	VALUES (2108,
	2109,
	2086);
INSERT INTO SPR_RS
	VALUES (2108,
	'LiftDownObstructionPE',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2110,
	2108);
INSERT INTO ACT_ACT
	VALUES (2110,
	'signal',
	0,
	2111,
	0,
	0,
	'Port2::Safety System Monitor::LiftDownObstructionPE',
	0);
INSERT INTO ACT_BLK
	VALUES (2111,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2110,
	0);
INSERT INTO SPR_REP
	VALUES (2112,
	2113,
	2086);
INSERT INTO SPR_RS
	VALUES (2112,
	'LiftMidPointObstructionPE',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2114,
	2112);
INSERT INTO ACT_ACT
	VALUES (2114,
	'signal',
	0,
	2115,
	0,
	0,
	'Port2::Safety System Monitor::LiftMidPointObstructionPE',
	0);
INSERT INTO ACT_BLK
	VALUES (2115,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2114,
	0);
INSERT INTO SPR_REP
	VALUES (2116,
	2117,
	2086);
INSERT INTO SPR_RS
	VALUES (2116,
	'LiftDownLimitSw',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2118,
	2116);
INSERT INTO ACT_ACT
	VALUES (2118,
	'signal',
	0,
	2119,
	0,
	0,
	'Port2::Safety System Monitor::LiftDownLimitSw',
	0);
INSERT INTO ACT_BLK
	VALUES (2119,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2118,
	0);
INSERT INTO SPR_REP
	VALUES (2120,
	2121,
	2086);
INSERT INTO SPR_RS
	VALUES (2120,
	'PalletInfeedObstructionPE',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2122,
	2120);
INSERT INTO ACT_ACT
	VALUES (2122,
	'signal',
	0,
	2123,
	0,
	0,
	'Port2::Safety System Monitor::PalletInfeedObstructionPE',
	0);
INSERT INTO ACT_BLK
	VALUES (2123,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2122,
	0);
INSERT INTO SPR_REP
	VALUES (2124,
	2125,
	2086);
INSERT INTO SPR_RS
	VALUES (2124,
	'LiftTableLiftLocksEngagedProx',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2126,
	2124);
INSERT INTO ACT_ACT
	VALUES (2126,
	'signal',
	0,
	2127,
	0,
	0,
	'Port2::Safety System Monitor::LiftTableLiftLocksEngagedProx',
	0);
INSERT INTO ACT_BLK
	VALUES (2127,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2126,
	0);
INSERT INTO SPR_REP
	VALUES (2128,
	2129,
	2086);
INSERT INTO SPR_RS
	VALUES (2128,
	'LiftChainFailureProx',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2130,
	2128);
INSERT INTO ACT_ACT
	VALUES (2130,
	'signal',
	0,
	2131,
	0,
	0,
	'Port2::Safety System Monitor::LiftChainFailureProx',
	0);
INSERT INTO ACT_BLK
	VALUES (2131,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2130,
	0);
INSERT INTO PE_PE
	VALUES (1988,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (1988,
	0,
	'Backstop Digital IO',
	'');
INSERT INTO C_EP
	VALUES (1990,
	1988,
	-1,
	'BackstopJammed',
	'');
INSERT INTO C_AS
	VALUES (1990,
	'BackstopJammed',
	'',
	1,
	0);
INSERT INTO C_EP
	VALUES (1994,
	1988,
	-1,
	'StackHeightSensors',
	'');
INSERT INTO C_AS
	VALUES (1994,
	'StackHeightSensors',
	'',
	1,
	1990);
INSERT INTO C_EP
	VALUES (1998,
	1988,
	-1,
	'UpDownCylinder',
	'');
INSERT INTO C_IO
	VALUES (1998,
	39,
	'UpDownCylinder',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (2002,
	1988,
	-1,
	'BundleOffsetUpDownCylinder',
	'');
INSERT INTO C_IO
	VALUES (2002,
	39,
	'BundleOffsetUpDownCylinder',
	'',
	0,
	'',
	1998);
INSERT INTO PE_PE
	VALUES (2069,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (2069,
	0,
	'Downstream Conveyor',
	'');
INSERT INTO PE_PE
	VALUES (2050,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (2050,
	0,
	'Lift Bay Digital IO',
	'');
INSERT INTO C_EP
	VALUES (2052,
	2050,
	-1,
	'CounterWeightMaxUpSensor',
	'');
INSERT INTO C_AS
	VALUES (2052,
	'CounterWeightMaxUpSensor',
	'',
	1,
	0);
INSERT INTO C_EP
	VALUES (2056,
	2050,
	-1,
	'BundleOffsetExtendCylinder',
	'');
INSERT INTO C_IO
	VALUES (2056,
	39,
	'BundleOffsetExtendCylinder',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (2060,
	2050,
	-1,
	'BundleOffsetTopSheetHoldCylinder',
	'');
INSERT INTO C_IO
	VALUES (2060,
	39,
	'BundleOffsetTopSheetHoldCylinder',
	'',
	0,
	'',
	2056);
INSERT INTO PE_PE
	VALUES (2072,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (2072,
	0,
	'Lift Conveyor Digital IO',
	'');
INSERT INTO C_EP
	VALUES (2074,
	2072,
	-1,
	'StackSensePE',
	'');
INSERT INTO C_AS
	VALUES (2074,
	'StackSensePE',
	'',
	1,
	0);
INSERT INTO C_EP
	VALUES (2078,
	2072,
	-1,
	'EarlyStackRollout',
	'');
INSERT INTO C_AS
	VALUES (2078,
	'EarlyStackRollout',
	'',
	1,
	2074);
INSERT INTO PE_PE
	VALUES (2084,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (2084,
	0,
	'Safety System Client',
	'');
INSERT INTO PE_PE
	VALUES (2087,
	1,
	1980,
	0,
	6);
INSERT INTO C_I
	VALUES (2087,
	0,
	'Safety System Monitor',
	'');
INSERT INTO C_EP
	VALUES (2089,
	2087,
	-1,
	'UpperLevelInfeedConveyorAccess',
	'');
INSERT INTO C_AS
	VALUES (2089,
	'UpperLevelInfeedConveyorAccess',
	'',
	1,
	0);
INSERT INTO C_EP
	VALUES (2093,
	2087,
	-1,
	'SafetyTripCable',
	'');
INSERT INTO C_AS
	VALUES (2093,
	'SafetyTripCable',
	'',
	1,
	2089);
INSERT INTO C_EP
	VALUES (2097,
	2087,
	-1,
	'LiftRaiseObstructionPE',
	'');
INSERT INTO C_AS
	VALUES (2097,
	'LiftRaiseObstructionPE',
	'',
	1,
	2093);
INSERT INTO C_EP
	VALUES (2101,
	2087,
	-1,
	'SheetHandlingSlidingDoorSw',
	'');
INSERT INTO C_AS
	VALUES (2101,
	'SheetHandlingSlidingDoorSw',
	'',
	1,
	2097);
INSERT INTO C_EP
	VALUES (2105,
	2087,
	-1,
	'LiftBayScan',
	'');
INSERT INTO C_AS
	VALUES (2105,
	'LiftBayScan',
	'',
	1,
	2101);
INSERT INTO C_EP
	VALUES (2109,
	2087,
	-1,
	'LiftDownObstructionPE',
	'');
INSERT INTO C_AS
	VALUES (2109,
	'LiftDownObstructionPE',
	'',
	1,
	2105);
INSERT INTO C_EP
	VALUES (2113,
	2087,
	-1,
	'LiftMidPointObstructionPE',
	'');
INSERT INTO C_AS
	VALUES (2113,
	'LiftMidPointObstructionPE',
	'',
	1,
	2109);
INSERT INTO C_EP
	VALUES (2117,
	2087,
	-1,
	'LiftDownLimitSw',
	'');
INSERT INTO C_AS
	VALUES (2117,
	'LiftDownLimitSw',
	'',
	1,
	2113);
INSERT INTO C_EP
	VALUES (2121,
	2087,
	-1,
	'PalletInfeedObstructionPE',
	'');
INSERT INTO C_AS
	VALUES (2121,
	'PalletInfeedObstructionPE',
	'',
	1,
	2117);
INSERT INTO C_EP
	VALUES (2125,
	2087,
	-1,
	'LiftTableLiftLocksEngagedProx',
	'');
INSERT INTO C_AS
	VALUES (2125,
	'LiftTableLiftLocksEngagedProx',
	'',
	1,
	2121);
INSERT INTO C_EP
	VALUES (2129,
	2087,
	-1,
	'LiftChainFailureProx',
	'');
INSERT INTO C_AS
	VALUES (2129,
	'LiftChainFailureProx',
	'',
	1,
	2125);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2133,
	'BridgePoint_EE',
	1);
INSERT INTO EP_PKG
	VALUES (2134,
	2133,
	2133,
	'BP_EE',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2135,
	1,
	2134,
	0,
	5);
INSERT INTO S_EE
	VALUES (2135,
	'Architecture',
	'',
	'ARCH',
	0,
	'',
	'Architecture',
	1);
INSERT INTO S_BRG
	VALUES (2136,
	2135,
	'shutdown',
	'',
	0,
	39,
	'control stop;',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2137,
	2136);
INSERT INTO ACT_ACT
	VALUES (2137,
	'bridge',
	0,
	2138,
	0,
	0,
	'Architecture::shutdown',
	0);
INSERT INTO ACT_BLK
	VALUES (2138,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2137,
	0);
INSERT INTO ACT_SMT
	VALUES (2139,
	2138,
	0,
	1,
	1,
	'Architecture::shutdown line: 1');
INSERT INTO ACT_CTL
	VALUES (2139);
INSERT INTO PE_PE
	VALUES (2140,
	1,
	2134,
	0,
	5);
INSERT INTO S_EE
	VALUES (2140,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2141,
	2140,
	'LogSuccess',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2142,
	2141,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2143,
	2141);
INSERT INTO ACT_ACT
	VALUES (2143,
	'bridge',
	0,
	2144,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2144,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2143,
	0);
INSERT INTO S_BRG
	VALUES (2145,
	2140,
	'LogFailure',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2146,
	2145,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2147,
	2145);
INSERT INTO ACT_ACT
	VALUES (2147,
	'bridge',
	0,
	2148,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2148,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2147,
	0);
INSERT INTO S_BRG
	VALUES (2149,
	2140,
	'LogInfo',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2150,
	2149,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2151,
	2149);
INSERT INTO ACT_ACT
	VALUES (2151,
	'bridge',
	0,
	2152,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2152,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2151,
	0);
INSERT INTO S_BRG
	VALUES (2153,
	2140,
	'LogDate',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2154,
	2153,
	'd',
	168,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2155,
	2153,
	'message',
	155,
	0,
	'',
	2154,
	'');
INSERT INTO ACT_BRB
	VALUES (2156,
	2153);
INSERT INTO ACT_ACT
	VALUES (2156,
	'bridge',
	0,
	2157,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2157,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2156,
	0);
INSERT INTO S_BRG
	VALUES (2158,
	2140,
	'LogTime',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2159,
	2158,
	't',
	174,
	0,
	'',
	2160,
	'');
INSERT INTO S_BPARM
	VALUES (2160,
	2158,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2161,
	2158);
INSERT INTO ACT_ACT
	VALUES (2161,
	'bridge',
	0,
	2162,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2162,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2161,
	0);
INSERT INTO S_BRG
	VALUES (2163,
	2140,
	'LogReal',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2164,
	2163,
	'r',
	180,
	0,
	'',
	2165,
	'');
INSERT INTO S_BPARM
	VALUES (2165,
	2163,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2166,
	2163);
INSERT INTO ACT_ACT
	VALUES (2166,
	'bridge',
	0,
	2167,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2167,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2166,
	0);
INSERT INTO S_BRG
	VALUES (2168,
	2140,
	'LogInteger',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2169,
	2168,
	'message',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2170,
	2168);
INSERT INTO ACT_ACT
	VALUES (2170,
	'bridge',
	0,
	2171,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2171,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2170,
	0);
INSERT INTO PE_PE
	VALUES (2132,
	1,
	2134,
	0,
	5);
INSERT INTO S_EE
	VALUES (2132,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2172,
	2132,
	'current_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2173,
	2172);
INSERT INTO ACT_ACT
	VALUES (2173,
	'bridge',
	0,
	2174,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2174,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2173,
	0);
INSERT INTO S_BRG
	VALUES (2175,
	2132,
	'create_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2176,
	2175,
	'second',
	186,
	0,
	'',
	2177,
	'');
INSERT INTO S_BPARM
	VALUES (2178,
	2175,
	'minute',
	186,
	0,
	'',
	2179,
	'');
INSERT INTO S_BPARM
	VALUES (2179,
	2175,
	'hour',
	186,
	0,
	'',
	2180,
	'');
INSERT INTO S_BPARM
	VALUES (2180,
	2175,
	'day',
	186,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2177,
	2175,
	'month',
	186,
	0,
	'',
	2178,
	'');
INSERT INTO S_BPARM
	VALUES (2181,
	2175,
	'year',
	186,
	0,
	'',
	2176,
	'');
INSERT INTO ACT_BRB
	VALUES (2182,
	2175);
INSERT INTO ACT_ACT
	VALUES (2182,
	'bridge',
	0,
	2183,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2183,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2182,
	0);
INSERT INTO S_BRG
	VALUES (2184,
	2132,
	'get_second',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2185,
	2184,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2186,
	2184);
INSERT INTO ACT_ACT
	VALUES (2186,
	'bridge',
	0,
	2187,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2187,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2186,
	0);
INSERT INTO S_BRG
	VALUES (2188,
	2132,
	'get_minute',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2189,
	2188,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2190,
	2188);
INSERT INTO ACT_ACT
	VALUES (2190,
	'bridge',
	0,
	2191,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2191,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2190,
	0);
INSERT INTO S_BRG
	VALUES (2192,
	2132,
	'get_hour',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2193,
	2192,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2194,
	2192);
INSERT INTO ACT_ACT
	VALUES (2194,
	'bridge',
	0,
	2195,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2195,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2194,
	0);
INSERT INTO S_BRG
	VALUES (2196,
	2132,
	'get_day',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2197,
	2196,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2198,
	2196);
INSERT INTO ACT_ACT
	VALUES (2198,
	'bridge',
	0,
	2199,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2199,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2198,
	0);
INSERT INTO S_BRG
	VALUES (2200,
	2132,
	'get_month',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2201,
	2200,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2202,
	2200);
INSERT INTO ACT_ACT
	VALUES (2202,
	'bridge',
	0,
	2203,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2203,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2202,
	0);
INSERT INTO S_BRG
	VALUES (2204,
	2132,
	'get_year',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2205,
	2204,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2206,
	2204);
INSERT INTO ACT_ACT
	VALUES (2206,
	'bridge',
	0,
	2207,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2207,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2206,
	0);
INSERT INTO S_BRG
	VALUES (2208,
	2132,
	'current_clock',
	'',
	1,
	174,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2209,
	2208);
INSERT INTO ACT_ACT
	VALUES (2209,
	'bridge',
	0,
	2210,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2210,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2209,
	0);
INSERT INTO S_BRG
	VALUES (1640,
	2132,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2211,
	1640,
	'microseconds',
	186,
	0,
	'',
	2212,
	'');
INSERT INTO S_BPARM
	VALUES (2212,
	1640,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2213,
	1640);
INSERT INTO ACT_ACT
	VALUES (2213,
	'bridge',
	0,
	2214,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2214,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2213,
	0);
INSERT INTO S_BRG
	VALUES (2215,
	2132,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2216,
	2215,
	'microseconds',
	186,
	0,
	'',
	2217,
	'');
INSERT INTO S_BPARM
	VALUES (2217,
	2215,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2218,
	2215);
INSERT INTO ACT_ACT
	VALUES (2218,
	'bridge',
	0,
	2219,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2219,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2218,
	0);
INSERT INTO S_BRG
	VALUES (2220,
	2132,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2221,
	2220,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2222,
	2220);
INSERT INTO ACT_ACT
	VALUES (2222,
	'bridge',
	0,
	2223,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2223,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2222,
	0);
INSERT INTO S_BRG
	VALUES (2224,
	2132,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2225,
	2224,
	'timer_inst_ref',
	230,
	0,
	'',
	2226,
	'');
INSERT INTO S_BPARM
	VALUES (2226,
	2224,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2227,
	2224);
INSERT INTO ACT_ACT
	VALUES (2227,
	'bridge',
	0,
	2228,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2228,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2227,
	0);
INSERT INTO S_BRG
	VALUES (2229,
	2132,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2230,
	2229,
	'timer_inst_ref',
	230,
	0,
	'',
	2231,
	'');
INSERT INTO S_BPARM
	VALUES (2231,
	2229,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2232,
	2229);
INSERT INTO ACT_ACT
	VALUES (2232,
	'bridge',
	0,
	2233,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2233,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2232,
	0);
INSERT INTO S_BRG
	VALUES (2234,
	2132,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2235,
	2234,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2236,
	2234);
INSERT INTO ACT_ACT
	VALUES (2236,
	'bridge',
	0,
	2237,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2237,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2236,
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2238,
	'Types_Corrugated',
	1);
INSERT INTO EP_PKG
	VALUES (2239,
	2238,
	2238,
	'DataTypes',
	'',
	0);
INSERT INTO PE_PE
	VALUES (778,
	1,
	2239,
	0,
	3);
INSERT INTO S_DT
	VALUES (778,
	0,
	'Machine_Side',
	'',
	'');
INSERT INTO S_EDT
	VALUES (778);
INSERT INTO S_ENUM
	VALUES (779,
	'Operator',
	'Identifies the side of the machine the operator uses to control the machine.',
	778,
	0);
INSERT INTO S_ENUM
	VALUES (782,
	'Drive',
	'Identifies the side of the machine where the drive cabinets are located.',
	778,
	779);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2240,
	'Intf_Diverter',
	1);
INSERT INTO EP_PKG
	VALUES (2241,
	2240,
	2240,
	'DataTypes',
	'',
	0);
INSERT INTO PE_PE
	VALUES (272,
	1,
	2241,
	0,
	3);
INSERT INTO S_DT
	VALUES (272,
	0,
	'Divert_Packet',
	'',
	'');
INSERT INTO S_EDT
	VALUES (272);
INSERT INTO S_ENUM
	VALUES (1725,
	'Scrap',
	'',
	272,
	0);
INSERT INTO S_ENUM
	VALUES (2242,
	'Inspection',
	'',
	272,
	1725);
INSERT INTO PE_PE
	VALUES (35,
	1,
	2241,
	0,
	3);
INSERT INTO S_DT
	VALUES (35,
	0,
	'Jog_Switch_Position',
	'',
	'');
INSERT INTO S_EDT
	VALUES (35);
INSERT INTO S_ENUM
	VALUES (75,
	'Stop',
	'',
	35,
	0);
INSERT INTO S_ENUM
	VALUES (62,
	'Operator',
	'',
	35,
	75);
INSERT INTO S_ENUM
	VALUES (49,
	'Drive',
	'',
	35,
	62);
INSERT INTO S_ENUM
	VALUES (774,
	'Impossible',
	'',
	35,
	49);
INSERT INTO EP_PKG
	VALUES (2243,
	2240,
	2240,
	'DiverterInterfaces',
	'',
	0);
INSERT INTO PE_PE
	VALUES (294,
	1,
	2243,
	0,
	6);
INSERT INTO C_I
	VALUES (294,
	0,
	'DivertMotor',
	'');
INSERT INTO PE_PE
	VALUES (7,
	1,
	2243,
	0,
	6);
INSERT INTO C_I
	VALUES (7,
	0,
	'DiverterClient',
	'');
INSERT INTO C_EP
	VALUES (9,
	7,
	-1,
	'divert_pending',
	'');
INSERT INTO C_AS
	VALUES (9,
	'divert_pending',
	'',
	0,
	0);
INSERT INTO C_PP
	VALUES (271,
	9,
	272,
	'divert_type',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (273,
	9,
	186,
	'packet_start_position',
	'',
	0,
	'',
	271);
INSERT INTO C_PP
	VALUES (274,
	9,
	186,
	'sheet_length',
	'',
	0,
	'',
	273);
INSERT INTO C_PP
	VALUES (275,
	9,
	186,
	'number_of_sheets',
	'',
	0,
	'',
	274);
INSERT INTO C_EP
	VALUES (13,
	7,
	-1,
	'diverter_ready',
	'');
INSERT INTO C_AS
	VALUES (13,
	'diverter_ready',
	'',
	1,
	9);
INSERT INTO C_PP
	VALUES (276,
	13,
	87,
	'ready',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (21,
	7,
	-1,
	'request_status',
	'True - Diverter Ready, False - Diverter Not Ready
Operation returns the current state of the diverter system.  
');
INSERT INTO C_IO
	VALUES (21,
	87,
	'request_status',
	'True - Diverter Ready, False - Diverter Not Ready
Operation returns the current state of the diverter system.  
',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (25,
	7,
	-1,
	'get_xtfr_jog_switch_position',
	'');
INSERT INTO C_IO
	VALUES (25,
	35,
	'get_xtfr_jog_switch_position',
	'',
	1,
	'',
	21);
INSERT INTO C_EP
	VALUES (17,
	7,
	-1,
	'xtfr_jog_switch_position_changed',
	'');
INSERT INTO C_AS
	VALUES (17,
	'xtfr_jog_switch_position_changed',
	'',
	0,
	13);
INSERT INTO C_PP
	VALUES (277,
	17,
	35,
	'new_position',
	'',
	0,
	'',
	0);
INSERT INTO PE_PE
	VALUES (2244,
	1,
	2243,
	0,
	6);
INSERT INTO C_I
	VALUES (2244,
	0,
	'E_to_P',
	'');
INSERT INTO C_EP
	VALUES (2245,
	2244,
	-1,
	'set_pressure',
	'');
INSERT INTO C_IO
	VALUES (2245,
	39,
	'set_pressure',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2246,
	2245,
	186,
	'pressure',
	'',
	0,
	'',
	0);
INSERT INTO PE_PE
	VALUES (279,
	1,
	2243,
	0,
	6);
INSERT INTO C_I
	VALUES (279,
	0,
	'PneumaticControlValve',
	'');
INSERT INTO PE_PE
	VALUES (295,
	1,
	2243,
	0,
	6);
INSERT INTO C_I
	VALUES (295,
	0,
	'SpeedSignal',
	'');
INSERT INTO C_EP
	VALUES (297,
	295,
	-1,
	'CutPulse',
	'');
INSERT INTO C_AS
	VALUES (297,
	'CutPulse',
	'',
	1,
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2247,
	'VelocityControlDrive',
	1);
INSERT INTO EP_PKG
	VALUES (2248,
	2247,
	2247,
	'Analysis',
	'',
	0);
INSERT INTO EP_PKG
	VALUES (348,
	2247,
	2247,
	'Design',
	'Here I am',
	900);
INSERT INTO PE_PE
	VALUES (126,
	1,
	348,
	0,
	2);
INSERT INTO C_C
	VALUES (126,
	0,
	0,
	'Velocity Control Drive',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (127,
	126,
	'drive',
	0,
	0);
INSERT INTO C_IR
	VALUES (130,
	303,
	0,
	127);
INSERT INTO C_R
	VALUES (130,
	'VelocityControlDrive',
	'',
	'Unnamed Interface',
	'Velocity Control Drive::drive::VelocityControlDrive');
INSERT INTO SPR_REP
	VALUES (304,
	305,
	130);
INSERT INTO SPR_RS
	VALUES (304,
	'enable_drive',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2249,
	304);
INSERT INTO ACT_ACT
	VALUES (2249,
	'signal',
	0,
	2250,
	0,
	0,
	'drive::VelocityControlDrive::enable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (2250,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2249,
	0);
INSERT INTO SPR_REP
	VALUES (308,
	309,
	130);
INSERT INTO SPR_RS
	VALUES (308,
	'jog_motor',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2251,
	308);
INSERT INTO ACT_ACT
	VALUES (2251,
	'signal',
	0,
	2252,
	0,
	0,
	'drive::VelocityControlDrive::jog_motor',
	0);
INSERT INTO ACT_BLK
	VALUES (2252,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2251,
	0);
INSERT INTO SPR_REP
	VALUES (312,
	313,
	130);
INSERT INTO SPR_RS
	VALUES (312,
	'stop_motor',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2253,
	312);
INSERT INTO ACT_ACT
	VALUES (2253,
	'signal',
	0,
	2254,
	0,
	0,
	'drive::VelocityControlDrive::stop_motor',
	0);
INSERT INTO ACT_BLK
	VALUES (2254,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2253,
	0);
INSERT INTO SPR_REP
	VALUES (316,
	317,
	130);
INSERT INTO SPR_RS
	VALUES (316,
	'in_progress',
	'',
	'select any motion_controller from MC;
generate MC2:drive_in_progress() to motion_controller;
',
	1);
INSERT INTO ACT_RSB
	VALUES (2255,
	316);
INSERT INTO ACT_ACT
	VALUES (2255,
	'signal',
	0,
	2256,
	0,
	0,
	'drive::VelocityControlDrive::in_progress',
	0);
INSERT INTO ACT_BLK
	VALUES (2256,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	2,
	1,
	1,
	35,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2255,
	0);
INSERT INTO ACT_SMT
	VALUES (2257,
	2256,
	2258,
	1,
	1,
	'drive::VelocityControlDrive::in_progress line: 1');
INSERT INTO ACT_FIO
	VALUES (2257,
	2259,
	1,
	'any',
	323,
	1,
	35);
INSERT INTO ACT_SMT
	VALUES (2258,
	2256,
	0,
	2,
	1,
	'drive::VelocityControlDrive::in_progress line: 2');
INSERT INTO E_ESS
	VALUES (2258,
	1,
	0,
	2,
	10,
	2,
	14,
	1,
	35,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2258);
INSERT INTO E_GSME
	VALUES (2258,
	324);
INSERT INTO E_GEN
	VALUES (2258,
	2259);
INSERT INTO V_VAR
	VALUES (2259,
	2256,
	'motion_controller',
	1,
	34);
INSERT INTO V_INT
	VALUES (2259,
	0,
	323);
INSERT INTO SPR_REP
	VALUES (326,
	327,
	130);
INSERT INTO SPR_RS
	VALUES (326,
	'done',
	'',
	'select any drive_enable from DE;
generate DE3:drive_signals_done() to drive_enable;

select any motion_controller from MC;
generate MC4:drive_done() to motion_controller;

',
	1);
INSERT INTO ACT_RSB
	VALUES (2260,
	326);
INSERT INTO ACT_ACT
	VALUES (2260,
	'signal',
	0,
	2261,
	0,
	0,
	'drive::VelocityControlDrive::done',
	0);
INSERT INTO ACT_BLK
	VALUES (2261,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	5,
	1,
	4,
	35,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2260,
	0);
INSERT INTO ACT_SMT
	VALUES (2262,
	2261,
	2263,
	1,
	1,
	'drive::VelocityControlDrive::done line: 1');
INSERT INTO ACT_FIO
	VALUES (2262,
	2264,
	1,
	'any',
	333,
	1,
	30);
INSERT INTO ACT_SMT
	VALUES (2263,
	2261,
	2265,
	2,
	1,
	'drive::VelocityControlDrive::done line: 2');
INSERT INTO E_ESS
	VALUES (2263,
	1,
	0,
	2,
	10,
	2,
	14,
	1,
	30,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2263);
INSERT INTO E_GSME
	VALUES (2263,
	335);
INSERT INTO E_GEN
	VALUES (2263,
	2264);
INSERT INTO ACT_SMT
	VALUES (2265,
	2261,
	2266,
	4,
	1,
	'drive::VelocityControlDrive::done line: 4');
INSERT INTO ACT_FIO
	VALUES (2265,
	2267,
	1,
	'any',
	323,
	4,
	35);
INSERT INTO ACT_SMT
	VALUES (2266,
	2261,
	0,
	5,
	1,
	'drive::VelocityControlDrive::done line: 5');
INSERT INTO E_ESS
	VALUES (2266,
	1,
	0,
	5,
	10,
	5,
	14,
	4,
	35,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2266);
INSERT INTO E_GSME
	VALUES (2266,
	339);
INSERT INTO E_GEN
	VALUES (2266,
	2267);
INSERT INTO V_VAR
	VALUES (2264,
	2261,
	'drive_enable',
	1,
	34);
INSERT INTO V_INT
	VALUES (2264,
	0,
	333);
INSERT INTO V_VAR
	VALUES (2267,
	2261,
	'motion_controller',
	1,
	34);
INSERT INTO V_INT
	VALUES (2267,
	0,
	323);
INSERT INTO SPR_REP
	VALUES (340,
	341,
	130);
INSERT INTO SPR_RS
	VALUES (340,
	'error',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2268,
	340);
INSERT INTO ACT_ACT
	VALUES (2268,
	'signal',
	0,
	2269,
	0,
	0,
	'drive::VelocityControlDrive::error',
	0);
INSERT INTO ACT_BLK
	VALUES (2269,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2268,
	0);
INSERT INTO C_PO
	VALUES (132,
	126,
	'client',
	0,
	0);
INSERT INTO C_IR
	VALUES (135,
	280,
	0,
	132);
INSERT INTO C_P
	VALUES (135,
	'JogMotor',
	'Unnamed Interface',
	'',
	'Velocity Control Drive::client::JogMotor');
INSERT INTO SPR_PEP
	VALUES (349,
	282,
	135);
INSERT INTO SPR_PS
	VALUES (349,
	'jog',
	'',
	'// Client requests a jog 

create object instance motion_inst of MI;
motion_inst.direction = param.direction;
motion_inst.velocity = param.velocity;
motion_inst.acceleration = param.acceleration;
motion_inst.duration = param.duration;

generate MI_A1:jog_instruction_received to MI assigner;

',
	1);
INSERT INTO ACT_PSB
	VALUES (2270,
	349);
INSERT INTO ACT_ACT
	VALUES (2270,
	'signal',
	0,
	2271,
	0,
	0,
	'client::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (2271,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	9,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2270,
	0);
INSERT INTO ACT_SMT
	VALUES (2272,
	2271,
	2273,
	3,
	1,
	'client::JogMotor::jog line: 3');
INSERT INTO ACT_CR
	VALUES (2272,
	2274,
	1,
	355,
	3,
	39);
INSERT INTO ACT_SMT
	VALUES (2273,
	2271,
	2275,
	4,
	1,
	'client::JogMotor::jog line: 4');
INSERT INTO ACT_AI
	VALUES (2273,
	2276,
	2277,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2275,
	2271,
	2278,
	5,
	1,
	'client::JogMotor::jog line: 5');
INSERT INTO ACT_AI
	VALUES (2275,
	2279,
	2280,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2278,
	2271,
	2281,
	6,
	1,
	'client::JogMotor::jog line: 6');
INSERT INTO ACT_AI
	VALUES (2278,
	2282,
	2283,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2281,
	2271,
	2284,
	7,
	1,
	'client::JogMotor::jog line: 7');
INSERT INTO ACT_AI
	VALUES (2281,
	2285,
	2286,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2284,
	2271,
	0,
	9,
	1,
	'client::JogMotor::jog line: 9');
INSERT INTO E_ESS
	VALUES (2284,
	1,
	0,
	9,
	10,
	9,
	16,
	9,
	44,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2284);
INSERT INTO E_GSME
	VALUES (2284,
	368);
INSERT INTO E_GAR
	VALUES (2284);
INSERT INTO V_VAL
	VALUES (2287,
	1,
	0,
	4,
	1,
	11,
	0,
	0,
	0,
	0,
	34,
	2271);
INSERT INTO V_IRF
	VALUES (2287,
	2274);
INSERT INTO V_VAL
	VALUES (2277,
	1,
	0,
	4,
	13,
	21,
	0,
	0,
	0,
	0,
	290,
	2271);
INSERT INTO V_AVL
	VALUES (2277,
	2287,
	355,
	371);
INSERT INTO V_VAL
	VALUES (2276,
	0,
	0,
	4,
	31,
	39,
	0,
	0,
	0,
	0,
	290,
	2271);
INSERT INTO V_PVL
	VALUES (2276,
	0,
	0,
	0,
	289);
INSERT INTO V_VAL
	VALUES (2288,
	1,
	0,
	5,
	1,
	11,
	0,
	0,
	0,
	0,
	34,
	2271);
INSERT INTO V_IRF
	VALUES (2288,
	2274);
INSERT INTO V_VAL
	VALUES (2280,
	1,
	0,
	5,
	13,
	20,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_AVL
	VALUES (2280,
	2288,
	355,
	373);
INSERT INTO V_VAL
	VALUES (2279,
	0,
	0,
	5,
	30,
	37,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_PVL
	VALUES (2279,
	0,
	0,
	0,
	291);
INSERT INTO V_VAL
	VALUES (2289,
	1,
	0,
	6,
	1,
	11,
	0,
	0,
	0,
	0,
	34,
	2271);
INSERT INTO V_IRF
	VALUES (2289,
	2274);
INSERT INTO V_VAL
	VALUES (2283,
	1,
	0,
	6,
	13,
	24,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_AVL
	VALUES (2283,
	2289,
	355,
	375);
INSERT INTO V_VAL
	VALUES (2282,
	0,
	0,
	6,
	34,
	45,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_PVL
	VALUES (2282,
	0,
	0,
	0,
	292);
INSERT INTO V_VAL
	VALUES (2290,
	1,
	0,
	7,
	1,
	11,
	0,
	0,
	0,
	0,
	34,
	2271);
INSERT INTO V_IRF
	VALUES (2290,
	2274);
INSERT INTO V_VAL
	VALUES (2286,
	1,
	0,
	7,
	13,
	20,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_AVL
	VALUES (2286,
	2290,
	355,
	377);
INSERT INTO V_VAL
	VALUES (2285,
	0,
	0,
	7,
	30,
	37,
	0,
	0,
	0,
	0,
	186,
	2271);
INSERT INTO V_PVL
	VALUES (2285,
	0,
	0,
	0,
	293);
INSERT INTO V_VAR
	VALUES (2274,
	2271,
	'motion_inst',
	1,
	34);
INSERT INTO V_INT
	VALUES (2274,
	0,
	355);
INSERT INTO SPR_PEP
	VALUES (378,
	284,
	135);
INSERT INTO SPR_PS
	VALUES (378,
	'stop',
	'',
	'// Client wants the move to stop.
// 


select any motion_controller from MC;
if not_empty motion_controller;
   generate MC3:end_move() to motion_controller;
end if;
',
	1);
INSERT INTO ACT_PSB
	VALUES (2291,
	378);
INSERT INTO ACT_ACT
	VALUES (2291,
	'signal',
	0,
	2292,
	0,
	0,
	'client::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (2292,
	1,
	0,
	0,
	'',
	'',
	'',
	5,
	1,
	4,
	35,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2291,
	0);
INSERT INTO ACT_SMT
	VALUES (2293,
	2292,
	2294,
	4,
	1,
	'client::JogMotor::stop line: 4');
INSERT INTO ACT_FIO
	VALUES (2293,
	2295,
	1,
	'any',
	323,
	4,
	35);
INSERT INTO ACT_SMT
	VALUES (2294,
	2292,
	0,
	5,
	1,
	'client::JogMotor::stop line: 5');
INSERT INTO ACT_IF
	VALUES (2294,
	2296,
	2297,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2298,
	0,
	0,
	5,
	14,
	30,
	0,
	0,
	0,
	0,
	34,
	2292);
INSERT INTO V_IRF
	VALUES (2298,
	2295);
INSERT INTO V_VAL
	VALUES (2297,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	2292);
INSERT INTO V_UNY
	VALUES (2297,
	2298,
	'not_empty');
INSERT INTO V_VAR
	VALUES (2295,
	2292,
	'motion_controller',
	1,
	34);
INSERT INTO V_INT
	VALUES (2295,
	0,
	323);
INSERT INTO ACT_BLK
	VALUES (2296,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	6,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2291,
	0);
INSERT INTO ACT_SMT
	VALUES (2299,
	2296,
	0,
	6,
	4,
	'client::JogMotor::stop line: 6');
INSERT INTO E_ESS
	VALUES (2299,
	1,
	0,
	6,
	13,
	6,
	17,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2299);
INSERT INTO E_GSME
	VALUES (2299,
	388);
INSERT INTO E_GEN
	VALUES (2299,
	2295);
INSERT INTO SPR_PEP
	VALUES (389,
	286,
	135);
INSERT INTO SPR_PS
	VALUES (389,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (2300,
	389);
INSERT INTO ACT_ACT
	VALUES (2300,
	'signal',
	0,
	2301,
	0,
	0,
	'client::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (2301,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2300,
	0);
INSERT INTO SPR_PEP
	VALUES (392,
	288,
	135);
INSERT INTO SPR_PS
	VALUES (392,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'',
	1);
INSERT INTO ACT_PSB
	VALUES (2302,
	392);
INSERT INTO ACT_ACT
	VALUES (2302,
	'signal',
	0,
	2303,
	0,
	0,
	'client::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (2303,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2302,
	0);
INSERT INTO PE_PE
	VALUES (2304,
	1,
	0,
	126,
	7);
INSERT INTO EP_PKG
	VALUES (2304,
	0,
	2247,
	'Subsys',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2305,
	1,
	2304,
	0,
	9);
INSERT INTO R_REL
	VALUES (2305,
	1,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (2305);
INSERT INTO R_PART
	VALUES (355,
	2305,
	2306,
	0,
	1,
	'');
INSERT INTO R_RTO
	VALUES (355,
	2305,
	2306,
	-1);
INSERT INTO R_OIR
	VALUES (355,
	2305,
	2306,
	0);
INSERT INTO R_PART
	VALUES (323,
	2305,
	2307,
	0,
	1,
	'defines desired motion for');
INSERT INTO R_RTO
	VALUES (323,
	2305,
	2307,
	-1);
INSERT INTO R_OIR
	VALUES (323,
	2305,
	2307,
	0);
INSERT INTO PE_PE
	VALUES (2308,
	1,
	2304,
	0,
	9);
INSERT INTO R_REL
	VALUES (2308,
	2,
	'',
	0);
INSERT INTO R_SIMP
	VALUES (2308);
INSERT INTO R_PART
	VALUES (333,
	2308,
	2309,
	0,
	0,
	'');
INSERT INTO R_RTO
	VALUES (333,
	2308,
	2309,
	-1);
INSERT INTO R_OIR
	VALUES (333,
	2308,
	2309,
	0);
INSERT INTO R_PART
	VALUES (323,
	2308,
	2310,
	0,
	0,
	'controls enabling circuit of drive for');
INSERT INTO R_RTO
	VALUES (323,
	2308,
	2310,
	-1);
INSERT INTO R_OIR
	VALUES (323,
	2308,
	2310,
	0);
INSERT INTO PE_PE
	VALUES (2311,
	1,
	2304,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2311,
	0,
	'Init',
	'',
	'// Create the static objects. 
// 


create object instance motion_controller of MC;

create object instance drive_enable of DE;
drive_enable.disable_delay = 5000;  // mSec

relate motion_controller to drive_enable across R2;
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2312,
	2311);
INSERT INTO ACT_ACT
	VALUES (2312,
	'function',
	0,
	2313,
	0,
	0,
	'Init',
	0);
INSERT INTO ACT_BLK
	VALUES (2313,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	6,
	40,
	0,
	0,
	9,
	49,
	0,
	0,
	0,
	0,
	0,
	2312,
	0);
INSERT INTO ACT_SMT
	VALUES (2314,
	2313,
	2315,
	4,
	1,
	'Init line: 4');
INSERT INTO ACT_CR
	VALUES (2314,
	2316,
	1,
	323,
	4,
	45);
INSERT INTO ACT_SMT
	VALUES (2315,
	2313,
	2317,
	6,
	1,
	'Init line: 6');
INSERT INTO ACT_CR
	VALUES (2315,
	2318,
	1,
	333,
	6,
	40);
INSERT INTO ACT_SMT
	VALUES (2317,
	2313,
	2319,
	7,
	1,
	'Init line: 7');
INSERT INTO ACT_AI
	VALUES (2317,
	2320,
	2321,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2319,
	2313,
	0,
	9,
	1,
	'Init line: 9');
INSERT INTO ACT_REL
	VALUES (2319,
	2316,
	2318,
	'',
	2308,
	9,
	49,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2322,
	1,
	0,
	7,
	1,
	12,
	0,
	0,
	0,
	0,
	34,
	2313);
INSERT INTO V_IRF
	VALUES (2322,
	2318);
INSERT INTO V_VAL
	VALUES (2321,
	1,
	0,
	7,
	14,
	26,
	0,
	0,
	0,
	0,
	186,
	2313);
INSERT INTO V_AVL
	VALUES (2321,
	2322,
	333,
	2323);
INSERT INTO V_VAL
	VALUES (2320,
	0,
	0,
	7,
	30,
	33,
	0,
	0,
	0,
	0,
	186,
	2313);
INSERT INTO V_LIN
	VALUES (2320,
	'5000');
INSERT INTO V_VAR
	VALUES (2316,
	2313,
	'motion_controller',
	1,
	34);
INSERT INTO V_INT
	VALUES (2316,
	0,
	323);
INSERT INTO V_VAR
	VALUES (2318,
	2313,
	'drive_enable',
	1,
	34);
INSERT INTO V_INT
	VALUES (2318,
	0,
	333);
INSERT INTO PE_PE
	VALUES (333,
	1,
	2304,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (333,
	'Drive Enable',
	2,
	'DE',
	'This class controls the enable function of the drive.',
	0);
INSERT INTO O_NBATTR
	VALUES (2324,
	333);
INSERT INTO O_BATTR
	VALUES (2324,
	333);
INSERT INTO O_ATTR
	VALUES (2324,
	333,
	2325,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2325,
	333);
INSERT INTO O_BATTR
	VALUES (2325,
	333);
INSERT INTO O_ATTR
	VALUES (2325,
	333,
	2323,
	'disable_timer',
	'',
	'',
	'disable_timer',
	0,
	230,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2323,
	333);
INSERT INTO O_BATTR
	VALUES (2323,
	333);
INSERT INTO O_ATTR
	VALUES (2323,
	333,
	0,
	'disable_delay',
	'The amount of time the drive should remain enabled after a jog is complete before disabling.',
	'',
	'disable_delay',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	333);
INSERT INTO O_ID
	VALUES (1,
	333);
INSERT INTO O_ID
	VALUES (2,
	333);
INSERT INTO SM_ISM
	VALUES (336,
	333);
INSERT INTO SM_SM
	VALUES (336,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (336);
INSERT INTO SM_LEVT
	VALUES (2326,
	336,
	0);
INSERT INTO SM_SEVT
	VALUES (2326,
	336,
	0);
INSERT INTO SM_EVT
	VALUES (2326,
	336,
	0,
	1,
	'enable_drive',
	0,
	'',
	'DE1',
	'');
INSERT INTO SM_LEVT
	VALUES (2327,
	336,
	0);
INSERT INTO SM_SEVT
	VALUES (2327,
	336,
	0);
INSERT INTO SM_EVT
	VALUES (2327,
	336,
	0,
	2,
	'disable_drive',
	0,
	'',
	'DE2',
	'');
INSERT INTO SM_LEVT
	VALUES (335,
	336,
	0);
INSERT INTO SM_SEVT
	VALUES (335,
	336,
	0);
INSERT INTO SM_EVT
	VALUES (335,
	336,
	0,
	3,
	'drive_signals_done',
	0,
	'',
	'DE3',
	'');
INSERT INTO SM_LEVT
	VALUES (2328,
	336,
	0);
INSERT INTO SM_SEVT
	VALUES (2328,
	336,
	0);
INSERT INTO SM_EVT
	VALUES (2328,
	336,
	0,
	4,
	'delay_timer_expired',
	0,
	'',
	'DE4',
	'');
INSERT INTO SM_STATE
	VALUES (2329,
	336,
	0,
	'Drive Disabled',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2329,
	2326,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2329,
	2327,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2329,
	2327,
	336,
	0);
INSERT INTO SM_EIGN
	VALUES (2329,
	335,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2329,
	335,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2329,
	2328,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2329,
	2328,
	336,
	0);
INSERT INTO SM_MOAH
	VALUES (2330,
	336,
	2329);
INSERT INTO SM_AH
	VALUES (2330,
	336);
INSERT INTO SM_ACT
	VALUES (2330,
	336,
	1,
	'generate MI_A5:drive_disabled() to MI assigner;
',
	'');
INSERT INTO ACT_SAB
	VALUES (2331,
	336,
	2330);
INSERT INTO ACT_ACT
	VALUES (2331,
	'state',
	0,
	2332,
	0,
	0,
	'Drive Enable::Drive Disabled',
	0);
INSERT INTO ACT_BLK
	VALUES (2332,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	36,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2331,
	0);
INSERT INTO ACT_SMT
	VALUES (2333,
	2332,
	0,
	1,
	1,
	'Drive Enable::Drive Disabled line: 1');
INSERT INTO E_ESS
	VALUES (2333,
	1,
	0,
	1,
	10,
	1,
	16,
	1,
	36,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2333);
INSERT INTO E_GSME
	VALUES (2333,
	2334);
INSERT INTO E_GAR
	VALUES (2333);
INSERT INTO SM_STATE
	VALUES (2335,
	336,
	0,
	'Initiate Enable',
	2,
	0);
INSERT INTO SM_CH
	VALUES (2335,
	2326,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2335,
	2326,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2335,
	2327,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2335,
	2327,
	336,
	0);
INSERT INTO SM_SEME
	VALUES (2335,
	335,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2335,
	2328,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2335,
	2328,
	336,
	0);
INSERT INTO SM_MOAH
	VALUES (2336,
	336,
	2335);
INSERT INTO SM_AH
	VALUES (2336,
	336);
INSERT INTO SM_ACT
	VALUES (2336,
	336,
	1,
	'// Enable the drive
drive::enable_drive(enable: True);
',
	'');
INSERT INTO ACT_SAB
	VALUES (2337,
	336,
	2336);
INSERT INTO ACT_ACT
	VALUES (2337,
	'state',
	0,
	2338,
	0,
	0,
	'Drive Enable::Initiate Enable',
	0);
INSERT INTO ACT_BLK
	VALUES (2338,
	0,
	0,
	0,
	'drive',
	'',
	'',
	2,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2337,
	0);
INSERT INTO ACT_SMT
	VALUES (2339,
	2338,
	0,
	2,
	1,
	'Drive Enable::Initiate Enable line: 2');
INSERT INTO ACT_SGN
	VALUES (2339,
	2,
	8,
	2,
	1,
	0,
	304,
	0);
INSERT INTO V_VAL
	VALUES (2340,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	2338);
INSERT INTO V_LBO
	VALUES (2340,
	'TRUE');
INSERT INTO V_PAR
	VALUES (2340,
	2339,
	0,
	'enable',
	0,
	2,
	21);
INSERT INTO SM_STATE
	VALUES (2341,
	336,
	0,
	'Drive Enabled',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2341,
	2326,
	336,
	0);
INSERT INTO SM_SEME
	VALUES (2341,
	2327,
	336,
	0);
INSERT INTO SM_EIGN
	VALUES (2341,
	335,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2341,
	335,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2341,
	2328,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2341,
	2328,
	336,
	0);
INSERT INTO SM_MOAH
	VALUES (2342,
	336,
	2341);
INSERT INTO SM_AH
	VALUES (2342,
	336);
INSERT INTO SM_ACT
	VALUES (2342,
	336,
	1,
	'generate MI_A2:drive_enabled() to MI assigner;

',
	'');
INSERT INTO ACT_SAB
	VALUES (2343,
	336,
	2342);
INSERT INTO ACT_ACT
	VALUES (2343,
	'state',
	0,
	2344,
	0,
	0,
	'Drive Enable::Drive Enabled',
	0);
INSERT INTO ACT_BLK
	VALUES (2344,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	35,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2343,
	0);
INSERT INTO ACT_SMT
	VALUES (2345,
	2344,
	0,
	1,
	1,
	'Drive Enable::Drive Enabled line: 1');
INSERT INTO E_ESS
	VALUES (2345,
	1,
	0,
	1,
	10,
	1,
	16,
	1,
	35,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2345);
INSERT INTO E_GSME
	VALUES (2345,
	2346);
INSERT INTO E_GAR
	VALUES (2345);
INSERT INTO SM_STATE
	VALUES (2347,
	336,
	0,
	'Disable Delay',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (2347,
	2326,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2347,
	2327,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2347,
	2327,
	336,
	0);
INSERT INTO SM_EIGN
	VALUES (2347,
	335,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2347,
	335,
	336,
	0);
INSERT INTO SM_SEME
	VALUES (2347,
	2328,
	336,
	0);
INSERT INTO SM_MOAH
	VALUES (2348,
	336,
	2347);
INSERT INTO SM_AH
	VALUES (2348,
	336);
INSERT INTO SM_ACT
	VALUES (2348,
	336,
	1,
	'// Start a timer to control how long the drive should stay enabled after the move 
//    is complete.
// 


create event instance timer_expired of DE4:delay_timer_expired to self;
self.disable_timer = 
            TIM::timer_start(microseconds: self.disable_delay * 1000, 
                               event_inst: timer_expired);

',
	'');
INSERT INTO ACT_SAB
	VALUES (2349,
	336,
	2348);
INSERT INTO ACT_ACT
	VALUES (2349,
	'state',
	0,
	2350,
	0,
	0,
	'Drive Enable::Disable Delay',
	0);
INSERT INTO ACT_BLK
	VALUES (2350,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	6,
	1,
	7,
	13,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2349,
	0);
INSERT INTO ACT_SMT
	VALUES (2351,
	2350,
	2352,
	5,
	1,
	'Drive Enable::Disable Delay line: 5');
INSERT INTO E_ESS
	VALUES (2351,
	1,
	0,
	5,
	40,
	5,
	44,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (2351,
	1,
	2353);
INSERT INTO E_CSME
	VALUES (2351,
	2328);
INSERT INTO E_CEI
	VALUES (2351,
	2354);
INSERT INTO ACT_SMT
	VALUES (2352,
	2350,
	0,
	6,
	1,
	'Drive Enable::Disable Delay line: 6');
INSERT INTO ACT_AI
	VALUES (2352,
	2355,
	2356,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2357,
	1,
	0,
	6,
	1,
	4,
	0,
	0,
	0,
	0,
	34,
	2350);
INSERT INTO V_IRF
	VALUES (2357,
	2354);
INSERT INTO V_VAL
	VALUES (2356,
	1,
	0,
	6,
	6,
	18,
	0,
	0,
	0,
	0,
	230,
	2350);
INSERT INTO V_AVL
	VALUES (2356,
	2357,
	333,
	2325);
INSERT INTO V_VAL
	VALUES (2355,
	0,
	0,
	7,
	18,
	-1,
	7,
	30,
	8,
	32,
	230,
	2350);
INSERT INTO V_BRV
	VALUES (2355,
	2358,
	1,
	7,
	13);
INSERT INTO V_VAL
	VALUES (2359,
	0,
	0,
	7,
	44,
	47,
	0,
	0,
	0,
	0,
	34,
	2350);
INSERT INTO V_IRF
	VALUES (2359,
	2354);
INSERT INTO V_VAL
	VALUES (2360,
	0,
	0,
	7,
	49,
	61,
	0,
	0,
	0,
	0,
	186,
	2350);
INSERT INTO V_AVL
	VALUES (2360,
	2359,
	333,
	2323);
INSERT INTO V_VAL
	VALUES (2361,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	2350);
INSERT INTO V_BIN
	VALUES (2361,
	2362,
	2360,
	'*');
INSERT INTO V_PAR
	VALUES (2361,
	0,
	2355,
	'microseconds',
	2363,
	7,
	30);
INSERT INTO V_VAL
	VALUES (2362,
	0,
	0,
	7,
	65,
	68,
	0,
	0,
	0,
	0,
	186,
	2350);
INSERT INTO V_LIN
	VALUES (2362,
	'1000');
INSERT INTO V_VAL
	VALUES (2363,
	0,
	0,
	8,
	44,
	56,
	0,
	0,
	0,
	0,
	233,
	2350);
INSERT INTO V_TVL
	VALUES (2363,
	2353);
INSERT INTO V_PAR
	VALUES (2363,
	0,
	2355,
	'event_inst',
	0,
	8,
	32);
INSERT INTO V_VAR
	VALUES (2353,
	2350,
	'timer_expired',
	1,
	233);
INSERT INTO V_TRN
	VALUES (2353,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2354,
	2350,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2354,
	0,
	333);
INSERT INTO SM_STATE
	VALUES (2364,
	336,
	0,
	'Initiate Disable',
	5,
	0);
INSERT INTO SM_CH
	VALUES (2364,
	2326,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2364,
	2326,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2364,
	2327,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2364,
	2327,
	336,
	0);
INSERT INTO SM_SEME
	VALUES (2364,
	335,
	336,
	0);
INSERT INTO SM_CH
	VALUES (2364,
	2328,
	336,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2364,
	2328,
	336,
	0);
INSERT INTO SM_MOAH
	VALUES (2365,
	336,
	2364);
INSERT INTO SM_AH
	VALUES (2365,
	336);
INSERT INTO SM_ACT
	VALUES (2365,
	336,
	1,
	'// Disable the drive
drive::enable_drive(enable: False);

generate MI_A4:drive_disable_lockout() to MI assigner;

',
	'');
INSERT INTO ACT_SAB
	VALUES (2366,
	336,
	2365);
INSERT INTO ACT_ACT
	VALUES (2366,
	'state',
	0,
	2367,
	0,
	0,
	'Drive Enable::Initiate Disable',
	0);
INSERT INTO ACT_BLK
	VALUES (2367,
	0,
	0,
	0,
	'drive',
	'',
	'',
	4,
	1,
	4,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2366,
	0);
INSERT INTO ACT_SMT
	VALUES (2368,
	2367,
	2369,
	2,
	1,
	'Drive Enable::Initiate Disable line: 2');
INSERT INTO ACT_SGN
	VALUES (2368,
	2,
	8,
	2,
	1,
	0,
	304,
	0);
INSERT INTO ACT_SMT
	VALUES (2369,
	2367,
	0,
	4,
	1,
	'Drive Enable::Initiate Disable line: 4');
INSERT INTO E_ESS
	VALUES (2369,
	1,
	0,
	4,
	10,
	4,
	16,
	4,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2369);
INSERT INTO E_GSME
	VALUES (2369,
	2370);
INSERT INTO E_GAR
	VALUES (2369);
INSERT INTO V_VAL
	VALUES (2371,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	2367);
INSERT INTO V_LBO
	VALUES (2371,
	'FALSE');
INSERT INTO V_PAR
	VALUES (2371,
	2368,
	0,
	'enable',
	0,
	2,
	21);
INSERT INTO SM_NSTXN
	VALUES (2372,
	336,
	2329,
	2326,
	0);
INSERT INTO SM_TAH
	VALUES (2373,
	336,
	2372);
INSERT INTO SM_AH
	VALUES (2373,
	336);
INSERT INTO SM_ACT
	VALUES (2373,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2374,
	336,
	2373);
INSERT INTO ACT_ACT
	VALUES (2374,
	'transition',
	0,
	2375,
	0,
	0,
	'DE1: enable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (2375,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2374,
	0);
INSERT INTO SM_TXN
	VALUES (2372,
	336,
	2335,
	0);
INSERT INTO SM_NSTXN
	VALUES (2376,
	336,
	2335,
	335,
	0);
INSERT INTO SM_TAH
	VALUES (2377,
	336,
	2376);
INSERT INTO SM_AH
	VALUES (2377,
	336);
INSERT INTO SM_ACT
	VALUES (2377,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2378,
	336,
	2377);
INSERT INTO ACT_ACT
	VALUES (2378,
	'transition',
	0,
	2379,
	0,
	0,
	'DE3: drive_signals_done',
	0);
INSERT INTO ACT_BLK
	VALUES (2379,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2378,
	0);
INSERT INTO SM_TXN
	VALUES (2376,
	336,
	2341,
	0);
INSERT INTO SM_NSTXN
	VALUES (2380,
	336,
	2341,
	2327,
	0);
INSERT INTO SM_TAH
	VALUES (2381,
	336,
	2380);
INSERT INTO SM_AH
	VALUES (2381,
	336);
INSERT INTO SM_ACT
	VALUES (2381,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2382,
	336,
	2381);
INSERT INTO ACT_ACT
	VALUES (2382,
	'transition',
	0,
	2383,
	0,
	0,
	'DE2: disable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (2383,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2382,
	0);
INSERT INTO SM_TXN
	VALUES (2380,
	336,
	2347,
	0);
INSERT INTO SM_NSTXN
	VALUES (2384,
	336,
	2347,
	2326,
	0);
INSERT INTO SM_TAH
	VALUES (2385,
	336,
	2384);
INSERT INTO SM_AH
	VALUES (2385,
	336);
INSERT INTO SM_ACT
	VALUES (2385,
	336,
	1,
	'// If the timer is running stop it.

existed = TIM::timer_cancel(timer_inst_ref: self.disable_timer);
',
	'');
INSERT INTO ACT_TAB
	VALUES (2386,
	336,
	2385);
INSERT INTO ACT_ACT
	VALUES (2386,
	'transition',
	0,
	2387,
	0,
	0,
	'DE1: enable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (2387,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	11,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2386,
	0);
INSERT INTO ACT_SMT
	VALUES (2388,
	2387,
	0,
	3,
	1,
	'DE1: enable_drive line: 3');
INSERT INTO ACT_AI
	VALUES (2388,
	2389,
	2390,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2390,
	1,
	1,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	87,
	2387);
INSERT INTO V_TVL
	VALUES (2390,
	2391);
INSERT INTO V_VAL
	VALUES (2389,
	0,
	0,
	3,
	16,
	-1,
	3,
	29,
	0,
	0,
	87,
	2387);
INSERT INTO V_BRV
	VALUES (2389,
	2392,
	1,
	3,
	11);
INSERT INTO V_VAL
	VALUES (2393,
	0,
	0,
	3,
	45,
	48,
	0,
	0,
	0,
	0,
	34,
	2387);
INSERT INTO V_IRF
	VALUES (2393,
	2394);
INSERT INTO V_VAL
	VALUES (2395,
	0,
	0,
	3,
	50,
	62,
	0,
	0,
	0,
	0,
	230,
	2387);
INSERT INTO V_AVL
	VALUES (2395,
	2393,
	333,
	2325);
INSERT INTO V_PAR
	VALUES (2395,
	0,
	2389,
	'timer_inst_ref',
	0,
	3,
	29);
INSERT INTO V_VAR
	VALUES (2391,
	2387,
	'existed',
	1,
	87);
INSERT INTO V_TRN
	VALUES (2391,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2394,
	2387,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2394,
	0,
	333);
INSERT INTO SM_TXN
	VALUES (2384,
	336,
	2341,
	0);
INSERT INTO SM_NSTXN
	VALUES (2396,
	336,
	2347,
	2328,
	0);
INSERT INTO SM_TAH
	VALUES (2397,
	336,
	2396);
INSERT INTO SM_AH
	VALUES (2397,
	336);
INSERT INTO SM_ACT
	VALUES (2397,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2398,
	336,
	2397);
INSERT INTO ACT_ACT
	VALUES (2398,
	'transition',
	0,
	2399,
	0,
	0,
	'DE4: delay_timer_expired',
	0);
INSERT INTO ACT_BLK
	VALUES (2399,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2398,
	0);
INSERT INTO SM_TXN
	VALUES (2396,
	336,
	2364,
	0);
INSERT INTO SM_NSTXN
	VALUES (2400,
	336,
	2364,
	335,
	0);
INSERT INTO SM_TAH
	VALUES (2401,
	336,
	2400);
INSERT INTO SM_AH
	VALUES (2401,
	336);
INSERT INTO SM_ACT
	VALUES (2401,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2402,
	336,
	2401);
INSERT INTO ACT_ACT
	VALUES (2402,
	'transition',
	0,
	2403,
	0,
	0,
	'DE3: drive_signals_done',
	0);
INSERT INTO ACT_BLK
	VALUES (2403,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2402,
	0);
INSERT INTO SM_TXN
	VALUES (2400,
	336,
	2329,
	0);
INSERT INTO SM_NSTXN
	VALUES (2404,
	336,
	2341,
	2326,
	0);
INSERT INTO SM_TAH
	VALUES (2405,
	336,
	2404);
INSERT INTO SM_AH
	VALUES (2405,
	336);
INSERT INTO SM_ACT
	VALUES (2405,
	336,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2406,
	336,
	2405);
INSERT INTO ACT_ACT
	VALUES (2406,
	'transition',
	0,
	2407,
	0,
	0,
	'DE1: enable_drive',
	0);
INSERT INTO ACT_BLK
	VALUES (2407,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2406,
	0);
INSERT INTO SM_TXN
	VALUES (2404,
	336,
	2341,
	0);
INSERT INTO PE_PE
	VALUES (2408,
	1,
	2304,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2408,
	'Fault',
	6,
	'FLT',
	'',
	0);
INSERT INTO O_ID
	VALUES (0,
	2408);
INSERT INTO O_ID
	VALUES (1,
	2408);
INSERT INTO O_ID
	VALUES (2,
	2408);
INSERT INTO PE_PE
	VALUES (323,
	1,
	2304,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (323,
	'Motion Controller',
	3,
	'MC',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (2409,
	323);
INSERT INTO O_BATTR
	VALUES (2409,
	323);
INSERT INTO O_ATTR
	VALUES (2409,
	323,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2410,
	323);
INSERT INTO O_BATTR
	VALUES (2410,
	323);
INSERT INTO O_ATTR
	VALUES (2410,
	323,
	2409,
	'move_timer',
	'',
	'',
	'move_timer',
	0,
	230,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2411,
	323);
INSERT INTO O_BATTR
	VALUES (2411,
	323);
INSERT INTO O_ATTR
	VALUES (2411,
	323,
	2410,
	'move_duration',
	'',
	'',
	'move_duration',
	0,
	186,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	323);
INSERT INTO O_ID
	VALUES (1,
	323);
INSERT INTO O_ID
	VALUES (2,
	323);
INSERT INTO SM_ISM
	VALUES (325,
	323);
INSERT INTO SM_SM
	VALUES (325,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (325);
INSERT INTO SM_EVTDI
	VALUES (2412,
	325,
	'direction',
	'',
	290,
	'',
	2413,
	0);
INSERT INTO SM_EVTDI
	VALUES (2414,
	325,
	'velocity',
	'',
	186,
	'',
	2413,
	2412);
INSERT INTO SM_EVTDI
	VALUES (2415,
	325,
	'acceleration',
	'',
	186,
	'',
	2413,
	2414);
INSERT INTO SM_EVTDI
	VALUES (2416,
	325,
	'duration',
	'',
	186,
	'',
	2413,
	2415);
INSERT INTO SM_LEVT
	VALUES (2413,
	325,
	0);
INSERT INTO SM_SEVT
	VALUES (2413,
	325,
	0);
INSERT INTO SM_EVT
	VALUES (2413,
	325,
	0,
	1,
	'jog_cmd',
	0,
	'',
	'MC1',
	'');
INSERT INTO SM_LEVT
	VALUES (324,
	325,
	0);
INSERT INTO SM_SEVT
	VALUES (324,
	325,
	0);
INSERT INTO SM_EVT
	VALUES (324,
	325,
	0,
	2,
	'drive_in_progress',
	0,
	'',
	'MC2',
	'');
INSERT INTO SM_LEVT
	VALUES (388,
	325,
	0);
INSERT INTO SM_SEVT
	VALUES (388,
	325,
	0);
INSERT INTO SM_EVT
	VALUES (388,
	325,
	0,
	3,
	'end_move',
	0,
	'',
	'MC3',
	'');
INSERT INTO SM_LEVT
	VALUES (339,
	325,
	0);
INSERT INTO SM_SEVT
	VALUES (339,
	325,
	0);
INSERT INTO SM_EVT
	VALUES (339,
	325,
	0,
	4,
	'drive_done',
	0,
	'',
	'MC4',
	'');
INSERT INTO SM_STATE
	VALUES (2417,
	325,
	0,
	'Idle',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2417,
	2413,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2417,
	324,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2417,
	324,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2417,
	388,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2417,
	388,
	325,
	0);
INSERT INTO SM_EIGN
	VALUES (2417,
	339,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2417,
	339,
	325,
	0);
INSERT INTO SM_MOAH
	VALUES (2418,
	325,
	2417);
INSERT INTO SM_AH
	VALUES (2418,
	325);
INSERT INTO SM_ACT
	VALUES (2418,
	325,
	1,
	'generate MI_A3:motion_complete() to MI assigner;

',
	'');
INSERT INTO ACT_SAB
	VALUES (2419,
	325,
	2418);
INSERT INTO ACT_ACT
	VALUES (2419,
	'state',
	0,
	2420,
	0,
	0,
	'Motion Controller::Idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2420,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	37,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2419,
	0);
INSERT INTO ACT_SMT
	VALUES (2421,
	2420,
	0,
	1,
	1,
	'Motion Controller::Idle line: 1');
INSERT INTO E_ESS
	VALUES (2421,
	1,
	0,
	1,
	10,
	1,
	16,
	1,
	37,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2421);
INSERT INTO E_GSME
	VALUES (2421,
	2422);
INSERT INTO E_GAR
	VALUES (2421);
INSERT INTO SM_STATE
	VALUES (2423,
	325,
	0,
	'InitiateMove',
	2,
	0);
INSERT INTO SM_CH
	VALUES (2423,
	2413,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2423,
	2413,
	325,
	0);
INSERT INTO SM_SEME
	VALUES (2423,
	324,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2423,
	388,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2423,
	388,
	325,
	0);
INSERT INTO SM_EIGN
	VALUES (2423,
	339,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2423,
	339,
	325,
	0);
INSERT INTO SM_MOAH
	VALUES (2424,
	325,
	2423);
INSERT INTO SM_AH
	VALUES (2424,
	325);
INSERT INTO SM_ACT
	VALUES (2424,
	325,
	1,
	'// Start the move. 
// 


// Jog the motor
drive::jog_motor(motor_direction: rcvd_evt.direction,
                        velocity: rcvd_evt.velocity, 
                    acceleration: rcvd_evt.acceleration);

self.move_duration = rcvd_evt.duration;
',
	'');
INSERT INTO ACT_SAB
	VALUES (2425,
	325,
	2424);
INSERT INTO ACT_ACT
	VALUES (2425,
	'state',
	0,
	2426,
	0,
	0,
	'Motion Controller::InitiateMove',
	0);
INSERT INTO ACT_BLK
	VALUES (2426,
	0,
	0,
	0,
	'drive',
	'',
	'',
	9,
	1,
	5,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2425,
	0);
INSERT INTO ACT_SMT
	VALUES (2427,
	2426,
	2428,
	5,
	1,
	'Motion Controller::InitiateMove line: 5');
INSERT INTO ACT_SGN
	VALUES (2427,
	5,
	8,
	5,
	1,
	0,
	308,
	0);
INSERT INTO ACT_SMT
	VALUES (2428,
	2426,
	0,
	9,
	1,
	'Motion Controller::InitiateMove line: 9');
INSERT INTO ACT_AI
	VALUES (2428,
	2429,
	2430,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2431,
	0,
	0,
	5,
	44,
	52,
	0,
	0,
	0,
	0,
	290,
	2426);
INSERT INTO V_EDV
	VALUES (2431);
INSERT INTO V_EPR
	VALUES (2431,
	325,
	2412,
	0);
INSERT INTO V_EPR
	VALUES (2431,
	325,
	2412,
	0);
INSERT INTO V_PAR
	VALUES (2431,
	2427,
	0,
	'motor_direction',
	2432,
	5,
	18);
INSERT INTO V_VAL
	VALUES (2432,
	0,
	0,
	6,
	44,
	51,
	0,
	0,
	0,
	0,
	186,
	2426);
INSERT INTO V_EDV
	VALUES (2432);
INSERT INTO V_EPR
	VALUES (2432,
	325,
	2414,
	0);
INSERT INTO V_EPR
	VALUES (2432,
	325,
	2414,
	0);
INSERT INTO V_PAR
	VALUES (2432,
	2427,
	0,
	'velocity',
	2433,
	6,
	25);
INSERT INTO V_VAL
	VALUES (2433,
	0,
	0,
	7,
	44,
	55,
	0,
	0,
	0,
	0,
	186,
	2426);
INSERT INTO V_EDV
	VALUES (2433);
INSERT INTO V_EPR
	VALUES (2433,
	325,
	2415,
	0);
INSERT INTO V_EPR
	VALUES (2433,
	325,
	2415,
	0);
INSERT INTO V_PAR
	VALUES (2433,
	2427,
	0,
	'acceleration',
	0,
	7,
	21);
INSERT INTO V_VAL
	VALUES (2434,
	1,
	0,
	9,
	1,
	4,
	0,
	0,
	0,
	0,
	34,
	2426);
INSERT INTO V_IRF
	VALUES (2434,
	2435);
INSERT INTO V_VAL
	VALUES (2430,
	1,
	0,
	9,
	6,
	18,
	0,
	0,
	0,
	0,
	186,
	2426);
INSERT INTO V_AVL
	VALUES (2430,
	2434,
	323,
	2411);
INSERT INTO V_VAL
	VALUES (2429,
	0,
	0,
	9,
	31,
	38,
	0,
	0,
	0,
	0,
	186,
	2426);
INSERT INTO V_EDV
	VALUES (2429);
INSERT INTO V_EPR
	VALUES (2429,
	325,
	2416,
	0);
INSERT INTO V_EPR
	VALUES (2429,
	325,
	2416,
	0);
INSERT INTO V_VAR
	VALUES (2435,
	2426,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2435,
	0,
	323);
INSERT INTO SM_STATE
	VALUES (2436,
	325,
	0,
	'Moving',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2436,
	2413,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2436,
	324,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2436,
	324,
	325,
	0);
INSERT INTO SM_SEME
	VALUES (2436,
	388,
	325,
	0);
INSERT INTO SM_EIGN
	VALUES (2436,
	339,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2436,
	339,
	325,
	0);
INSERT INTO SM_MOAH
	VALUES (2437,
	325,
	2436);
INSERT INTO SM_AH
	VALUES (2437,
	325);
INSERT INTO SM_ACT
	VALUES (2437,
	325,
	1,
	'// The move has started.  If a duration is set, start a timer to stop the move
//    after the specified amount of time. 

   
if self.move_duration > 0;
   create event instance timer_expired of MC3:end_move() to self;
   self.move_timer = 
            TIM::timer_start(microseconds: self.move_duration * 1000, 
                               event_inst: timer_expired);
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (2438,
	325,
	2437);
INSERT INTO ACT_ACT
	VALUES (2438,
	'state',
	0,
	2439,
	0,
	0,
	'Motion Controller::Moving',
	0);
INSERT INTO ACT_BLK
	VALUES (2439,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2438,
	0);
INSERT INTO ACT_SMT
	VALUES (2440,
	2439,
	0,
	4,
	1,
	'Motion Controller::Moving line: 4');
INSERT INTO ACT_IF
	VALUES (2440,
	2441,
	2442,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2443,
	0,
	0,
	4,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	2439);
INSERT INTO V_IRF
	VALUES (2443,
	2444);
INSERT INTO V_VAL
	VALUES (2445,
	0,
	0,
	4,
	9,
	21,
	0,
	0,
	0,
	0,
	186,
	2439);
INSERT INTO V_AVL
	VALUES (2445,
	2443,
	323,
	2411);
INSERT INTO V_VAL
	VALUES (2442,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	2439);
INSERT INTO V_BIN
	VALUES (2442,
	2446,
	2445,
	'>');
INSERT INTO V_VAL
	VALUES (2446,
	0,
	0,
	4,
	25,
	25,
	0,
	0,
	0,
	0,
	186,
	2439);
INSERT INTO V_LIN
	VALUES (2446,
	'0');
INSERT INTO V_VAR
	VALUES (2444,
	2439,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2444,
	0,
	323);
INSERT INTO ACT_BLK
	VALUES (2441,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	6,
	4,
	7,
	13,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2438,
	0);
INSERT INTO ACT_SMT
	VALUES (2447,
	2441,
	2448,
	5,
	4,
	'Motion Controller::Moving line: 5');
INSERT INTO E_ESS
	VALUES (2447,
	1,
	0,
	5,
	43,
	5,
	47,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (2447,
	1,
	2449);
INSERT INTO E_CSME
	VALUES (2447,
	388);
INSERT INTO E_CEI
	VALUES (2447,
	2444);
INSERT INTO ACT_SMT
	VALUES (2448,
	2441,
	0,
	6,
	4,
	'Motion Controller::Moving line: 6');
INSERT INTO ACT_AI
	VALUES (2448,
	2450,
	2451,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2452,
	1,
	0,
	6,
	4,
	7,
	0,
	0,
	0,
	0,
	34,
	2441);
INSERT INTO V_IRF
	VALUES (2452,
	2444);
INSERT INTO V_VAL
	VALUES (2451,
	1,
	0,
	6,
	9,
	18,
	0,
	0,
	0,
	0,
	230,
	2441);
INSERT INTO V_AVL
	VALUES (2451,
	2452,
	323,
	2410);
INSERT INTO V_VAL
	VALUES (2450,
	0,
	0,
	7,
	18,
	-1,
	7,
	30,
	8,
	32,
	230,
	2441);
INSERT INTO V_BRV
	VALUES (2450,
	2358,
	1,
	7,
	13);
INSERT INTO V_VAL
	VALUES (2453,
	0,
	0,
	7,
	44,
	47,
	0,
	0,
	0,
	0,
	34,
	2441);
INSERT INTO V_IRF
	VALUES (2453,
	2444);
INSERT INTO V_VAL
	VALUES (2454,
	0,
	0,
	7,
	49,
	61,
	0,
	0,
	0,
	0,
	186,
	2441);
INSERT INTO V_AVL
	VALUES (2454,
	2453,
	323,
	2411);
INSERT INTO V_VAL
	VALUES (2455,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	186,
	2441);
INSERT INTO V_BIN
	VALUES (2455,
	2456,
	2454,
	'*');
INSERT INTO V_PAR
	VALUES (2455,
	0,
	2450,
	'microseconds',
	2457,
	7,
	30);
INSERT INTO V_VAL
	VALUES (2456,
	0,
	0,
	7,
	65,
	68,
	0,
	0,
	0,
	0,
	186,
	2441);
INSERT INTO V_LIN
	VALUES (2456,
	'1000');
INSERT INTO V_VAL
	VALUES (2457,
	0,
	0,
	8,
	44,
	56,
	0,
	0,
	0,
	0,
	233,
	2441);
INSERT INTO V_TVL
	VALUES (2457,
	2449);
INSERT INTO V_PAR
	VALUES (2457,
	0,
	2450,
	'event_inst',
	0,
	8,
	32);
INSERT INTO V_VAR
	VALUES (2449,
	2441,
	'timer_expired',
	1,
	233);
INSERT INTO V_TRN
	VALUES (2449,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (2458,
	325,
	0,
	'InitiateStop',
	4,
	0);
INSERT INTO SM_CH
	VALUES (2458,
	2413,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2458,
	2413,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2458,
	324,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2458,
	324,
	325,
	0);
INSERT INTO SM_CH
	VALUES (2458,
	388,
	325,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2458,
	388,
	325,
	0);
INSERT INTO SM_SEME
	VALUES (2458,
	339,
	325,
	0);
INSERT INTO SM_MOAH
	VALUES (2459,
	325,
	2458);
INSERT INTO SM_AH
	VALUES (2459,
	325);
INSERT INTO SM_ACT
	VALUES (2459,
	325,
	1,
	'// Set the motor speed to zero
drive::stop_motor();

',
	'');
INSERT INTO ACT_SAB
	VALUES (2460,
	325,
	2459);
INSERT INTO ACT_ACT
	VALUES (2460,
	'state',
	0,
	2461,
	0,
	0,
	'Motion Controller::InitiateStop',
	0);
INSERT INTO ACT_BLK
	VALUES (2461,
	0,
	0,
	0,
	'drive',
	'',
	'',
	2,
	1,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2460,
	0);
INSERT INTO ACT_SMT
	VALUES (2462,
	2461,
	0,
	2,
	1,
	'Motion Controller::InitiateStop line: 2');
INSERT INTO ACT_SGN
	VALUES (2462,
	2,
	8,
	2,
	1,
	0,
	312,
	0);
INSERT INTO SM_NSTXN
	VALUES (2463,
	325,
	2423,
	324,
	0);
INSERT INTO SM_TAH
	VALUES (2464,
	325,
	2463);
INSERT INTO SM_AH
	VALUES (2464,
	325);
INSERT INTO SM_ACT
	VALUES (2464,
	325,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2465,
	325,
	2464);
INSERT INTO ACT_ACT
	VALUES (2465,
	'transition',
	0,
	2466,
	0,
	0,
	'MC2: drive_in_progress',
	0);
INSERT INTO ACT_BLK
	VALUES (2466,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2465,
	0);
INSERT INTO SM_TXN
	VALUES (2463,
	325,
	2436,
	0);
INSERT INTO SM_NSTXN
	VALUES (2467,
	325,
	2436,
	388,
	0);
INSERT INTO SM_TAH
	VALUES (2468,
	325,
	2467);
INSERT INTO SM_AH
	VALUES (2468,
	325);
INSERT INTO SM_ACT
	VALUES (2468,
	325,
	1,
	'// If the timer is running stop it.

existed = TIM::timer_cancel(timer_inst_ref: self.move_timer);
',
	'');
INSERT INTO ACT_TAB
	VALUES (2469,
	325,
	2468);
INSERT INTO ACT_ACT
	VALUES (2469,
	'transition',
	0,
	2470,
	0,
	0,
	'MC3: end_move',
	0);
INSERT INTO ACT_BLK
	VALUES (2470,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	11,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2469,
	0);
INSERT INTO ACT_SMT
	VALUES (2471,
	2470,
	0,
	3,
	1,
	'MC3: end_move line: 3');
INSERT INTO ACT_AI
	VALUES (2471,
	2472,
	2473,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2473,
	1,
	1,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	87,
	2470);
INSERT INTO V_TVL
	VALUES (2473,
	2474);
INSERT INTO V_VAL
	VALUES (2472,
	0,
	0,
	3,
	16,
	-1,
	3,
	29,
	0,
	0,
	87,
	2470);
INSERT INTO V_BRV
	VALUES (2472,
	2392,
	1,
	3,
	11);
INSERT INTO V_VAL
	VALUES (2475,
	0,
	0,
	3,
	45,
	48,
	0,
	0,
	0,
	0,
	34,
	2470);
INSERT INTO V_IRF
	VALUES (2475,
	2476);
INSERT INTO V_VAL
	VALUES (2477,
	0,
	0,
	3,
	50,
	59,
	0,
	0,
	0,
	0,
	230,
	2470);
INSERT INTO V_AVL
	VALUES (2477,
	2475,
	323,
	2410);
INSERT INTO V_PAR
	VALUES (2477,
	0,
	2472,
	'timer_inst_ref',
	0,
	3,
	29);
INSERT INTO V_VAR
	VALUES (2474,
	2470,
	'existed',
	1,
	87);
INSERT INTO V_TRN
	VALUES (2474,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2476,
	2470,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2476,
	0,
	323);
INSERT INTO SM_TXN
	VALUES (2467,
	325,
	2458,
	0);
INSERT INTO SM_NSTXN
	VALUES (2478,
	325,
	2458,
	339,
	0);
INSERT INTO SM_TAH
	VALUES (2479,
	325,
	2478);
INSERT INTO SM_AH
	VALUES (2479,
	325);
INSERT INTO SM_ACT
	VALUES (2479,
	325,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2480,
	325,
	2479);
INSERT INTO ACT_ACT
	VALUES (2480,
	'transition',
	0,
	2481,
	0,
	0,
	'MC4: drive_done',
	0);
INSERT INTO ACT_BLK
	VALUES (2481,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2480,
	0);
INSERT INTO SM_TXN
	VALUES (2478,
	325,
	2417,
	0);
INSERT INTO SM_NSTXN
	VALUES (2482,
	325,
	2436,
	2413,
	0);
INSERT INTO SM_TAH
	VALUES (2483,
	325,
	2482);
INSERT INTO SM_AH
	VALUES (2483,
	325);
INSERT INTO SM_ACT
	VALUES (2483,
	325,
	1,
	'// If the timer is running stop it.

existed = TIM::timer_cancel(timer_inst_ref: self.move_timer);
',
	'');
INSERT INTO ACT_TAB
	VALUES (2484,
	325,
	2483);
INSERT INTO ACT_ACT
	VALUES (2484,
	'transition',
	0,
	2485,
	0,
	0,
	'MC1: jog_cmd',
	0);
INSERT INTO ACT_BLK
	VALUES (2485,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	11,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2484,
	0);
INSERT INTO ACT_SMT
	VALUES (2486,
	2485,
	0,
	3,
	1,
	'MC1: jog_cmd line: 3');
INSERT INTO ACT_AI
	VALUES (2486,
	2487,
	2488,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2488,
	1,
	1,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	87,
	2485);
INSERT INTO V_TVL
	VALUES (2488,
	2489);
INSERT INTO V_VAL
	VALUES (2487,
	0,
	0,
	3,
	16,
	-1,
	3,
	29,
	0,
	0,
	87,
	2485);
INSERT INTO V_BRV
	VALUES (2487,
	2392,
	1,
	3,
	11);
INSERT INTO V_VAL
	VALUES (2490,
	0,
	0,
	3,
	45,
	48,
	0,
	0,
	0,
	0,
	34,
	2485);
INSERT INTO V_IRF
	VALUES (2490,
	2491);
INSERT INTO V_VAL
	VALUES (2492,
	0,
	0,
	3,
	50,
	59,
	0,
	0,
	0,
	0,
	230,
	2485);
INSERT INTO V_AVL
	VALUES (2492,
	2490,
	323,
	2410);
INSERT INTO V_PAR
	VALUES (2492,
	0,
	2487,
	'timer_inst_ref',
	0,
	3,
	29);
INSERT INTO V_VAR
	VALUES (2489,
	2485,
	'existed',
	1,
	87);
INSERT INTO V_TRN
	VALUES (2489,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2491,
	2485,
	'self',
	1,
	34);
INSERT INTO V_INT
	VALUES (2491,
	0,
	323);
INSERT INTO SM_TXN
	VALUES (2482,
	325,
	2423,
	0);
INSERT INTO SM_NSTXN
	VALUES (2493,
	325,
	2417,
	2413,
	0);
INSERT INTO SM_TAH
	VALUES (2494,
	325,
	2493);
INSERT INTO SM_AH
	VALUES (2494,
	325);
INSERT INTO SM_ACT
	VALUES (2494,
	325,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2495,
	325,
	2494);
INSERT INTO ACT_ACT
	VALUES (2495,
	'transition',
	0,
	2496,
	0,
	0,
	'MC1: jog_cmd',
	0);
INSERT INTO ACT_BLK
	VALUES (2496,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2495,
	0);
INSERT INTO SM_TXN
	VALUES (2493,
	325,
	2423,
	0);
INSERT INTO PE_PE
	VALUES (355,
	1,
	2304,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (355,
	'Motion Instruction',
	1,
	'MI',
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (371,
	355);
INSERT INTO O_BATTR
	VALUES (371,
	355);
INSERT INTO O_ATTR
	VALUES (371,
	355,
	0,
	'direction',
	'',
	'',
	'direction',
	0,
	290,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (373,
	355);
INSERT INTO O_BATTR
	VALUES (373,
	355);
INSERT INTO O_ATTR
	VALUES (373,
	355,
	371,
	'velocity',
	'',
	'',
	'velocity',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (375,
	355);
INSERT INTO O_BATTR
	VALUES (375,
	355);
INSERT INTO O_ATTR
	VALUES (375,
	355,
	373,
	'acceleration',
	'',
	'',
	'acceleration',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (377,
	355);
INSERT INTO O_BATTR
	VALUES (377,
	355);
INSERT INTO O_ATTR
	VALUES (377,
	355,
	375,
	'duration',
	'',
	'',
	'duration',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2497,
	355);
INSERT INTO O_BATTR
	VALUES (2497,
	355);
INSERT INTO O_ATTR
	VALUES (2497,
	355,
	377,
	'stop1',
	'',
	'',
	'stop1',
	0,
	87,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	355);
INSERT INTO O_ID
	VALUES (1,
	355);
INSERT INTO O_ID
	VALUES (2,
	355);
INSERT INTO SM_ASM
	VALUES (369,
	355);
INSERT INTO SM_SM
	VALUES (369,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (369);
INSERT INTO SM_LEVT
	VALUES (368,
	369,
	0);
INSERT INTO SM_SEVT
	VALUES (368,
	369,
	0);
INSERT INTO SM_EVT
	VALUES (368,
	369,
	0,
	1,
	'jog_instruction_received',
	0,
	'',
	'MI_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2346,
	369,
	0);
INSERT INTO SM_SEVT
	VALUES (2346,
	369,
	0);
INSERT INTO SM_EVT
	VALUES (2346,
	369,
	0,
	2,
	'drive_enabled',
	0,
	'',
	'MI_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (2422,
	369,
	0);
INSERT INTO SM_SEVT
	VALUES (2422,
	369,
	0);
INSERT INTO SM_EVT
	VALUES (2422,
	369,
	0,
	3,
	'motion_complete',
	0,
	'',
	'MI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2334,
	369,
	0);
INSERT INTO SM_SEVT
	VALUES (2334,
	369,
	0);
INSERT INTO SM_EVT
	VALUES (2334,
	369,
	0,
	5,
	'drive_disabled',
	0,
	'',
	'MI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (2370,
	369,
	0);
INSERT INTO SM_SEVT
	VALUES (2370,
	369,
	0);
INSERT INTO SM_EVT
	VALUES (2370,
	369,
	0,
	4,
	'drive_disable_lockout',
	0,
	'',
	'MI_A4',
	'');
INSERT INTO SM_STATE
	VALUES (2498,
	369,
	0,
	'WaitingForInstruction',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2498,
	368,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2498,
	2346,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2498,
	2346,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2498,
	2422,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2498,
	2422,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2498,
	2334,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2498,
	2334,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2498,
	2370,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2498,
	2370,
	369,
	0);
INSERT INTO SM_MOAH
	VALUES (2499,
	369,
	2498);
INSERT INTO SM_AH
	VALUES (2499,
	369);
INSERT INTO SM_ACT
	VALUES (2499,
	369,
	1,
	'select any motion_inst from instances of MI;
if not_empty motion_inst;
   generate MI_A1:jog_instruction_received() to MI assigner;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (2500,
	369,
	2499);
INSERT INTO ACT_ACT
	VALUES (2500,
	'class state',
	0,
	2501,
	0,
	0,
	'Motion Instruction::WaitingForInstruction',
	0);
INSERT INTO ACT_BLK
	VALUES (2501,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	42,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2500,
	0);
INSERT INTO ACT_SMT
	VALUES (2502,
	2501,
	2503,
	1,
	1,
	'Motion Instruction::WaitingForInstruction line: 1');
INSERT INTO ACT_FIO
	VALUES (2502,
	2504,
	1,
	'any',
	355,
	1,
	42);
INSERT INTO ACT_SMT
	VALUES (2503,
	2501,
	0,
	2,
	1,
	'Motion Instruction::WaitingForInstruction line: 2');
INSERT INTO ACT_IF
	VALUES (2503,
	2505,
	2506,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2507,
	0,
	0,
	2,
	14,
	24,
	0,
	0,
	0,
	0,
	34,
	2501);
INSERT INTO V_IRF
	VALUES (2507,
	2504);
INSERT INTO V_VAL
	VALUES (2506,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	87,
	2501);
INSERT INTO V_UNY
	VALUES (2506,
	2507,
	'not_empty');
INSERT INTO V_VAR
	VALUES (2504,
	2501,
	'motion_inst',
	1,
	34);
INSERT INTO V_INT
	VALUES (2504,
	0,
	355);
INSERT INTO ACT_BLK
	VALUES (2505,
	0,
	0,
	0,
	'',
	'',
	'',
	3,
	4,
	3,
	49,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2500,
	0);
INSERT INTO ACT_SMT
	VALUES (2508,
	2505,
	0,
	3,
	4,
	'Motion Instruction::WaitingForInstruction line: 3');
INSERT INTO E_ESS
	VALUES (2508,
	1,
	0,
	3,
	13,
	3,
	19,
	3,
	49,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2508);
INSERT INTO E_GSME
	VALUES (2508,
	368);
INSERT INTO E_GAR
	VALUES (2508);
INSERT INTO SM_STATE
	VALUES (2509,
	369,
	0,
	'EnableDrive',
	2,
	0);
INSERT INTO SM_CH
	VALUES (2509,
	368,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2509,
	368,
	369,
	0);
INSERT INTO SM_SEME
	VALUES (2509,
	2346,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2509,
	2422,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2509,
	2422,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2509,
	2334,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2509,
	2334,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2509,
	2370,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2509,
	2370,
	369,
	0);
INSERT INTO SM_MOAH
	VALUES (2510,
	369,
	2509);
INSERT INTO SM_AH
	VALUES (2510,
	369);
INSERT INTO SM_ACT
	VALUES (2510,
	369,
	1,
	'// Enable the drive, or verify it is already enabled.
// 


select any drive_enable from instances of DE;
generate DE1:enable_drive() to drive_enable;
',
	'');
INSERT INTO ACT_SAB
	VALUES (2511,
	369,
	2510);
INSERT INTO ACT_ACT
	VALUES (2511,
	'class state',
	0,
	2512,
	0,
	0,
	'Motion Instruction::EnableDrive',
	0);
INSERT INTO ACT_BLK
	VALUES (2512,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	5,
	1,
	4,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2511,
	0);
INSERT INTO ACT_SMT
	VALUES (2513,
	2512,
	2514,
	4,
	1,
	'Motion Instruction::EnableDrive line: 4');
INSERT INTO ACT_FIO
	VALUES (2513,
	2515,
	1,
	'any',
	333,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (2514,
	2512,
	0,
	5,
	1,
	'Motion Instruction::EnableDrive line: 5');
INSERT INTO E_ESS
	VALUES (2514,
	1,
	0,
	5,
	10,
	5,
	14,
	4,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2514);
INSERT INTO E_GSME
	VALUES (2514,
	2326);
INSERT INTO E_GEN
	VALUES (2514,
	2515);
INSERT INTO V_VAR
	VALUES (2515,
	2512,
	'drive_enable',
	1,
	34);
INSERT INTO V_INT
	VALUES (2515,
	0,
	333);
INSERT INTO SM_STATE
	VALUES (2516,
	369,
	0,
	'ExecuteInstruction',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2516,
	368,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2516,
	2346,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2516,
	2346,
	369,
	0);
INSERT INTO SM_SEME
	VALUES (2516,
	2422,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2516,
	2334,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2516,
	2334,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2516,
	2370,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2516,
	2370,
	369,
	0);
INSERT INTO SM_MOAH
	VALUES (2517,
	369,
	2516);
INSERT INTO SM_AH
	VALUES (2517,
	369);
INSERT INTO SM_ACT
	VALUES (2517,
	369,
	1,
	'// Process the motion instruction. 

select any motion_controller from instances of MC;
select any motion_inst from instances of MI;
generate MC1:jog_cmd(direction: motion_inst.direction,
                      velocity: motion_inst.velocity,
                  acceleration: motion_inst.acceleration,
                      duration: motion_inst.duration) to motion_controller;

// Delete the instruction
delete object instance motion_inst;

// Inform client the motion was initiated.
client::motion_initiated();
',
	'');
INSERT INTO ACT_SAB
	VALUES (2518,
	369,
	2517);
INSERT INTO ACT_ACT
	VALUES (2518,
	'class state',
	0,
	2519,
	0,
	0,
	'Motion Instruction::ExecuteInstruction',
	0);
INSERT INTO ACT_BLK
	VALUES (2519,
	1,
	0,
	0,
	'client',
	'direction',
	'duration',
	14,
	1,
	14,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2518,
	0);
INSERT INTO ACT_SMT
	VALUES (2520,
	2519,
	2521,
	3,
	1,
	'Motion Instruction::ExecuteInstruction line: 3');
INSERT INTO ACT_FIO
	VALUES (2520,
	2522,
	1,
	'any',
	323,
	3,
	48);
INSERT INTO ACT_SMT
	VALUES (2521,
	2519,
	2523,
	4,
	1,
	'Motion Instruction::ExecuteInstruction line: 4');
INSERT INTO ACT_FIO
	VALUES (2521,
	2524,
	1,
	'any',
	355,
	4,
	42);
INSERT INTO ACT_SMT
	VALUES (2523,
	2519,
	2525,
	5,
	1,
	'Motion Instruction::ExecuteInstruction line: 5');
INSERT INTO E_ESS
	VALUES (2523,
	1,
	0,
	5,
	10,
	5,
	14,
	4,
	42,
	5,
	22,
	8,
	23);
INSERT INTO V_PAR
	VALUES (2526,
	2523,
	0,
	'velocity',
	2527,
	6,
	23);
INSERT INTO V_PAR
	VALUES (2527,
	2523,
	0,
	'acceleration',
	2528,
	7,
	19);
INSERT INTO V_PAR
	VALUES (2528,
	2523,
	0,
	'duration',
	0,
	8,
	23);
INSERT INTO V_PAR
	VALUES (2529,
	2523,
	0,
	'direction',
	2526,
	5,
	22);
INSERT INTO E_GES
	VALUES (2523);
INSERT INTO E_GSME
	VALUES (2523,
	2413);
INSERT INTO E_GEN
	VALUES (2523,
	2522);
INSERT INTO ACT_SMT
	VALUES (2525,
	2519,
	2530,
	11,
	1,
	'Motion Instruction::ExecuteInstruction line: 11');
INSERT INTO ACT_DEL
	VALUES (2525,
	2524);
INSERT INTO ACT_SMT
	VALUES (2530,
	2519,
	0,
	14,
	1,
	'Motion Instruction::ExecuteInstruction line: 14');
INSERT INTO ACT_SGN
	VALUES (2530,
	14,
	9,
	14,
	1,
	389,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2531,
	0,
	0,
	5,
	33,
	43,
	0,
	0,
	0,
	0,
	34,
	2519);
INSERT INTO V_IRF
	VALUES (2531,
	2524);
INSERT INTO V_VAL
	VALUES (2529,
	0,
	0,
	5,
	45,
	53,
	0,
	0,
	0,
	0,
	290,
	2519);
INSERT INTO V_AVL
	VALUES (2529,
	2531,
	355,
	371);
INSERT INTO V_VAL
	VALUES (2532,
	0,
	0,
	6,
	33,
	43,
	0,
	0,
	0,
	0,
	34,
	2519);
INSERT INTO V_IRF
	VALUES (2532,
	2524);
INSERT INTO V_VAL
	VALUES (2526,
	0,
	0,
	6,
	45,
	52,
	0,
	0,
	0,
	0,
	186,
	2519);
INSERT INTO V_AVL
	VALUES (2526,
	2532,
	355,
	373);
INSERT INTO V_VAL
	VALUES (2533,
	0,
	0,
	7,
	33,
	43,
	0,
	0,
	0,
	0,
	34,
	2519);
INSERT INTO V_IRF
	VALUES (2533,
	2524);
INSERT INTO V_VAL
	VALUES (2527,
	0,
	0,
	7,
	45,
	56,
	0,
	0,
	0,
	0,
	186,
	2519);
INSERT INTO V_AVL
	VALUES (2527,
	2533,
	355,
	375);
INSERT INTO V_VAL
	VALUES (2534,
	0,
	0,
	8,
	33,
	43,
	0,
	0,
	0,
	0,
	34,
	2519);
INSERT INTO V_IRF
	VALUES (2534,
	2524);
INSERT INTO V_VAL
	VALUES (2528,
	0,
	0,
	8,
	45,
	52,
	0,
	0,
	0,
	0,
	186,
	2519);
INSERT INTO V_AVL
	VALUES (2528,
	2534,
	355,
	377);
INSERT INTO V_VAR
	VALUES (2522,
	2519,
	'motion_controller',
	1,
	34);
INSERT INTO V_INT
	VALUES (2522,
	0,
	323);
INSERT INTO V_VAR
	VALUES (2524,
	2519,
	'motion_inst',
	1,
	34);
INSERT INTO V_INT
	VALUES (2524,
	0,
	355);
INSERT INTO SM_STATE
	VALUES (2535,
	369,
	0,
	'InitiateDriveDisable',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (2535,
	368,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2535,
	2346,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2535,
	2346,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2535,
	2422,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2535,
	2422,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2535,
	2334,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2535,
	2334,
	369,
	0);
INSERT INTO SM_SEME
	VALUES (2535,
	2370,
	369,
	0);
INSERT INTO SM_MOAH
	VALUES (2536,
	369,
	2535);
INSERT INTO SM_AH
	VALUES (2536,
	369);
INSERT INTO SM_ACT
	VALUES (2536,
	369,
	1,
	'// Disable the drive and inform the client.
// 


select any drive_enable from instances of DE;
generate DE2:disable_drive() to drive_enable;

// Inform the client the motor is not rotation and the drive is being disabled.
client::motion_complete();',
	'');
INSERT INTO ACT_SAB
	VALUES (2537,
	369,
	2536);
INSERT INTO ACT_ACT
	VALUES (2537,
	'class state',
	0,
	2538,
	0,
	0,
	'Motion Instruction::InitiateDriveDisable',
	0);
INSERT INTO ACT_BLK
	VALUES (2538,
	1,
	0,
	0,
	'client',
	'',
	'',
	8,
	1,
	8,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2537,
	0);
INSERT INTO ACT_SMT
	VALUES (2539,
	2538,
	2540,
	4,
	1,
	'Motion Instruction::InitiateDriveDisable line: 4');
INSERT INTO ACT_FIO
	VALUES (2539,
	2541,
	1,
	'any',
	333,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (2540,
	2538,
	2542,
	5,
	1,
	'Motion Instruction::InitiateDriveDisable line: 5');
INSERT INTO E_ESS
	VALUES (2540,
	1,
	0,
	5,
	10,
	5,
	14,
	4,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2540);
INSERT INTO E_GSME
	VALUES (2540,
	2327);
INSERT INTO E_GEN
	VALUES (2540,
	2541);
INSERT INTO ACT_SMT
	VALUES (2542,
	2538,
	0,
	8,
	1,
	'Motion Instruction::InitiateDriveDisable line: 8');
INSERT INTO ACT_SGN
	VALUES (2542,
	8,
	9,
	8,
	1,
	392,
	0,
	0);
INSERT INTO V_VAR
	VALUES (2541,
	2538,
	'drive_enable',
	1,
	34);
INSERT INTO V_INT
	VALUES (2541,
	0,
	333);
INSERT INTO SM_STATE
	VALUES (2543,
	369,
	0,
	'DriveDisabling',
	5,
	0);
INSERT INTO SM_CH
	VALUES (2543,
	368,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2543,
	368,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2543,
	2346,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2543,
	2346,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2543,
	2422,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2543,
	2422,
	369,
	0);
INSERT INTO SM_SEME
	VALUES (2543,
	2334,
	369,
	0);
INSERT INTO SM_CH
	VALUES (2543,
	2370,
	369,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2543,
	2370,
	369,
	0);
INSERT INTO SM_MOAH
	VALUES (2544,
	369,
	2543);
INSERT INTO SM_AH
	VALUES (2544,
	369);
INSERT INTO SM_ACT
	VALUES (2544,
	369,
	1,
	'// Must wait for the drive to become completely disabled before allowing another
//    jog instruction to start and re-enable the drive.
// 


',
	'');
INSERT INTO ACT_SAB
	VALUES (2545,
	369,
	2544);
INSERT INTO ACT_ACT
	VALUES (2545,
	'class state',
	0,
	2546,
	0,
	0,
	'Motion Instruction::DriveDisabling',
	0);
INSERT INTO ACT_BLK
	VALUES (2546,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2545,
	0);
INSERT INTO SM_NSTXN
	VALUES (2547,
	369,
	2498,
	368,
	0);
INSERT INTO SM_TAH
	VALUES (2548,
	369,
	2547);
INSERT INTO SM_AH
	VALUES (2548,
	369);
INSERT INTO SM_ACT
	VALUES (2548,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2549,
	369,
	2548);
INSERT INTO ACT_ACT
	VALUES (2549,
	'class transition',
	0,
	2550,
	0,
	0,
	'MI_A1: jog_instruction_received',
	0);
INSERT INTO ACT_BLK
	VALUES (2550,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2549,
	0);
INSERT INTO SM_TXN
	VALUES (2547,
	369,
	2509,
	0);
INSERT INTO SM_NSTXN
	VALUES (2551,
	369,
	2509,
	2346,
	0);
INSERT INTO SM_TAH
	VALUES (2552,
	369,
	2551);
INSERT INTO SM_AH
	VALUES (2552,
	369);
INSERT INTO SM_ACT
	VALUES (2552,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2553,
	369,
	2552);
INSERT INTO ACT_ACT
	VALUES (2553,
	'class transition',
	0,
	2554,
	0,
	0,
	'MI_A2: drive_enabled',
	0);
INSERT INTO ACT_BLK
	VALUES (2554,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2553,
	0);
INSERT INTO SM_TXN
	VALUES (2551,
	369,
	2516,
	0);
INSERT INTO SM_NSTXN
	VALUES (2555,
	369,
	2516,
	368,
	0);
INSERT INTO SM_TAH
	VALUES (2556,
	369,
	2555);
INSERT INTO SM_AH
	VALUES (2556,
	369);
INSERT INTO SM_ACT
	VALUES (2556,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2557,
	369,
	2556);
INSERT INTO ACT_ACT
	VALUES (2557,
	'class transition',
	0,
	2558,
	0,
	0,
	'MI_A1: jog_instruction_received',
	0);
INSERT INTO ACT_BLK
	VALUES (2558,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2557,
	0);
INSERT INTO SM_TXN
	VALUES (2555,
	369,
	2516,
	0);
INSERT INTO SM_NSTXN
	VALUES (2559,
	369,
	2516,
	2422,
	0);
INSERT INTO SM_TAH
	VALUES (2560,
	369,
	2559);
INSERT INTO SM_AH
	VALUES (2560,
	369);
INSERT INTO SM_ACT
	VALUES (2560,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2561,
	369,
	2560);
INSERT INTO ACT_ACT
	VALUES (2561,
	'class transition',
	0,
	2562,
	0,
	0,
	'MI_A3: motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (2562,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2561,
	0);
INSERT INTO SM_TXN
	VALUES (2559,
	369,
	2535,
	0);
INSERT INTO SM_NSTXN
	VALUES (2563,
	369,
	2535,
	368,
	0);
INSERT INTO SM_TAH
	VALUES (2564,
	369,
	2563);
INSERT INTO SM_AH
	VALUES (2564,
	369);
INSERT INTO SM_ACT
	VALUES (2564,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2565,
	369,
	2564);
INSERT INTO ACT_ACT
	VALUES (2565,
	'class transition',
	0,
	2566,
	0,
	0,
	'MI_A1: jog_instruction_received',
	0);
INSERT INTO ACT_BLK
	VALUES (2566,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2565,
	0);
INSERT INTO SM_TXN
	VALUES (2563,
	369,
	2509,
	0);
INSERT INTO SM_NSTXN
	VALUES (2567,
	369,
	2543,
	2334,
	0);
INSERT INTO SM_TAH
	VALUES (2568,
	369,
	2567);
INSERT INTO SM_AH
	VALUES (2568,
	369);
INSERT INTO SM_ACT
	VALUES (2568,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2569,
	369,
	2568);
INSERT INTO ACT_ACT
	VALUES (2569,
	'class transition',
	0,
	2570,
	0,
	0,
	'MI_A5: drive_disabled',
	0);
INSERT INTO ACT_BLK
	VALUES (2570,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2569,
	0);
INSERT INTO SM_TXN
	VALUES (2567,
	369,
	2498,
	0);
INSERT INTO SM_NSTXN
	VALUES (2571,
	369,
	2535,
	2370,
	0);
INSERT INTO SM_TAH
	VALUES (2572,
	369,
	2571);
INSERT INTO SM_AH
	VALUES (2572,
	369);
INSERT INTO SM_ACT
	VALUES (2572,
	369,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2573,
	369,
	2572);
INSERT INTO ACT_ACT
	VALUES (2573,
	'class transition',
	0,
	2574,
	0,
	0,
	'MI_A4: drive_disable_lockout',
	0);
INSERT INTO ACT_BLK
	VALUES (2574,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2573,
	0);
INSERT INTO SM_TXN
	VALUES (2571,
	369,
	2543,
	0);
INSERT INTO PE_PE
	VALUES (2575,
	1,
	2304,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2575,
	'Motor Drive',
	7,
	'MTRDRV',
	'I am the class description.',
	0);
INSERT INTO O_NBATTR
	VALUES (2576,
	2575);
INSERT INTO O_BATTR
	VALUES (2576,
	2575);
INSERT INTO O_ATTR
	VALUES (2576,
	2575,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2577,
	2575);
INSERT INTO O_BATTR
	VALUES (2577,
	2575);
INSERT INTO O_ATTR
	VALUES (2577,
	2575,
	2576,
	'str',
	'I am a string.',
	'',
	'str',
	0,
	155,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2578,
	2575);
INSERT INTO O_BATTR
	VALUES (2578,
	2575);
INSERT INTO O_ATTR
	VALUES (2578,
	2575,
	2577,
	'rl',
	'I am a real.',
	'',
	'rl',
	0,
	180,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2579,
	2575);
INSERT INTO O_BATTR
	VALUES (2579,
	2575);
INSERT INTO O_ATTR
	VALUES (2579,
	2575,
	2578,
	'b1',
	'I am a boolean.',
	'',
	'b1',
	0,
	87,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2580,
	2575);
INSERT INTO O_BATTR
	VALUES (2580,
	2575);
INSERT INTO O_ATTR
	VALUES (2580,
	2575,
	2579,
	'b2',
	'',
	'',
	'b2',
	0,
	87,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2581,
	2575);
INSERT INTO O_BATTR
	VALUES (2581,
	2575);
INSERT INTO O_ATTR
	VALUES (2581,
	2575,
	2580,
	'int',
	'I am an integer.',
	'',
	'int',
	0,
	186,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2582,
	2575);
INSERT INTO O_BATTR
	VALUES (2582,
	2575);
INSERT INTO O_ATTR
	VALUES (2582,
	2575,
	2581,
	'timer',
	'I am a timer.',
	'',
	'timer',
	0,
	230,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2575);
INSERT INTO O_ID
	VALUES (1,
	2575);
INSERT INTO O_ID
	VALUES (2,
	2575);
INSERT INTO SM_ISM
	VALUES (2583,
	2575);
INSERT INTO SM_SM
	VALUES (2583,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2583);
INSERT INTO SM_LEVT
	VALUES (2584,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2584,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2584,
	2583,
	0,
	1,
	'Stop',
	0,
	'',
	'MTRDRV1',
	'I am a stop event.');
INSERT INTO SM_LEVT
	VALUES (2585,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2585,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2585,
	2583,
	0,
	2,
	'Jog',
	0,
	'',
	'MTRDRV2',
	'I am a jog event.');
INSERT INTO SM_LEVT
	VALUES (2586,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2586,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2586,
	2583,
	0,
	3,
	'event1',
	0,
	'',
	'MTRDRV3',
	'I am an event.');
INSERT INTO SM_LEVT
	VALUES (2587,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2587,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2587,
	2583,
	0,
	4,
	'event2',
	0,
	'',
	'MTRDRV4',
	'');
INSERT INTO SM_LEVT
	VALUES (2588,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2588,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2588,
	2583,
	0,
	5,
	'event3',
	0,
	'',
	'MTRDRV5',
	'');
INSERT INTO SM_LEVT
	VALUES (2589,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2589,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2589,
	2583,
	0,
	6,
	'event4',
	0,
	'',
	'MTRDRV6',
	'');
INSERT INTO SM_LEVT
	VALUES (2590,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2590,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2590,
	2583,
	0,
	7,
	'event5',
	0,
	'',
	'MTRDRV7',
	'');
INSERT INTO SM_LEVT
	VALUES (2591,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2591,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2591,
	2583,
	0,
	8,
	'event6',
	0,
	'',
	'MTRDRV8',
	'');
INSERT INTO SM_LEVT
	VALUES (2592,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2592,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2592,
	2583,
	0,
	9,
	'event7',
	0,
	'',
	'MTRDRV9',
	'');
INSERT INTO SM_LEVT
	VALUES (2593,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2593,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2593,
	2583,
	0,
	10,
	'event8',
	0,
	'',
	'MTRDRV10',
	'');
INSERT INTO SM_LEVT
	VALUES (2594,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2594,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2594,
	2583,
	0,
	11,
	'event9',
	0,
	'',
	'MTRDRV11',
	'');
INSERT INTO SM_LEVT
	VALUES (2595,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2595,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2595,
	2583,
	0,
	12,
	'event10',
	0,
	'',
	'MTRDRV12',
	'');
INSERT INTO SM_LEVT
	VALUES (2596,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2596,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2596,
	2583,
	0,
	13,
	'event11',
	0,
	'',
	'MTRDRV13',
	'');
INSERT INTO SM_LEVT
	VALUES (2597,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2597,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2597,
	2583,
	0,
	14,
	'event12',
	0,
	'',
	'MTRDRV14',
	'');
INSERT INTO SM_LEVT
	VALUES (2598,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2598,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2598,
	2583,
	0,
	15,
	'event13',
	0,
	'',
	'MTRDRV15',
	'');
INSERT INTO SM_LEVT
	VALUES (2599,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2599,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2599,
	2583,
	0,
	16,
	'event14',
	0,
	'',
	'MTRDRV16',
	'');
INSERT INTO SM_LEVT
	VALUES (2600,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2600,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2600,
	2583,
	0,
	17,
	'event15',
	0,
	'',
	'MTRDRV17',
	'');
INSERT INTO SM_LEVT
	VALUES (2601,
	2583,
	0);
INSERT INTO SM_SEVT
	VALUES (2601,
	2583,
	0);
INSERT INTO SM_EVT
	VALUES (2601,
	2583,
	0,
	18,
	'event16',
	0,
	'',
	'MTRDRV18',
	'');
INSERT INTO SM_STATE
	VALUES (2602,
	2583,
	0,
	'WaitingForInstruction',
	1,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2584,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2584,
	2583,
	0);
INSERT INTO SM_SEME
	VALUES (2602,
	2585,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2586,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2586,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2587,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2587,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2588,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2588,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2589,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2589,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2590,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2590,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2591,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2591,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2592,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2592,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2593,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2593,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2594,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2594,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2595,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2595,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2596,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2596,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2597,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2597,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2598,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2598,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2599,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2599,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2600,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2600,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2602,
	2601,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2602,
	2601,
	2583,
	0);
INSERT INTO SM_MOAH
	VALUES (2603,
	2583,
	2602);
INSERT INTO SM_AH
	VALUES (2603,
	2583);
INSERT INTO SM_ACT
	VALUES (2603,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2604,
	2583,
	2603);
INSERT INTO ACT_ACT
	VALUES (2604,
	'state',
	0,
	2605,
	0,
	0,
	'Motor Drive::WaitingForInstruction',
	0);
INSERT INTO ACT_BLK
	VALUES (2605,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2604,
	0);
INSERT INTO SM_STATE
	VALUES (2606,
	2583,
	0,
	'EnableDrive',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2606,
	2584,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2585,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2585,
	2583,
	0);
INSERT INTO SM_SEME
	VALUES (2606,
	2586,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2587,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2587,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2588,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2588,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2589,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2589,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2590,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2590,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2591,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2591,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2592,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2592,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2593,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2593,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2594,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2594,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2595,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2595,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2596,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2596,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2597,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2597,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2598,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2598,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2599,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2599,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2600,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2600,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2606,
	2601,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2606,
	2601,
	2583,
	0);
INSERT INTO SM_MOAH
	VALUES (2607,
	2583,
	2606);
INSERT INTO SM_AH
	VALUES (2607,
	2583);
INSERT INTO SM_ACT
	VALUES (2607,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2608,
	2583,
	2607);
INSERT INTO ACT_ACT
	VALUES (2608,
	'state',
	0,
	2609,
	0,
	0,
	'Motor Drive::EnableDrive',
	0);
INSERT INTO ACT_BLK
	VALUES (2609,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2608,
	0);
INSERT INTO SM_STATE
	VALUES (2610,
	2583,
	0,
	'ChangeVelocity',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2610,
	2584,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2585,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2585,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2586,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2586,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2587,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2587,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2588,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2588,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2589,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2589,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2590,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2590,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2591,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2591,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2592,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2592,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2593,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2593,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2594,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2594,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2595,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2595,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2596,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2596,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2597,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2597,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2598,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2598,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2599,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2599,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2600,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2600,
	2583,
	0);
INSERT INTO SM_CH
	VALUES (2610,
	2601,
	2583,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2610,
	2601,
	2583,
	0);
INSERT INTO SM_MOAH
	VALUES (2611,
	2583,
	2610);
INSERT INTO SM_AH
	VALUES (2611,
	2583);
INSERT INTO SM_ACT
	VALUES (2611,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2612,
	2583,
	2611);
INSERT INTO ACT_ACT
	VALUES (2612,
	'state',
	0,
	2613,
	0,
	0,
	'Motor Drive::ChangeVelocity',
	0);
INSERT INTO ACT_BLK
	VALUES (2613,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2612,
	0);
INSERT INTO SM_NSTXN
	VALUES (2614,
	2583,
	2610,
	2584,
	0);
INSERT INTO SM_TAH
	VALUES (2615,
	2583,
	2614);
INSERT INTO SM_AH
	VALUES (2615,
	2583);
INSERT INTO SM_ACT
	VALUES (2615,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2616,
	2583,
	2615);
INSERT INTO ACT_ACT
	VALUES (2616,
	'transition',
	0,
	2617,
	0,
	0,
	'MTRDRV1: Stop',
	0);
INSERT INTO ACT_BLK
	VALUES (2617,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2616,
	0);
INSERT INTO SM_TXN
	VALUES (2614,
	2583,
	2602,
	0);
INSERT INTO SM_NSTXN
	VALUES (2618,
	2583,
	2602,
	2585,
	0);
INSERT INTO SM_TAH
	VALUES (2619,
	2583,
	2618);
INSERT INTO SM_AH
	VALUES (2619,
	2583);
INSERT INTO SM_ACT
	VALUES (2619,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2620,
	2583,
	2619);
INSERT INTO ACT_ACT
	VALUES (2620,
	'transition',
	0,
	2621,
	0,
	0,
	'MTRDRV2: Jog',
	0);
INSERT INTO ACT_BLK
	VALUES (2621,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2620,
	0);
INSERT INTO SM_TXN
	VALUES (2618,
	2583,
	2606,
	0);
INSERT INTO SM_NSTXN
	VALUES (2622,
	2583,
	2606,
	2586,
	0);
INSERT INTO SM_TAH
	VALUES (2623,
	2583,
	2622);
INSERT INTO SM_AH
	VALUES (2623,
	2583);
INSERT INTO SM_ACT
	VALUES (2623,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2624,
	2583,
	2623);
INSERT INTO ACT_ACT
	VALUES (2624,
	'transition',
	0,
	2625,
	0,
	0,
	'MTRDRV3: event1',
	0);
INSERT INTO ACT_BLK
	VALUES (2625,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2624,
	0);
INSERT INTO SM_TXN
	VALUES (2622,
	2583,
	2610,
	0);
INSERT INTO SM_NSTXN
	VALUES (2626,
	2583,
	2606,
	2584,
	0);
INSERT INTO SM_TAH
	VALUES (2627,
	2583,
	2626);
INSERT INTO SM_AH
	VALUES (2627,
	2583);
INSERT INTO SM_ACT
	VALUES (2627,
	2583,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2628,
	2583,
	2627);
INSERT INTO ACT_ACT
	VALUES (2628,
	'transition',
	0,
	2629,
	0,
	0,
	'MTRDRV1: Stop',
	0);
INSERT INTO ACT_BLK
	VALUES (2629,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2628,
	0);
INSERT INTO SM_TXN
	VALUES (2626,
	2583,
	2602,
	0);
INSERT INTO EP_PKG
	VALUES (2630,
	2247,
	2247,
	'UnitTest',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2631,
	1,
	2630,
	0,
	2);
INSERT INTO C_C
	VALUES (2631,
	0,
	0,
	'Client',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2632,
	2631,
	'Port1',
	0,
	0);
INSERT INTO C_IR
	VALUES (2633,
	280,
	0,
	2632);
INSERT INTO C_R
	VALUES (2633,
	'JogMotor',
	'',
	'Unnamed Interface',
	'Client::Port1::JogMotor');
INSERT INTO SPR_REP
	VALUES (2634,
	282,
	2633);
INSERT INTO SPR_RS
	VALUES (2634,
	'jog',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2635,
	2634);
INSERT INTO ACT_ACT
	VALUES (2635,
	'signal',
	0,
	2636,
	0,
	0,
	'Port1::JogMotor::jog',
	0);
INSERT INTO ACT_BLK
	VALUES (2636,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2635,
	0);
INSERT INTO SPR_REP
	VALUES (2637,
	284,
	2633);
INSERT INTO SPR_RS
	VALUES (2637,
	'stop',
	'',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2638,
	2637);
INSERT INTO ACT_ACT
	VALUES (2638,
	'signal',
	0,
	2639,
	0,
	0,
	'Port1::JogMotor::stop',
	0);
INSERT INTO ACT_BLK
	VALUES (2639,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2638,
	0);
INSERT INTO SPR_REP
	VALUES (2640,
	286,
	2633);
INSERT INTO SPR_RS
	VALUES (2640,
	'motion_initiated',
	'This signal is an indicator to the client of the interface that the last motion
instruction has been executed.  A new motion instruction can now be send from 
the client.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2641,
	2640);
INSERT INTO ACT_ACT
	VALUES (2641,
	'signal',
	0,
	2642,
	0,
	0,
	'Port1::JogMotor::motion_initiated',
	0);
INSERT INTO ACT_BLK
	VALUES (2642,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2641,
	0);
INSERT INTO SPR_REP
	VALUES (2643,
	288,
	2633);
INSERT INTO SPR_RS
	VALUES (2643,
	'motion_complete',
	'This signal informs the client that the motor is no longer rotating and the 
drive is about to be disabled.  This signal will only occur after a stop has
been issued by the client of the interface or after a timed velocity move is
finished.',
	'',
	1);
INSERT INTO ACT_RSB
	VALUES (2644,
	2643);
INSERT INTO ACT_ACT
	VALUES (2644,
	'signal',
	0,
	2645,
	0,
	0,
	'Port1::JogMotor::motion_complete',
	0);
INSERT INTO ACT_BLK
	VALUES (2645,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2644,
	0);
INSERT INTO PE_PE
	VALUES (2646,
	1,
	0,
	2631,
	7);
INSERT INTO EP_PKG
	VALUES (2646,
	0,
	2247,
	'Test',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2647,
	1,
	2646,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2647,
	0,
	'Jog_1',
	'',
	'Port1::jog(direction: Motor_Direction::Forward, velocity: 42, acceleration: 2, duration: 5000);
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2648,
	2647);
INSERT INTO ACT_ACT
	VALUES (2648,
	'function',
	0,
	2649,
	0,
	0,
	'Jog_1',
	0);
INSERT INTO ACT_BLK
	VALUES (2649,
	0,
	0,
	0,
	'Port1',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	23,
	0,
	2648,
	0);
INSERT INTO ACT_SMT
	VALUES (2650,
	2649,
	0,
	1,
	1,
	'Jog_1 line: 1');
INSERT INTO ACT_SGN
	VALUES (2650,
	1,
	8,
	1,
	1,
	0,
	2634,
	0);
INSERT INTO V_VAL
	VALUES (2651,
	0,
	0,
	1,
	40,
	46,
	0,
	0,
	0,
	0,
	290,
	2649);
INSERT INTO V_LEN
	VALUES (2651,
	526,
	1,
	23);
INSERT INTO V_PAR
	VALUES (2651,
	2650,
	0,
	'direction',
	2652,
	1,
	12);
INSERT INTO V_VAL
	VALUES (2652,
	0,
	0,
	1,
	59,
	60,
	0,
	0,
	0,
	0,
	186,
	2649);
INSERT INTO V_LIN
	VALUES (2652,
	'42');
INSERT INTO V_PAR
	VALUES (2652,
	2650,
	0,
	'velocity',
	2653,
	1,
	49);
INSERT INTO V_VAL
	VALUES (2653,
	0,
	0,
	1,
	77,
	77,
	0,
	0,
	0,
	0,
	186,
	2649);
INSERT INTO V_LIN
	VALUES (2653,
	'2');
INSERT INTO V_PAR
	VALUES (2653,
	2650,
	0,
	'acceleration',
	2654,
	1,
	63);
INSERT INTO V_VAL
	VALUES (2654,
	0,
	0,
	1,
	90,
	93,
	0,
	0,
	0,
	0,
	186,
	2649);
INSERT INTO V_LIN
	VALUES (2654,
	'5000');
INSERT INTO V_PAR
	VALUES (2654,
	2650,
	0,
	'duration',
	0,
	1,
	80);
INSERT INTO PE_PE
	VALUES (2655,
	1,
	2646,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2655,
	0,
	'Stop',
	'',
	'Port1::stop();
',
	39,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2656,
	2655);
INSERT INTO ACT_ACT
	VALUES (2656,
	'function',
	0,
	2657,
	0,
	0,
	'Stop',
	0);
INSERT INTO ACT_BLK
	VALUES (2657,
	0,
	0,
	0,
	'Port1',
	'',
	'',
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2656,
	0);
INSERT INTO ACT_SMT
	VALUES (2658,
	2657,
	0,
	1,
	1,
	'Stop line: 1');
INSERT INTO ACT_SGN
	VALUES (2658,
	1,
	8,
	1,
	1,
	0,
	2637,
	0);
INSERT INTO PE_PE
	VALUES (2659,
	1,
	2630,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2659,
	126,
	0,
	0,
	0,
	'',
	'VelocityControlDrive::Design::Velocity Control Drive',
	'');
INSERT INTO CL_POR
	VALUES (2659,
	127,
	'drive',
	2660);
INSERT INTO CL_IIR
	VALUES (2661,
	130,
	2660,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IR
	VALUES (2661,
	2662,
	'VelocityControlDrive',
	'');
INSERT INTO CL_POR
	VALUES (2659,
	132,
	'client',
	2663);
INSERT INTO CL_IIR
	VALUES (2664,
	135,
	2663,
	0,
	'JogMotor',
	'');
INSERT INTO CL_IP
	VALUES (2664,
	'JogMotor',
	'');
INSERT INTO CL_IPINS
	VALUES (2665,
	2664);
INSERT INTO PE_PE
	VALUES (2666,
	1,
	2630,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2666,
	137,
	0,
	0,
	0,
	'',
	'Intf_MotorDrive::HardwareInterface::VelocityControlDrive::TestComponents::prv_ExpectedResponse',
	'');
INSERT INTO CL_POR
	VALUES (2666,
	138,
	'Port1',
	2667);
INSERT INTO CL_IIR
	VALUES (2668,
	141,
	2667,
	0,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IP
	VALUES (2668,
	'VelocityControlDrive',
	'');
INSERT INTO CL_IPINS
	VALUES (2662,
	2668);
INSERT INTO PE_PE
	VALUES (2669,
	1,
	2630,
	0,
	5);
INSERT INTO S_EE
	VALUES (2669,
	'Architecture',
	'',
	'ARCH',
	0,
	'',
	'Architecture',
	1);
INSERT INTO S_BRG
	VALUES (2670,
	2669,
	'shutdown',
	'',
	0,
	39,
	'control stop;',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2671,
	2670);
INSERT INTO ACT_ACT
	VALUES (2671,
	'bridge',
	0,
	2672,
	0,
	0,
	'Architecture::shutdown',
	0);
INSERT INTO ACT_BLK
	VALUES (2672,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2671,
	0);
INSERT INTO ACT_SMT
	VALUES (2673,
	2672,
	0,
	1,
	1,
	'Architecture::shutdown line: 1');
INSERT INTO ACT_CTL
	VALUES (2673);
INSERT INTO PE_PE
	VALUES (2674,
	1,
	2630,
	0,
	5);
INSERT INTO S_EE
	VALUES (2674,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2675,
	2674,
	'LogSuccess',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2676,
	2675,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2677,
	2675);
INSERT INTO ACT_ACT
	VALUES (2677,
	'bridge',
	0,
	2678,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2678,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2677,
	0);
INSERT INTO S_BRG
	VALUES (2679,
	2674,
	'LogFailure',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2680,
	2679,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2681,
	2679);
INSERT INTO ACT_ACT
	VALUES (2681,
	'bridge',
	0,
	2682,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2682,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2681,
	0);
INSERT INTO S_BRG
	VALUES (2683,
	2674,
	'LogInfo',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2684,
	2683,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2685,
	2683);
INSERT INTO ACT_ACT
	VALUES (2685,
	'bridge',
	0,
	2686,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2686,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2685,
	0);
INSERT INTO S_BRG
	VALUES (2687,
	2674,
	'LogDate',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2688,
	2687,
	'd',
	168,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2689,
	2687,
	'message',
	155,
	0,
	'',
	2688,
	'');
INSERT INTO ACT_BRB
	VALUES (2690,
	2687);
INSERT INTO ACT_ACT
	VALUES (2690,
	'bridge',
	0,
	2691,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2691,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2690,
	0);
INSERT INTO S_BRG
	VALUES (2692,
	2674,
	'LogTime',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2693,
	2692,
	't',
	174,
	0,
	'',
	2694,
	'');
INSERT INTO S_BPARM
	VALUES (2694,
	2692,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2695,
	2692);
INSERT INTO ACT_ACT
	VALUES (2695,
	'bridge',
	0,
	2696,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2696,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2695,
	0);
INSERT INTO S_BRG
	VALUES (2697,
	2674,
	'LogReal',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2698,
	2697,
	'r',
	180,
	0,
	'',
	2699,
	'');
INSERT INTO S_BPARM
	VALUES (2699,
	2697,
	'message',
	155,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2700,
	2697);
INSERT INTO ACT_ACT
	VALUES (2700,
	'bridge',
	0,
	2701,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2701,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2700,
	0);
INSERT INTO S_BRG
	VALUES (2702,
	2674,
	'LogInteger',
	'',
	0,
	39,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2703,
	2702,
	'message',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2704,
	2702);
INSERT INTO ACT_ACT
	VALUES (2704,
	'bridge',
	0,
	2705,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2705,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2704,
	0);
INSERT INTO PE_PE
	VALUES (2706,
	1,
	2630,
	0,
	5);
INSERT INTO S_EE
	VALUES (2706,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2707,
	2706,
	'current_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2708,
	2707);
INSERT INTO ACT_ACT
	VALUES (2708,
	'bridge',
	0,
	2709,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2709,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2708,
	0);
INSERT INTO S_BRG
	VALUES (2710,
	2706,
	'create_date',
	'',
	1,
	168,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2711,
	2710,
	'second',
	186,
	0,
	'',
	2712,
	'');
INSERT INTO S_BPARM
	VALUES (2713,
	2710,
	'minute',
	186,
	0,
	'',
	2714,
	'');
INSERT INTO S_BPARM
	VALUES (2714,
	2710,
	'hour',
	186,
	0,
	'',
	2715,
	'');
INSERT INTO S_BPARM
	VALUES (2715,
	2710,
	'day',
	186,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2712,
	2710,
	'month',
	186,
	0,
	'',
	2713,
	'');
INSERT INTO S_BPARM
	VALUES (2716,
	2710,
	'year',
	186,
	0,
	'',
	2711,
	'');
INSERT INTO ACT_BRB
	VALUES (2717,
	2710);
INSERT INTO ACT_ACT
	VALUES (2717,
	'bridge',
	0,
	2718,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2718,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2717,
	0);
INSERT INTO S_BRG
	VALUES (2719,
	2706,
	'get_second',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2720,
	2719,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2721,
	2719);
INSERT INTO ACT_ACT
	VALUES (2721,
	'bridge',
	0,
	2722,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2722,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2721,
	0);
INSERT INTO S_BRG
	VALUES (2723,
	2706,
	'get_minute',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2724,
	2723,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2725,
	2723);
INSERT INTO ACT_ACT
	VALUES (2725,
	'bridge',
	0,
	2726,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2726,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2725,
	0);
INSERT INTO S_BRG
	VALUES (2727,
	2706,
	'get_hour',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2728,
	2727,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2729,
	2727);
INSERT INTO ACT_ACT
	VALUES (2729,
	'bridge',
	0,
	2730,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2730,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2729,
	0);
INSERT INTO S_BRG
	VALUES (2731,
	2706,
	'get_day',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2732,
	2731,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2733,
	2731);
INSERT INTO ACT_ACT
	VALUES (2733,
	'bridge',
	0,
	2734,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2734,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2733,
	0);
INSERT INTO S_BRG
	VALUES (2735,
	2706,
	'get_month',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2736,
	2735,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2737,
	2735);
INSERT INTO ACT_ACT
	VALUES (2737,
	'bridge',
	0,
	2738,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2738,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2737,
	0);
INSERT INTO S_BRG
	VALUES (2739,
	2706,
	'get_year',
	'',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2740,
	2739,
	'date',
	168,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2741,
	2739);
INSERT INTO ACT_ACT
	VALUES (2741,
	'bridge',
	0,
	2742,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2742,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2741,
	0);
INSERT INTO S_BRG
	VALUES (2743,
	2706,
	'current_clock',
	'',
	1,
	174,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2744,
	2743);
INSERT INTO ACT_ACT
	VALUES (2744,
	'bridge',
	0,
	2745,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2745,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2744,
	0);
INSERT INTO S_BRG
	VALUES (2358,
	2706,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2746,
	2358,
	'microseconds',
	186,
	0,
	'',
	2747,
	'');
INSERT INTO S_BPARM
	VALUES (2747,
	2358,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2748,
	2358);
INSERT INTO ACT_ACT
	VALUES (2748,
	'bridge',
	0,
	2749,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2749,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2748,
	0);
INSERT INTO S_BRG
	VALUES (2750,
	2706,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	230,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2751,
	2750,
	'microseconds',
	186,
	0,
	'',
	2752,
	'');
INSERT INTO S_BPARM
	VALUES (2752,
	2750,
	'event_inst',
	233,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2753,
	2750);
INSERT INTO ACT_ACT
	VALUES (2753,
	'bridge',
	0,
	2754,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2754,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2753,
	0);
INSERT INTO S_BRG
	VALUES (2755,
	2706,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	186,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2756,
	2755,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2757,
	2755);
INSERT INTO ACT_ACT
	VALUES (2757,
	'bridge',
	0,
	2758,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2758,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2757,
	0);
INSERT INTO S_BRG
	VALUES (2759,
	2706,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2760,
	2759,
	'timer_inst_ref',
	230,
	0,
	'',
	2761,
	'');
INSERT INTO S_BPARM
	VALUES (2761,
	2759,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2762,
	2759);
INSERT INTO ACT_ACT
	VALUES (2762,
	'bridge',
	0,
	2763,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2763,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2762,
	0);
INSERT INTO S_BRG
	VALUES (2764,
	2706,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2765,
	2764,
	'timer_inst_ref',
	230,
	0,
	'',
	2766,
	'');
INSERT INTO S_BPARM
	VALUES (2766,
	2764,
	'microseconds',
	186,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2767,
	2764);
INSERT INTO ACT_ACT
	VALUES (2767,
	'bridge',
	0,
	2768,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2768,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2767,
	0);
INSERT INTO S_BRG
	VALUES (2392,
	2706,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	87,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2769,
	2392,
	'timer_inst_ref',
	230,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2770,
	2392);
INSERT INTO ACT_ACT
	VALUES (2770,
	'bridge',
	0,
	2771,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2771,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2770,
	0);
INSERT INTO PE_PE
	VALUES (2665,
	1,
	2630,
	0,
	22);
INSERT INTO C_SF
	VALUES (2665,
	2633,
	135,
	'',
	'Velocity Control Drive::client::JogMotor -o)- Client::Port1::JogMotor');
INSERT INTO PE_PE
	VALUES (2662,
	1,
	2630,
	0,
	22);
INSERT INTO C_SF
	VALUES (2662,
	130,
	141,
	'',
	'prv_ExpectedResponse::Port1::VelocityControlDrive -o)- Velocity Control Drive::drive::VelocityControlDrive');
