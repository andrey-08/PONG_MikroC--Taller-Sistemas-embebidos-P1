
_borrar_player:

;glcd.c,53 :: 		void borrar_player(unsigned short x, unsigned short y, unsigned short w, unsigned short h){
;glcd.c,54 :: 		Glcd_V_Line(y, y+h, x, 0);
	MOVF        FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_start+0 
	MOVF        FARG_borrar_player_h+0, 0 
	ADDWF       FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_end+0 
	MOVF        FARG_borrar_player_x+0, 0 
	MOVWF       FARG_Glcd_V_Line_x_pos+0 
	CLRF        FARG_Glcd_V_Line_color+0 
	CALL        _Glcd_V_Line+0, 0
;glcd.c,55 :: 		}
L_end_borrar_player:
	RETURN      0
; end of _borrar_player

_port_pong:

;glcd.c,57 :: 		void port_pong(){          // Para mostrar la portada principal
;glcd.c,58 :: 		Glcd_Image(portada);
	MOVLW       _portada+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_portada+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_portada+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,59 :: 		Glcd_Write_Text("One player", 35, 4,1);
	MOVLW       ?lstr1_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr1_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,60 :: 		Glcd_Write_Text("Two players", 32, 6,1);
	MOVLW       ?lstr2_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr2_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       32
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,61 :: 		}
L_end_port_pong:
	RETURN      0
; end of _port_pong

_game_over:

;glcd.c,63 :: 		void game_over(){
;glcd.c,64 :: 		Glcd_Image(GameOver);
	MOVLW       _GameOver+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_GameOver+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_GameOver+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,65 :: 		}
L_end_game_over:
	RETURN      0
; end of _game_over

_first_CoverP:

;glcd.c,67 :: 		void first_CoverP(){
;glcd.c,68 :: 		Glcd_Image(TEC);
	MOVLW       _TEC+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_TEC+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_TEC+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,69 :: 		Glcd_Write_Text_Adv("Andrey Sequeira", 4, 21);
	MOVLW       ?lstr3_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr3_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       21
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,70 :: 		Glcd_Write_Text_Adv("Erick Quiros", 4, 31);
	MOVLW       ?lstr4_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr4_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       31
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,71 :: 		Glcd_Write_Text_Adv("Prof. Ernesto Rivera", 4, 42);
	MOVLW       ?lstr5_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr5_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       42
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,72 :: 		Glcd_Write_Text_Adv("Taller de Sist. Embebidos", 4, 52);
	MOVLW       ?lstr6_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr6_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       52
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,73 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_first_CoverP0:
	DECFSZ      R13, 1, 1
	BRA         L_first_CoverP0
	DECFSZ      R12, 1, 1
	BRA         L_first_CoverP0
	DECFSZ      R11, 1, 1
	BRA         L_first_CoverP0
	NOP
	NOP
;glcd.c,74 :: 		}
L_end_first_CoverP:
	RETURN      0
; end of _first_CoverP

_init:

;glcd.c,76 :: 		void init(){
;glcd.c,78 :: 		paddle[0].x =  5;
	MOVLW       5
	MOVWF       _paddle+0 
;glcd.c,79 :: 		paddle[0].y = 30;
	MOVLW       30
	MOVWF       _paddle+1 
;glcd.c,80 :: 		paddle[0].w = 2;
	MOVLW       2
	MOVWF       _paddle+2 
;glcd.c,81 :: 		paddle[0].h = 9;
	MOVLW       9
	MOVWF       _paddle+3 
;glcd.c,84 :: 		paddle[1].x =  121;
	MOVLW       121
	MOVWF       _paddle+4 
;glcd.c,85 :: 		paddle[1].y = 30;
	MOVLW       30
	MOVWF       _paddle+5 
;glcd.c,86 :: 		paddle[1].w = 2;
	MOVLW       2
	MOVWF       _paddle+6 
;glcd.c,87 :: 		paddle[1].h = 9;
	MOVLW       9
	MOVWF       _paddle+7 
;glcd.c,89 :: 		ball.x = 64;
	MOVLW       64
	MOVWF       _ball+0 
;glcd.c,90 :: 		ball.y = 32;
	MOVLW       32
	MOVWF       _ball+1 
;glcd.c,91 :: 		ball.dx = 2;
	MOVLW       2
	MOVWF       _ball+2 
;glcd.c,92 :: 		ball.dy = 2;
	MOVLW       2
	MOVWF       _ball+3 
;glcd.c,94 :: 		draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVLW       5
	MOVWF       FARG_draw_player_x+0 
	MOVLW       30
	MOVWF       FARG_draw_player_y+0 
	MOVLW       2
	MOVWF       FARG_draw_player_w+0 
	MOVLW       9
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,95 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,96 :: 		draw_ball(ball.x, ball.y);
	MOVF        _ball+0, 0 
	MOVWF       FARG_draw_ball_x+0 
	MOVF        _ball+1, 0 
	MOVWF       FARG_draw_ball_y+0 
	CALL        _draw_ball+0, 0
;glcd.c,98 :: 		}
L_end_init:
	RETURN      0
; end of _init

_check_coll:

;glcd.c,100 :: 		short check_coll(balls b, paletas p, unsigned short number){
;glcd.c,101 :: 		if(number == 1){
	MOVF        FARG_check_coll_number+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_check_coll1
;glcd.c,102 :: 		if((b.x+1 == p.x ) && (b.y >= p.y) && (b.y < (p.y+ p.h))){
	MOVF        FARG_check_coll_b+0, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	BTFSC       FARG_check_coll_b+0, 7 
	MOVLW       255
	ADDWFC      R2, 1 
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll202
	MOVF        FARG_check_coll_p+0, 0 
	XORWF       R1, 0 
L__check_coll202:
	BTFSS       STATUS+0, 2 
	GOTO        L_check_coll4
	MOVLW       128
	BTFSC       FARG_check_coll_b+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll203
	MOVF        FARG_check_coll_p+1, 0 
	SUBWF       FARG_check_coll_b+1, 0 
L__check_coll203:
	BTFSS       STATUS+0, 0 
	GOTO        L_check_coll4
	MOVF        FARG_check_coll_p+3, 0 
	ADDWF       FARG_check_coll_p+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       FARG_check_coll_b+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll204
	MOVF        R1, 0 
	SUBWF       FARG_check_coll_b+1, 0 
L__check_coll204:
	BTFSC       STATUS+0, 0 
	GOTO        L_check_coll4
L__check_coll188:
;glcd.c,103 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	GOTO        L_end_check_coll
;glcd.c,104 :: 		}
L_check_coll4:
;glcd.c,106 :: 		return 0;
	CLRF        R0 
	GOTO        L_end_check_coll
;glcd.c,108 :: 		}
L_check_coll1:
;glcd.c,110 :: 		if((b.x == p.x + 1) && (b.y >= p.y) && (b.y < (p.y + p.h))){
	MOVF        FARG_check_coll_p+0, 0 
	ADDLW       1
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       0
	BTFSC       FARG_check_coll_b+0, 7 
	MOVLW       255
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll205
	MOVF        R1, 0 
	XORWF       FARG_check_coll_b+0, 0 
L__check_coll205:
	BTFSS       STATUS+0, 2 
	GOTO        L_check_coll9
	MOVLW       128
	BTFSC       FARG_check_coll_b+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll206
	MOVF        FARG_check_coll_p+1, 0 
	SUBWF       FARG_check_coll_b+1, 0 
L__check_coll206:
	BTFSS       STATUS+0, 0 
	GOTO        L_check_coll9
	MOVF        FARG_check_coll_p+3, 0 
	ADDWF       FARG_check_coll_p+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       FARG_check_coll_b+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll207
	MOVF        R1, 0 
	SUBWF       FARG_check_coll_b+1, 0 
L__check_coll207:
	BTFSC       STATUS+0, 0 
	GOTO        L_check_coll9
L__check_coll187:
;glcd.c,111 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	GOTO        L_end_check_coll
;glcd.c,112 :: 		}
L_check_coll9:
;glcd.c,114 :: 		return 0;
	CLRF        R0 
;glcd.c,117 :: 		}
L_end_check_coll:
	RETURN      0
; end of _check_coll

_score_check:

;glcd.c,119 :: 		unsigned short score_check(){      // Funcion que verifica si alguno llego al puntaje de gane
;glcd.c,121 :: 		for(i=0; i<2; i++){
	CLRF        R1 
L_score_check11:
	MOVLW       2
	SUBWF       R1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_score_check12
;glcd.c,122 :: 		if(score[i] == 3){
	MOVLW       _score+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_score+0)
	MOVWF       FSR0L+1 
	MOVF        R1, 0 
	ADDWF       FSR0L+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0L+1, 1 
	MOVF        POSTINC0+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_score_check14
;glcd.c,123 :: 		score[0] = 0;
	CLRF        _score+0 
;glcd.c,124 :: 		score[1] = 0;
	CLRF        _score+1 
;glcd.c,125 :: 		if(i == 0){ //Jugador 1 es el ganador
	MOVF        R1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_score_check15
;glcd.c,126 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	GOTO        L_end_score_check
;glcd.c,127 :: 		}
L_score_check15:
;glcd.c,129 :: 		return 2;
	MOVLW       2
	MOVWF       R0 
	GOTO        L_end_score_check
;glcd.c,131 :: 		}
L_score_check14:
;glcd.c,121 :: 		for(i=0; i<2; i++){
	INCF        R1, 1 
;glcd.c,132 :: 		}
	GOTO        L_score_check11
L_score_check12:
;glcd.c,133 :: 		return 0;
	CLRF        R0 
;glcd.c,134 :: 		}
L_end_score_check:
	RETURN      0
; end of _score_check

_draw_score_1:

;glcd.c,136 :: 		void draw_score_1(){
;glcd.c,137 :: 		if(score[0] == 0){
	MOVF        _score+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_117
;glcd.c,138 :: 		Glcd_Write_Char('0',50, 0, 1);
	MOVLW       48
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,139 :: 		}
	GOTO        L_draw_score_118
L_draw_score_117:
;glcd.c,140 :: 		else if(score[0] == 1){
	MOVF        _score+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_119
;glcd.c,141 :: 		Glcd_Write_Char('1',50, 0, 1);
	MOVLW       49
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,142 :: 		}
	GOTO        L_draw_score_120
L_draw_score_119:
;glcd.c,143 :: 		else if(score[0] == 2){
	MOVF        _score+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_121
;glcd.c,144 :: 		Glcd_Write_Char('2',50, 0, 1);
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,145 :: 		}
	GOTO        L_draw_score_122
L_draw_score_121:
;glcd.c,146 :: 		else if(score[0] == 3){
	MOVF        _score+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_123
;glcd.c,147 :: 		Glcd_Write_Char('3',50, 0, 1);
	MOVLW       51
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,148 :: 		}
	GOTO        L_draw_score_124
L_draw_score_123:
;glcd.c,149 :: 		else if(score[0] == 4){
	MOVF        _score+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_125
;glcd.c,150 :: 		Glcd_Write_Char('4',50, 0, 1);
	MOVLW       52
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,151 :: 		}
	GOTO        L_draw_score_126
L_draw_score_125:
;glcd.c,152 :: 		else if(score[0] == 5){
	MOVF        _score+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_127
;glcd.c,153 :: 		Glcd_Write_Char('5',50, 0, 1);
	MOVLW       53
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,154 :: 		}
	GOTO        L_draw_score_128
L_draw_score_127:
;glcd.c,155 :: 		else if(score[0] == 6){
	MOVF        _score+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_129
;glcd.c,156 :: 		Glcd_Write_Char('6',50, 0, 1);
	MOVLW       54
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,157 :: 		}
	GOTO        L_draw_score_130
L_draw_score_129:
;glcd.c,158 :: 		else if(score[0] == 7){
	MOVF        _score+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_131
;glcd.c,159 :: 		Glcd_Write_Char('7',50, 0, 1);
	MOVLW       55
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,160 :: 		}
	GOTO        L_draw_score_132
L_draw_score_131:
;glcd.c,161 :: 		else if(score[0] == 8){
	MOVF        _score+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_133
;glcd.c,162 :: 		Glcd_Write_Char('8',50, 0, 1);
	MOVLW       56
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,163 :: 		}
	GOTO        L_draw_score_134
L_draw_score_133:
;glcd.c,164 :: 		else if(score[0] == 9){
	MOVF        _score+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_135
;glcd.c,165 :: 		Glcd_Write_Char('9',50, 0, 1);
	MOVLW       57
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,166 :: 		}
L_draw_score_135:
L_draw_score_134:
L_draw_score_132:
L_draw_score_130:
L_draw_score_128:
L_draw_score_126:
L_draw_score_124:
L_draw_score_122:
L_draw_score_120:
L_draw_score_118:
;glcd.c,167 :: 		}
L_end_draw_score_1:
	RETURN      0
; end of _draw_score_1

_draw_score_2:

;glcd.c,169 :: 		void draw_score_2(){
;glcd.c,170 :: 		if(score[1] == 0){
	MOVF        _score+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_236
;glcd.c,171 :: 		Glcd_Write_Char('0',74,0,1);
	MOVLW       48
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,172 :: 		}
	GOTO        L_draw_score_237
L_draw_score_236:
;glcd.c,173 :: 		else if(score[1] == 1){
	MOVF        _score+1, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_238
;glcd.c,174 :: 		Glcd_Write_Char('1',74,0,1);
	MOVLW       49
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,175 :: 		}
	GOTO        L_draw_score_239
L_draw_score_238:
;glcd.c,176 :: 		else if(score[1] == 2){
	MOVF        _score+1, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_240
;glcd.c,177 :: 		Glcd_Write_Char('2',74,0,1);
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,178 :: 		}
	GOTO        L_draw_score_241
L_draw_score_240:
;glcd.c,179 :: 		else if(score[1] == 3){
	MOVF        _score+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_242
;glcd.c,180 :: 		Glcd_Write_Char('3',74,0,1);
	MOVLW       51
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,181 :: 		}
	GOTO        L_draw_score_243
L_draw_score_242:
;glcd.c,182 :: 		else if(score[1] == 4){
	MOVF        _score+1, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_244
;glcd.c,183 :: 		Glcd_Write_Char('4',74,0,1);
	MOVLW       52
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,184 :: 		}
	GOTO        L_draw_score_245
L_draw_score_244:
;glcd.c,185 :: 		else if(score[1] == 5){
	MOVF        _score+1, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_246
;glcd.c,186 :: 		Glcd_Write_Char('5',74,0,1);
	MOVLW       53
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,187 :: 		}
	GOTO        L_draw_score_247
L_draw_score_246:
;glcd.c,188 :: 		else if(score[1] == 6){
	MOVF        _score+1, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_248
;glcd.c,189 :: 		Glcd_Write_Char('6',74,0,1);
	MOVLW       54
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,190 :: 		}
	GOTO        L_draw_score_249
L_draw_score_248:
;glcd.c,191 :: 		else if(score[1] == 7){
	MOVF        _score+1, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_250
;glcd.c,192 :: 		Glcd_Write_Char('7',74,0,1);
	MOVLW       55
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,193 :: 		}
	GOTO        L_draw_score_251
L_draw_score_250:
;glcd.c,194 :: 		else if(score[1] == 8){
	MOVF        _score+1, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_252
;glcd.c,195 :: 		Glcd_Write_Char('8',74,0,1);
	MOVLW       56
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,196 :: 		}
	GOTO        L_draw_score_253
L_draw_score_252:
;glcd.c,197 :: 		else if(score[1] == 9){
	MOVF        _score+1, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_254
;glcd.c,198 :: 		Glcd_Write_Char('9',74,0,1);
	MOVLW       57
	MOVWF       FARG_Glcd_Write_Char_chr+0 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Char_x_pos+0 
	CLRF        FARG_Glcd_Write_Char_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Char_color+0 
	CALL        _Glcd_Write_Char+0, 0
;glcd.c,199 :: 		}
L_draw_score_254:
L_draw_score_253:
L_draw_score_251:
L_draw_score_249:
L_draw_score_247:
L_draw_score_245:
L_draw_score_243:
L_draw_score_241:
L_draw_score_239:
L_draw_score_237:
;glcd.c,200 :: 		}
L_end_draw_score_2:
	RETURN      0
; end of _draw_score_2

_draw_score_Mult:

;glcd.c,202 :: 		void draw_score_Mult(){
;glcd.c,205 :: 		ShortToStr(score[0],text_1);
	MOVF        _score+0, 0 
	MOVWF       FARG_ShortToStr_input+0 
	MOVLW       draw_score_Mult_text_1_L0+0
	MOVWF       FARG_ShortToStr_output+0 
	MOVLW       hi_addr(draw_score_Mult_text_1_L0+0)
	MOVWF       FARG_ShortToStr_output+1 
	CALL        _ShortToStr+0, 0
;glcd.c,206 :: 		text = Ltrim(text_1);
	MOVLW       draw_score_Mult_text_1_L0+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(draw_score_Mult_text_1_L0+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;glcd.c,207 :: 		Glcd_Write_Text(text, 50, 0, 1);
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        R1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,208 :: 		ShortToStr(score[1],text_1);
	MOVF        _score+1, 0 
	MOVWF       FARG_ShortToStr_input+0 
	MOVLW       draw_score_Mult_text_1_L0+0
	MOVWF       FARG_ShortToStr_output+0 
	MOVLW       hi_addr(draw_score_Mult_text_1_L0+0)
	MOVWF       FARG_ShortToStr_output+1 
	CALL        _ShortToStr+0, 0
;glcd.c,209 :: 		text = Ltrim(text_1);
	MOVLW       draw_score_Mult_text_1_L0+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(draw_score_Mult_text_1_L0+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;glcd.c,210 :: 		Glcd_Write_Text(text,74 , 0, 1);
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        R1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       74
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,211 :: 		}
L_end_draw_score_Mult:
	RETURN      0
; end of _draw_score_Mult

_draw_player:

;glcd.c,213 :: 		void draw_player(unsigned short x, unsigned short y, unsigned short w, unsigned short h){
;glcd.c,214 :: 		Glcd_V_Line(y, y+h, x, 1);
	MOVF        FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_start+0 
	MOVF        FARG_draw_player_h+0, 0 
	ADDWF       FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_end+0 
	MOVF        FARG_draw_player_x+0, 0 
	MOVWF       FARG_Glcd_V_Line_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_V_Line_color+0 
	CALL        _Glcd_V_Line+0, 0
;glcd.c,215 :: 		}
L_end_draw_player:
	RETURN      0
; end of _draw_player

_draw_net:

;glcd.c,217 :: 		void draw_net(){
;glcd.c,218 :: 		unsigned short y = 5;
	MOVLW       5
	MOVWF       draw_net_y_L0+0 
	CLRF        draw_net_i_L0+0 
;glcd.c,220 :: 		for( i = 0; i<6; i++ ){
	CLRF        draw_net_i_L0+0 
L_draw_net55:
	MOVLW       6
	SUBWF       draw_net_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_net56
;glcd.c,221 :: 		Glcd_V_Line(y, y + 5, 63, 1);
	MOVF        draw_net_y_L0+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_start+0 
	MOVLW       5
	ADDWF       draw_net_y_L0+0, 0 
	MOVWF       FARG_Glcd_V_Line_y_end+0 
	MOVLW       63
	MOVWF       FARG_Glcd_V_Line_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_V_Line_color+0 
	CALL        _Glcd_V_Line+0, 0
;glcd.c,222 :: 		y += 10;
	MOVLW       10
	ADDWF       draw_net_y_L0+0, 1 
;glcd.c,220 :: 		for( i = 0; i<6; i++ ){
	INCF        draw_net_i_L0+0, 1 
;glcd.c,223 :: 		}
	GOTO        L_draw_net55
L_draw_net56:
;glcd.c,224 :: 		}
L_end_draw_net:
	RETURN      0
; end of _draw_net

_draw_ball:

;glcd.c,226 :: 		void draw_ball(unsigned short x, unsigned short y){
;glcd.c,227 :: 		Glcd_Dot(x,y, 1);
	MOVF        FARG_draw_ball_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        FARG_draw_ball_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,228 :: 		}
L_end_draw_ball:
	RETURN      0
; end of _draw_ball

_move_players:

;glcd.c,230 :: 		void move_players(unsigned short direc, unsigned short player){
;glcd.c,231 :: 		if(direc == 0){ // Direccion hacia abajo
	MOVF        FARG_move_players_direc+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_move_players58
;glcd.c,232 :: 		if(paddle[player].y >= 63 - paddle[player].h){
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       3
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	SUBLW       63
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_players216
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_players216:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_players59
;glcd.c,233 :: 		paddle[player].y = 63 - paddle[player].h;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       3
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	SUBLW       63
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,234 :: 		}
	GOTO        L_move_players60
L_move_players59:
;glcd.c,236 :: 		paddle[player].y += 2;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVLW       2
	ADDWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,237 :: 		}
L_move_players60:
;glcd.c,238 :: 		}
L_move_players58:
;glcd.c,239 :: 		if(direc == 1){
	MOVF        FARG_move_players_direc+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_players61
;glcd.c,240 :: 		if(paddle[player].y <= 0){
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	SUBLW       0
	BTFSS       STATUS+0, 0 
	GOTO        L_move_players62
;glcd.c,241 :: 		paddle[player].y = 0;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	CLRF        POSTINC1+0 
;glcd.c,242 :: 		}
	GOTO        L_move_players63
L_move_players62:
;glcd.c,244 :: 		paddle[player].y -= 2;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVLW       2
	SUBWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,245 :: 		}
L_move_players63:
;glcd.c,246 :: 		}
L_move_players61:
;glcd.c,247 :: 		}
L_end_move_players:
	RETURN      0
; end of _move_players

_move_ia:

;glcd.c,249 :: 		void move_ia(){  // Funcion que mueve la paleta contraria en modo un jugador
;glcd.c,250 :: 		unsigned short centerP =  paddle[0].y + 4;
	MOVLW       4
	ADDWF       _paddle+1, 0 
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       move_ia_centerP_L0+0 
;glcd.c,251 :: 		unsigned short centerS = 32;
	MOVLW       32
	MOVWF       move_ia_centerS_L0+0 
;glcd.c,252 :: 		short speed_ball = ball.dy;
	MOVF        _ball+3, 0 
	MOVWF       move_ia_speed_ball_L0+0 
;glcd.c,254 :: 		if(count == 2){
	MOVF        _count+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_ia64
;glcd.c,255 :: 		borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,256 :: 		if(speed_ball < 0){
	MOVLW       128
	XORWF       move_ia_speed_ball_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       0
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia65
;glcd.c,257 :: 		speed_ball = -speed_ball;
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBLW       0
	MOVWF       move_ia_speed_ball_L0+0 
;glcd.c,258 :: 		}
L_move_ia65:
;glcd.c,260 :: 		if(ball.dx > 0 ){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+2, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia66
;glcd.c,261 :: 		if(centerP < centerS){  // Buscamos centrar la paleta con respecto al centro de pantalla
	MOVF        move_ia_centerS_L0+0, 0 
	SUBWF       move_ia_centerP_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia67
;glcd.c,262 :: 		paddle[0].y += speed_ball;
	MOVF        move_ia_speed_ball_L0+0, 0 
	ADDWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,263 :: 		}
	GOTO        L_move_ia68
L_move_ia67:
;glcd.c,265 :: 		paddle[0].y -= speed_ball;
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,266 :: 		}
L_move_ia68:
;glcd.c,267 :: 		}
	GOTO        L_move_ia69
L_move_ia66:
;glcd.c,270 :: 		if(ball.x < 64){
	MOVLW       128
	XORWF       _ball+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       64
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia70
;glcd.c,271 :: 		if(ball.dy > 0){   // Si la bola se mueve hacia abajo
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+3, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia71
;glcd.c,274 :: 		if(ball.y > centerP ){
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	BTFSC       _ball+1, 7 
	MOVLW       127
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia218
	MOVF        _ball+1, 0 
	SUBWF       move_ia_centerP_L0+0, 0 
L__move_ia218:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia72
;glcd.c,276 :: 		if(paddle[0].y + speed_ball < 64){
	MOVF        move_ia_speed_ball_L0+0, 0 
	ADDWF       _paddle+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	BTFSC       move_ia_speed_ball_L0+0, 7 
	MOVLW       255
	ADDWFC      R2, 1 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia219
	MOVLW       64
	SUBWF       R1, 0 
L__move_ia219:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia73
;glcd.c,277 :: 		paddle[0].y += (speed_ball);
	MOVF        move_ia_speed_ball_L0+0, 0 
	ADDWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,278 :: 		}
	GOTO        L_move_ia74
L_move_ia73:
;glcd.c,280 :: 		paddle[0].y = 63 - paddle[0].h;
	MOVF        _paddle+3, 0 
	SUBLW       63
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,281 :: 		}
L_move_ia74:
;glcd.c,282 :: 		}
	GOTO        L_move_ia75
L_move_ia72:
;glcd.c,284 :: 		if(paddle[0].y - speed_ball > 0){
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBWF       _paddle+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	BTFSC       move_ia_speed_ball_L0+0, 7 
	MOVLW       255
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia220
	MOVF        R1, 0 
	SUBLW       0
L__move_ia220:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia76
;glcd.c,285 :: 		paddle[0].y -= (speed_ball);
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,286 :: 		}
	GOTO        L_move_ia77
L_move_ia76:
;glcd.c,288 :: 		paddle[0].y = 0;
	CLRF        _paddle+1 
;glcd.c,289 :: 		}
L_move_ia77:
;glcd.c,290 :: 		}
L_move_ia75:
;glcd.c,291 :: 		}
L_move_ia71:
;glcd.c,292 :: 		if(ball.dy < 0){ // Si la bola se mueve hacia arriba
	MOVLW       128
	XORWF       _ball+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       0
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia78
;glcd.c,293 :: 		if(ball.y < centerP){
	MOVLW       128
	BTFSC       _ball+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia221
	MOVF        move_ia_centerP_L0+0, 0 
	SUBWF       _ball+1, 0 
L__move_ia221:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia79
;glcd.c,294 :: 		if(paddle[0].y - speed_ball > 0){
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBWF       _paddle+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	BTFSC       move_ia_speed_ball_L0+0, 7 
	MOVLW       255
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia222
	MOVF        R1, 0 
	SUBLW       0
L__move_ia222:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia80
;glcd.c,295 :: 		paddle[0].y -= (speed_ball);
	MOVF        move_ia_speed_ball_L0+0, 0 
	SUBWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,296 :: 		}
	GOTO        L_move_ia81
L_move_ia80:
;glcd.c,298 :: 		paddle[0].y = 0;
	CLRF        _paddle+1 
;glcd.c,299 :: 		}
L_move_ia81:
;glcd.c,300 :: 		}
	GOTO        L_move_ia82
L_move_ia79:
;glcd.c,302 :: 		if(paddle[0].y < 64){
	MOVLW       64
	SUBWF       _paddle+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia83
;glcd.c,303 :: 		paddle[0].y += (speed_ball);
	MOVF        move_ia_speed_ball_L0+0, 0 
	ADDWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,304 :: 		}
	GOTO        L_move_ia84
L_move_ia83:
;glcd.c,306 :: 		paddle[0].y = 63 - paddle[0].h;
	MOVF        _paddle+3, 0 
	SUBLW       63
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,307 :: 		}
L_move_ia84:
;glcd.c,308 :: 		}
L_move_ia82:
;glcd.c,309 :: 		}
L_move_ia78:
;glcd.c,310 :: 		if(ball.dy == 0){
	MOVF        _ball+3, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_move_ia85
;glcd.c,311 :: 		if(ball.y < centerP){
	MOVLW       128
	BTFSC       _ball+1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_ia223
	MOVF        move_ia_centerP_L0+0, 0 
	SUBWF       _ball+1, 0 
L__move_ia223:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ia86
;glcd.c,312 :: 		paddle[0].y -= 3;
	MOVLW       3
	SUBWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,313 :: 		}
	GOTO        L_move_ia87
L_move_ia86:
;glcd.c,315 :: 		paddle[0].y += 3;
	MOVLW       3
	ADDWF       _paddle+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,316 :: 		}
L_move_ia87:
;glcd.c,317 :: 		}
L_move_ia85:
;glcd.c,318 :: 		}
L_move_ia70:
;glcd.c,319 :: 		}
L_move_ia69:
;glcd.c,320 :: 		}
L_move_ia64:
;glcd.c,321 :: 		}
L_end_move_ia:
	RETURN      0
; end of _move_ia

_move_ball:

;glcd.c,323 :: 		void move_ball(){
;glcd.c,327 :: 		if(count == 2){
	MOVF        _count+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_ball88
;glcd.c,329 :: 		Glcd_Dot(ball.x, ball.y, 0);
	MOVF        _ball+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _ball+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,332 :: 		ball.x += ball.dx;
	MOVF        _ball+2, 0 
	ADDWF       _ball+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+0 
;glcd.c,333 :: 		ball.y += ball.dy;
	MOVF        _ball+3, 0 
	ADDWF       _ball+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+1 
;glcd.c,336 :: 		if(ball.x < 3){
	MOVLW       128
	XORWF       _ball+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball89
;glcd.c,337 :: 		score[1] += 1;
	INCF        _score+1, 1 
;glcd.c,338 :: 		borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,339 :: 		borrar_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,340 :: 		init();
	CALL        _init+0, 0
;glcd.c,341 :: 		}
L_move_ball89:
;glcd.c,342 :: 		if(ball.x > 125){
	MOVLW       128
	XORLW       125
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball90
;glcd.c,343 :: 		score[0] += 1;
	INCF        _score+0, 1 
;glcd.c,344 :: 		borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,345 :: 		borrar_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,346 :: 		init();
	CALL        _init+0, 0
;glcd.c,347 :: 		}
L_move_ball90:
;glcd.c,351 :: 		if(ball.y <= 0 || ball.y >= 63){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L__move_ball194
	MOVLW       128
	XORWF       _ball+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       63
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L__move_ball194
	GOTO        L_move_ball93
L__move_ball194:
;glcd.c,352 :: 		ball.dy = -ball.dy;
	MOVF        _ball+3, 0 
	SUBLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+3 
;glcd.c,353 :: 		}
L_move_ball93:
;glcd.c,355 :: 		for(i = 0 ; i<2; i++){
	CLRF        move_ball_i_L0+0 
L_move_ball94:
	MOVLW       2
	SUBWF       move_ball_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball95
;glcd.c,356 :: 		if(check_coll(ball, paddle[i], i)){ // En caso de que se detecte colision
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_b+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_b+0)
	MOVWF       FSR1L+1 
	MOVLW       _ball+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_ball+0)
	MOVWF       FSR0L+1 
L_move_ball97:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_ball97
	MOVF        move_ball_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_p+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_p+0)
	MOVWF       FSR1L+1 
L_move_ball98:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_ball98
	MOVF        move_ball_i_L0+0, 0 
	MOVWF       FARG_check_coll_number+0 
	CALL        _check_coll+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_move_ball99
;glcd.c,366 :: 		ball.dx = -ball.dx;
	MOVF        _ball+2, 0 
	SUBLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+2 
;glcd.c,369 :: 		posHit = (paddle[i].y + paddle[i].h) - ball.y;
	MOVF        move_ball_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _paddle+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_paddle+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        _ball+1, 0 
	SUBWF       R0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       move_ball_posHit_L0+0 
;glcd.c,370 :: 		if(posHit >= 0 && posHit<2){
	MOVLW       0
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_ball102
	MOVLW       2
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball102
L__move_ball193:
;glcd.c,371 :: 		ball.dy = 3;
	MOVLW       3
	MOVWF       _ball+3 
;glcd.c,372 :: 		}
L_move_ball102:
;glcd.c,373 :: 		if(posHit >= 2 && posHit<4){
	MOVLW       2
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_ball105
	MOVLW       4
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball105
L__move_ball192:
;glcd.c,374 :: 		ball.dy = 2;
	MOVLW       2
	MOVWF       _ball+3 
;glcd.c,375 :: 		}
L_move_ball105:
;glcd.c,376 :: 		if(posHit >= 4 && posHit<6){
	MOVLW       4
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_ball108
	MOVLW       6
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball108
L__move_ball191:
;glcd.c,377 :: 		ball.dy = 0;
	CLRF        _ball+3 
;glcd.c,378 :: 		}
L_move_ball108:
;glcd.c,379 :: 		if(posHit >= 6 && posHit<8){
	MOVLW       6
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_ball111
	MOVLW       8
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball111
L__move_ball190:
;glcd.c,380 :: 		ball.dy = -2;
	MOVLW       254
	MOVWF       _ball+3 
;glcd.c,381 :: 		}
L_move_ball111:
;glcd.c,382 :: 		if(posHit >= 8 && posHit<9){
	MOVLW       8
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_ball114
	MOVLW       9
	SUBWF       move_ball_posHit_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball114
L__move_ball189:
;glcd.c,383 :: 		ball.dy = -3;
	MOVLW       253
	MOVWF       _ball+3 
;glcd.c,384 :: 		}
L_move_ball114:
;glcd.c,387 :: 		if(ball.dx > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+2, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball115
;glcd.c,389 :: 		if(ball.x < 0){
	MOVLW       128
	XORWF       _ball+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       0
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball116
;glcd.c,390 :: 		ball.x = 0;
	CLRF        _ball+0 
;glcd.c,391 :: 		}
L_move_ball116:
;glcd.c,392 :: 		}
	GOTO        L_move_ball117
L_move_ball115:
;glcd.c,395 :: 		if(ball.x > 127){
	MOVLW       128
	XORLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       _ball+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_ball118
;glcd.c,396 :: 		ball.x = 127;
	MOVLW       127
	MOVWF       _ball+0 
;glcd.c,397 :: 		}
L_move_ball118:
;glcd.c,398 :: 		}
L_move_ball117:
;glcd.c,399 :: 		}
L_move_ball99:
;glcd.c,355 :: 		for(i = 0 ; i<2; i++){
	INCF        move_ball_i_L0+0, 1 
;glcd.c,402 :: 		}
	GOTO        L_move_ball94
L_move_ball95:
;glcd.c,403 :: 		}
L_move_ball88:
;glcd.c,404 :: 		}
L_end_move_ball:
	RETURN      0
; end of _move_ball

_serial_pack_data:

;glcd.c,406 :: 		void serial_pack_data() {  //Funcion para empaquetar datos a enviar
;glcd.c,408 :: 		serial_data[0] = ball.x + '0';
	MOVLW       48
	ADDWF       _ball+0, 0 
	MOVWF       _serial_data+0 
;glcd.c,409 :: 		serial_data[1] = ball.y + '0';
	MOVLW       48
	ADDWF       _ball+1, 0 
	MOVWF       _serial_data+1 
;glcd.c,412 :: 		serial_data[2] = score[0] + '0';
	MOVLW       48
	ADDWF       _score+0, 0 
	MOVWF       _serial_data+2 
;glcd.c,413 :: 		serial_data[3] = score[1] + '0';
	MOVLW       48
	ADDWF       _score+1, 0 
	MOVWF       _serial_data+3 
;glcd.c,416 :: 		serial_data[4] = paddle[0].y + '0';  //Maestro
	MOVLW       48
	ADDWF       _paddle+1, 0 
	MOVWF       _serial_data+4 
;glcd.c,417 :: 		serial_data[5] = paddle[1].y + '0';  // Esclavo
	MOVLW       48
	ADDWF       _paddle+5, 0 
	MOVWF       _serial_data+5 
;glcd.c,420 :: 		serial_data[6] = 'O';
	MOVLW       79
	MOVWF       _serial_data+6 
;glcd.c,421 :: 		serial_data[7] = 'K';
	MOVLW       75
	MOVWF       _serial_data+7 
;glcd.c,422 :: 		serial_data[8] = 0;
	CLRF        _serial_data+8 
;glcd.c,423 :: 		}
L_end_serial_pack_data:
	RETURN      0
; end of _serial_pack_data

_deserial_pack_data:

;glcd.c,425 :: 		void deserial_pack_data(){   // Funcion para extraer datos del paquete recibido por esclavo
;glcd.c,426 :: 		ball.x = serial_data[0] - '0';
	MOVLW       48
	SUBWF       _serial_data+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+0 
;glcd.c,427 :: 		ball.y = serial_data[1] - '0';
	MOVLW       48
	SUBWF       _serial_data+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _ball+1 
;glcd.c,429 :: 		score[0] = serial_data[2] - '0';
	MOVLW       48
	SUBWF       _serial_data+2, 0 
	MOVWF       _score+0 
;glcd.c,430 :: 		score[1] = serial_data[3] - '0';
	MOVLW       48
	SUBWF       _serial_data+3, 0 
	MOVWF       _score+1 
;glcd.c,432 :: 		paddle[0].y = serial_data[4] - '0';
	MOVLW       48
	SUBWF       _serial_data+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+1 
;glcd.c,433 :: 		paddle[1].y = serial_data[5] - '0';
	MOVLW       48
	SUBWF       _serial_data+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _paddle+5 
;glcd.c,434 :: 		}
L_end_deserial_pack_data:
	RETURN      0
; end of _deserial_pack_data

_send_char:

;glcd.c,436 :: 		void send_char(char charValue){
;glcd.c,437 :: 		while (UART1_Tx_Idle()!= 1);
L_send_char119:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_send_char120
	GOTO        L_send_char119
L_send_char120:
;glcd.c,438 :: 		UART1_Write(charValue);
	MOVF        FARG_send_char_charValue+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;glcd.c,439 :: 		}
L_end_send_char:
	RETURN      0
; end of _send_char

_reciv_char:

;glcd.c,441 :: 		void reciv_char(char char_dir){
;glcd.c,442 :: 		while (UART1_Data_Ready() == 0);
L_reciv_char121:
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_reciv_char122
	GOTO        L_reciv_char121
L_reciv_char122:
;glcd.c,443 :: 		char_dir = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_reciv_char_char_dir+0 
;glcd.c,444 :: 		}
L_end_reciv_char:
	RETURN      0
; end of _reciv_char

_send_pack_data:

;glcd.c,446 :: 		void send_pack_data(char *serial_dir){
;glcd.c,447 :: 		while (UART1_Tx_Idle()!= 1);
L_send_pack_data123:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_send_pack_data124
	GOTO        L_send_pack_data123
L_send_pack_data124:
;glcd.c,448 :: 		UART1_Write_Text(serial_dir);
	MOVF        FARG_send_pack_data_serial_dir+0, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVF        FARG_send_pack_data_serial_dir+1, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;glcd.c,449 :: 		}
L_end_send_pack_data:
	RETURN      0
; end of _send_pack_data

_reciv_pack_data:

;glcd.c,451 :: 		void reciv_pack_data(char *text_dir){
;glcd.c,452 :: 		while(UART1_Data_Ready()==0);
L_reciv_pack_data125:
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_reciv_pack_data126
	GOTO        L_reciv_pack_data125
L_reciv_pack_data126:
;glcd.c,453 :: 		UART1_Read_Text(text_dir, "OK", 255);
	MOVF        FARG_reciv_pack_data_text_dir+0, 0 
	MOVWF       FARG_UART1_Read_Text_Output+0 
	MOVF        FARG_reciv_pack_data_text_dir+1, 0 
	MOVWF       FARG_UART1_Read_Text_Output+1 
	MOVLW       ?lstr7_glcd+0
	MOVWF       FARG_UART1_Read_Text_Delimiter+0 
	MOVLW       hi_addr(?lstr7_glcd+0)
	MOVWF       FARG_UART1_Read_Text_Delimiter+1 
	MOVLW       255
	MOVWF       FARG_UART1_Read_Text_Attempts+0 
	CALL        _UART1_Read_Text+0, 0
;glcd.c,454 :: 		}
L_end_reciv_pack_data:
	RETURN      0
; end of _reciv_pack_data

_save_old_data:

;glcd.c,456 :: 		void save_old_data(){
;glcd.c,457 :: 		old_paddle[0].y = paddle[0].y;
	MOVF        _paddle+1, 0 
	MOVWF       _old_paddle+1 
;glcd.c,458 :: 		old_paddle[1].y = paddle[1].y;
	MOVF        _paddle+5, 0 
	MOVWF       _old_paddle+5 
;glcd.c,460 :: 		old_ball.x = ball.x;
	MOVF        _ball+0, 0 
	MOVWF       _old_ball+0 
;glcd.c,461 :: 		old_ball.y = ball.y;
	MOVF        _ball+1, 0 
	MOVWF       _old_ball+1 
;glcd.c,462 :: 		old_ball.dx = ball.dx;
	MOVF        _ball+2, 0 
	MOVWF       _old_ball+2 
;glcd.c,463 :: 		old_ball.dy = ball.dy;
	MOVF        _ball+3, 0 
	MOVWF       _old_ball+3 
;glcd.c,464 :: 		}
L_end_save_old_data:
	RETURN      0
; end of _save_old_data

_prueba:

;glcd.c,466 :: 		void prueba(unsigned y){
;glcd.c,469 :: 		ShortTostr(y,text_1);
	MOVF        FARG_prueba_y+0, 0 
	MOVWF       FARG_ShortToStr_input+0 
	MOVLW       prueba_text_1_L0+0
	MOVWF       FARG_ShortToStr_output+0 
	MOVLW       hi_addr(prueba_text_1_L0+0)
	MOVWF       FARG_ShortToStr_output+1 
	CALL        _ShortToStr+0, 0
;glcd.c,470 :: 		text = Ltrim(text_1);
	MOVLW       prueba_text_1_L0+0
	MOVWF       FARG_Ltrim_string+0 
	MOVLW       hi_addr(prueba_text_1_L0+0)
	MOVWF       FARG_Ltrim_string+1 
	CALL        _Ltrim+0, 0
;glcd.c,471 :: 		Glcd_Write_Text(text, 50, 4, 1);
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVF        R1, 0 
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,472 :: 		}
L_end_prueba:
	RETURN      0
; end of _prueba

_main:

;glcd.c,473 :: 		void main() {
;glcd.c,476 :: 		unsigned short Player= 0;
	CLRF        main_Player_L0+0 
	CLRF        main_button_L0+0 
	MOVLW       51
	MOVWF       main_E_M_L0+0 
;glcd.c,483 :: 		PORTC = 0;      //Ponemos todo el puerto C en 0
	CLRF        PORTC+0 
;glcd.c,484 :: 		TRISC.F0 = 1;   //Se declara como una entrada
	BSF         TRISC+0, 0 
;glcd.c,485 :: 		TRISC.F1 = 1;
	BSF         TRISC+0, 1 
;glcd.c,489 :: 		Glcd_Init();         // Para inicialzar el modulo glcd
	CALL        _Glcd_Init+0, 0
;glcd.c,490 :: 		Glcd_Fill(0x00);        // Para limpiar la pantalla
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,494 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       51
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;glcd.c,495 :: 		Delay_ms(200);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main127:
	DECFSZ      R13, 1, 1
	BRA         L_main127
	DECFSZ      R12, 1, 1
	BRA         L_main127
	NOP
	NOP
;glcd.c,499 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;glcd.c,502 :: 		first_CoverP();
	CALL        _first_CoverP+0, 0
;glcd.c,503 :: 		while(1){
L_main128:
;glcd.c,504 :: 		switch (estado){
	GOTO        L_main130
;glcd.c,505 :: 		case 0:
L_main132:
;glcd.c,506 :: 		port_pong();
	CALL        _port_pong+0, 0
;glcd.c,507 :: 		while (1){
L_main133:
;glcd.c,508 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,510 :: 		if(y <= 100){
	MOVLW       0
	MOVWF       R2 
	MOVF        R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main234
	MOVF        R0, 0 
	SUBLW       100
L__main234:
	BTFSS       STATUS+0, 0 
	GOTO        L_main135
;glcd.c,511 :: 		Glcd_Write_Text("One player", 35, 4,0);
	MOVLW       ?lstr8_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr8_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,512 :: 		estado = 1;
	MOVLW       1
	MOVWF       _estado+0 
;glcd.c,513 :: 		Delay_ms(1000);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main136:
	DECFSZ      R13, 1, 1
	BRA         L_main136
	DECFSZ      R12, 1, 1
	BRA         L_main136
	DECFSZ      R11, 1, 1
	BRA         L_main136
	NOP
	NOP
;glcd.c,514 :: 		break;
	GOTO        L_main134
;glcd.c,515 :: 		}
L_main135:
;glcd.c,516 :: 		if(y >= 600){
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main235
	MOVLW       88
	SUBWF       _y+0, 0 
L__main235:
	BTFSS       STATUS+0, 0 
	GOTO        L_main137
;glcd.c,517 :: 		Glcd_Write_Text("Two players", 32, 6,0);
	MOVLW       ?lstr9_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr9_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       32
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,518 :: 		estado = 2;
	MOVLW       2
	MOVWF       _estado+0 
;glcd.c,519 :: 		Delay_ms(1000);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main138:
	DECFSZ      R13, 1, 1
	BRA         L_main138
	DECFSZ      R12, 1, 1
	BRA         L_main138
	DECFSZ      R11, 1, 1
	BRA         L_main138
	NOP
	NOP
;glcd.c,521 :: 		break;
	GOTO        L_main134
;glcd.c,522 :: 		}
L_main137:
;glcd.c,535 :: 		}
	GOTO        L_main133
L_main134:
;glcd.c,536 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,537 :: 		break;
	GOTO        L_main131
;glcd.c,538 :: 		case 1:
L_main139:
;glcd.c,540 :: 		init();
	CALL        _init+0, 0
;glcd.c,541 :: 		draw_net();
	CALL        _draw_net+0, 0
;glcd.c,542 :: 		while(1){
L_main140:
;glcd.c,543 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,545 :: 		if(count > 2){
	MOVF        _count+0, 0 
	SUBLW       2
	BTFSC       STATUS+0, 0 
	GOTO        L_main142
;glcd.c,546 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,547 :: 		}
L_main142:
;glcd.c,549 :: 		if(y >= 600){   // Hacia abajo
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main236
	MOVLW       88
	SUBWF       _y+0, 0 
L__main236:
	BTFSS       STATUS+0, 0 
	GOTO        L_main143
;glcd.c,550 :: 		borrar_player(paddle[1].x, paddle[1].y-2, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	SUBWF       _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,551 :: 		move_players(0,1);
	CLRF        FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,552 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,553 :: 		}
L_main143:
;glcd.c,554 :: 		if(y <= 100){      // Hacia arriba
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main237
	MOVF        _y+0, 0 
	SUBLW       100
L__main237:
	BTFSS       STATUS+0, 0 
	GOTO        L_main144
;glcd.c,555 :: 		borrar_player(paddle[1].x, paddle[1].y+2, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	ADDWF       _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,556 :: 		move_players(1,1);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,557 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,558 :: 		}
L_main144:
;glcd.c,560 :: 		move_ball();
	CALL        _move_ball+0, 0
;glcd.c,561 :: 		draw_ball(ball.x,ball.y);
	MOVF        _ball+0, 0 
	MOVWF       FARG_draw_ball_x+0 
	MOVF        _ball+1, 0 
	MOVWF       FARG_draw_ball_y+0 
	CALL        _draw_ball+0, 0
;glcd.c,564 :: 		move_ia();
	CALL        _move_ia+0, 0
;glcd.c,565 :: 		draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,568 :: 		draw_score_1();
	CALL        _draw_score_1+0, 0
;glcd.c,569 :: 		draw_score_2();
	CALL        _draw_score_2+0, 0
;glcd.c,572 :: 		winner = score_check();
	CALL        _score_check+0, 0
	MOVF        R0, 0 
	MOVWF       main_winner_L0+0 
;glcd.c,573 :: 		if(winner == 1 ){   // Gana la maquina
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main145
;glcd.c,574 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,575 :: 		Glcd_Write_Text("PC WIN !!", 43, 4,1);
	MOVLW       ?lstr10_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr10_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       43
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,576 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main146:
	DECFSZ      R13, 1, 1
	BRA         L_main146
	DECFSZ      R12, 1, 1
	BRA         L_main146
	DECFSZ      R11, 1, 1
	BRA         L_main146
	NOP
	NOP
;glcd.c,577 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,578 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,579 :: 		break;
	GOTO        L_main141
;glcd.c,580 :: 		}
L_main145:
;glcd.c,581 :: 		if(winner == 2 ){   // Gana el jugador
	MOVF        main_winner_L0+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
;glcd.c,582 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,583 :: 		Glcd_Write_Text("Player WIN", 36, 4,1);
	MOVLW       ?lstr11_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr11_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,584 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main148:
	DECFSZ      R13, 1, 1
	BRA         L_main148
	DECFSZ      R12, 1, 1
	BRA         L_main148
	DECFSZ      R11, 1, 1
	BRA         L_main148
	NOP
	NOP
;glcd.c,585 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,586 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,587 :: 		break;
	GOTO        L_main141
;glcd.c,588 :: 		}
L_main147:
;glcd.c,589 :: 		count ++;
	INCF        _count+0, 1 
;glcd.c,590 :: 		}
	GOTO        L_main140
L_main141:
;glcd.c,591 :: 		break;
	GOTO        L_main131
;glcd.c,592 :: 		case 2:   // PARA EL MODO MULTIJUGADOR
L_main149:
;glcd.c,593 :: 		init();
	CALL        _init+0, 0
;glcd.c,594 :: 		draw_net();
	CALL        _draw_net+0, 0
;glcd.c,595 :: 		Glcd_Write_Text("Wait",0,0,1);
	MOVLW       ?lstr12_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr12_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,597 :: 		if(UART1_Data_Ready()==0){
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main150
;glcd.c,598 :: 		E_M = '1';
	MOVLW       49
	MOVWF       main_E_M_L0+0 
;glcd.c,599 :: 		UART1_Write('2');
	MOVLW       50
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;glcd.c,600 :: 		}
	GOTO        L_main151
L_main150:
;glcd.c,602 :: 		E_M = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_E_M_L0+0 
;glcd.c,603 :: 		}
L_main151:
;glcd.c,605 :: 		if(E_M == '2'){
	MOVF        main_E_M_L0+0, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
;glcd.c,606 :: 		Glcd_Write_Text("    ",0,0,1);
	MOVLW       ?lstr13_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr13_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,607 :: 		Glcd_Write_Text("P2",115,0,1);
	MOVLW       ?lstr14_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr14_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       115
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,608 :: 		Player = 2;
	MOVLW       2
	MOVWF       main_Player_L0+0 
;glcd.c,609 :: 		}
	GOTO        L_main153
L_main152:
;glcd.c,611 :: 		Glcd_Write_Text("    ",0,0,1);
	MOVLW       ?lstr15_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr15_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,612 :: 		Glcd_Write_Text("P1",0,0,1);
	MOVLW       ?lstr16_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr16_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,613 :: 		Player = 1;
	MOVLW       1
	MOVWF       main_Player_L0+0 
;glcd.c,614 :: 		}
L_main153:
;glcd.c,634 :: 		if(Player == 1){  // PARA EL MAESTRO
	MOVF        main_Player_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main154
;glcd.c,637 :: 		while(1){
L_main155:
;glcd.c,638 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,640 :: 		if(count > 2){
	MOVF        _count+0, 0 
	SUBLW       2
	BTFSC       STATUS+0, 0 
	GOTO        L_main157
;glcd.c,641 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,642 :: 		}
L_main157:
;glcd.c,643 :: 		if(y >= 600){  // Hacia abajo
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main238
	MOVLW       88
	SUBWF       _y+0, 0 
L__main238:
	BTFSS       STATUS+0, 0 
	GOTO        L_main158
;glcd.c,644 :: 		borrar_player(paddle[0].x, paddle[0].y-2, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	SUBWF       _paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,645 :: 		move_players(0,0);
	CLRF        FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,646 :: 		draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,647 :: 		}
L_main158:
;glcd.c,648 :: 		if(y <= 100){ // Hacia arriba
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main239
	MOVF        _y+0, 0 
	SUBLW       100
L__main239:
	BTFSS       STATUS+0, 0 
	GOTO        L_main159
;glcd.c,649 :: 		borrar_player(paddle[0].x, paddle[0].y+2, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	ADDWF       _paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,650 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,651 :: 		draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,652 :: 		}
L_main159:
;glcd.c,657 :: 		while(UART1_Data_Ready()==0);
L_main160:
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main161
	GOTO        L_main160
L_main161:
;glcd.c,658 :: 		if(UART1_Read() == '1' ){  // Hacia abajo
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main162
;glcd.c,659 :: 		borrar_player(paddle[1].x, paddle[1].y-2, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	SUBWF       _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,660 :: 		move_players(0,1);
	CLRF        FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,661 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,662 :: 		}
	GOTO        L_main163
L_main162:
;glcd.c,663 :: 		else if(UART1_Read() == '2'){  // Hacia arriba
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main164
;glcd.c,664 :: 		borrar_player(paddle[1].x, paddle[1].y+2, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       2
	ADDWF       _paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,665 :: 		move_players(1,1);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,666 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,667 :: 		}
L_main164:
L_main163:
;glcd.c,669 :: 		move_ball();
	CALL        _move_ball+0, 0
;glcd.c,670 :: 		draw_ball(ball.x,ball.y);
	MOVF        _ball+0, 0 
	MOVWF       FARG_draw_ball_x+0 
	MOVF        _ball+1, 0 
	MOVWF       FARG_draw_ball_y+0 
	CALL        _draw_ball+0, 0
;glcd.c,671 :: 		draw_score_1();
	CALL        _draw_score_1+0, 0
;glcd.c,672 :: 		draw_score_2();
	CALL        _draw_score_2+0, 0
;glcd.c,675 :: 		serial_pack_data();
	CALL        _serial_pack_data+0, 0
;glcd.c,676 :: 		send_pack_data(serial_data);
	MOVLW       _serial_data+0
	MOVWF       FARG_send_pack_data_serial_dir+0 
	MOVLW       hi_addr(_serial_data+0)
	MOVWF       FARG_send_pack_data_serial_dir+1 
	CALL        _send_pack_data+0, 0
;glcd.c,677 :: 		while (UART1_Tx_Idle()!=1);
L_main165:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main166
	GOTO        L_main165
L_main166:
;glcd.c,679 :: 		winner = score_check();
	CALL        _score_check+0, 0
	MOVF        R0, 0 
	MOVWF       main_winner_L0+0 
;glcd.c,680 :: 		if(winner == 1 ){   // Gana el maestro (player 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main167
;glcd.c,681 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,682 :: 		Glcd_Write_Text("You WIN !!", 43, 4,1);
	MOVLW       ?lstr17_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr17_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       43
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,683 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main168:
	DECFSZ      R13, 1, 1
	BRA         L_main168
	DECFSZ      R12, 1, 1
	BRA         L_main168
	DECFSZ      R11, 1, 1
	BRA         L_main168
	NOP
	NOP
;glcd.c,684 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,685 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,686 :: 		break;
	GOTO        L_main156
;glcd.c,687 :: 		}
L_main167:
;glcd.c,688 :: 		if(winner == 2 ){   // Gana el jugador
	MOVF        main_winner_L0+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main169
;glcd.c,689 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,690 :: 		Glcd_Write_Text("You Lose !!", 36, 4,1);
	MOVLW       ?lstr18_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr18_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,691 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main170:
	DECFSZ      R13, 1, 1
	BRA         L_main170
	DECFSZ      R12, 1, 1
	BRA         L_main170
	DECFSZ      R11, 1, 1
	BRA         L_main170
	NOP
	NOP
;glcd.c,692 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,693 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,694 :: 		break;
	GOTO        L_main156
;glcd.c,695 :: 		}
L_main169:
;glcd.c,697 :: 		count ++;
	INCF        _count+0, 1 
;glcd.c,698 :: 		}
	GOTO        L_main155
L_main156:
;glcd.c,700 :: 		}
L_main154:
;glcd.c,701 :: 		if(Player == 2){    // PARA ESCLAVO
	MOVF        main_Player_L0+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main171
;glcd.c,705 :: 		while(1){
L_main172:
;glcd.c,707 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,708 :: 		save_old_data();
	CALL        _save_old_data+0, 0
;glcd.c,710 :: 		if(y >= 600){  // Hacia abajo
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main240
	MOVLW       88
	SUBWF       _y+0, 0 
L__main240:
	BTFSS       STATUS+0, 0 
	GOTO        L_main174
;glcd.c,711 :: 		button ='1';
	MOVLW       49
	MOVWF       main_button_L0+0 
;glcd.c,712 :: 		}
	GOTO        L_main175
L_main174:
;glcd.c,713 :: 		else if(y <= 100){     // Hacia arriba
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main241
	MOVF        _y+0, 0 
	SUBLW       100
L__main241:
	BTFSS       STATUS+0, 0 
	GOTO        L_main176
;glcd.c,714 :: 		button ='2';
	MOVLW       50
	MOVWF       main_button_L0+0 
;glcd.c,715 :: 		}
	GOTO        L_main177
L_main176:
;glcd.c,717 :: 		button = '0';
	MOVLW       48
	MOVWF       main_button_L0+0 
;glcd.c,718 :: 		}
L_main177:
L_main175:
;glcd.c,719 :: 		send_char(button);
	MOVF        main_button_L0+0, 0 
	MOVWF       FARG_send_char_charValue+0 
	CALL        _send_char+0, 0
;glcd.c,732 :: 		reciv_pack_data(serial_data);
	MOVLW       _serial_data+0
	MOVWF       FARG_reciv_pack_data_text_dir+0 
	MOVLW       hi_addr(_serial_data+0)
	MOVWF       FARG_reciv_pack_data_text_dir+1 
	CALL        _reciv_pack_data+0, 0
;glcd.c,733 :: 		deserial_pack_data();
	CALL        _deserial_pack_data+0, 0
;glcd.c,735 :: 		if(old_ball.x != ball.x || old_ball.y != ball.y){
	MOVF        _old_ball+0, 0 
	XORWF       _ball+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main195
	MOVF        _old_ball+1, 0 
	XORWF       _ball+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main195
	GOTO        L_main180
L__main195:
;glcd.c,736 :: 		Glcd_Dot(old_ball.x, old_ball.y, 0);
	MOVF        _old_ball+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _old_ball+1, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,737 :: 		}
L_main180:
;glcd.c,738 :: 		if(old_paddle[0].y != paddle[0].y){
	MOVF        _old_paddle+1, 0 
	XORWF       _paddle+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main181
;glcd.c,739 :: 		borrar_player(paddle[0].x, old_paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _old_paddle+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,740 :: 		}
L_main181:
;glcd.c,741 :: 		if(old_paddle[1].y != paddle[1].y){
	MOVF        _old_paddle+5, 0 
	XORWF       _paddle+5, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main182
;glcd.c,742 :: 		borrar_player(paddle[1].x, old_paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        _old_paddle+5, 0 
	MOVWF       FARG_borrar_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_borrar_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_borrar_player_h+0 
	CALL        _borrar_player+0, 0
;glcd.c,743 :: 		}
L_main182:
;glcd.c,744 :: 		draw_score_Mult();
	CALL        _draw_score_Mult+0, 0
;glcd.c,745 :: 		draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
	MOVF        _paddle+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+1, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+2, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+3, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,746 :: 		draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
	MOVF        _paddle+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _paddle+5, 0 
	MOVWF       FARG_draw_player_y+0 
	MOVF        _paddle+6, 0 
	MOVWF       FARG_draw_player_w+0 
	MOVF        _paddle+7, 0 
	MOVWF       FARG_draw_player_h+0 
	CALL        _draw_player+0, 0
;glcd.c,747 :: 		draw_ball(ball.x,ball.y);
	MOVF        _ball+0, 0 
	MOVWF       FARG_draw_ball_x+0 
	MOVF        _ball+1, 0 
	MOVWF       FARG_draw_ball_y+0 
	CALL        _draw_ball+0, 0
;glcd.c,749 :: 		winner = score_check();
	CALL        _score_check+0, 0
	MOVF        R0, 0 
	MOVWF       main_winner_L0+0 
;glcd.c,750 :: 		if(winner == 1 ){   // Gana el maestro (player 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main183
;glcd.c,751 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,752 :: 		Glcd_Write_Text("You Lose !!", 36, 4,1);
	MOVLW       ?lstr19_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr19_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,753 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main184:
	DECFSZ      R13, 1, 1
	BRA         L_main184
	DECFSZ      R12, 1, 1
	BRA         L_main184
	DECFSZ      R11, 1, 1
	BRA         L_main184
	NOP
	NOP
;glcd.c,754 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,755 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,756 :: 		break;
	GOTO        L_main173
;glcd.c,757 :: 		}
L_main183:
;glcd.c,758 :: 		if(winner == 2 ){   // Gana el esclavo (player 2)
	MOVF        main_winner_L0+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main185
;glcd.c,759 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,760 :: 		Glcd_Write_Text("You WIN !!", 43, 4,1);
	MOVLW       ?lstr20_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr20_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       43
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,761 :: 		Delay_ms(3000);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main186:
	DECFSZ      R13, 1, 1
	BRA         L_main186
	DECFSZ      R12, 1, 1
	BRA         L_main186
	DECFSZ      R11, 1, 1
	BRA         L_main186
	NOP
	NOP
;glcd.c,762 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,763 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,764 :: 		break;
	GOTO        L_main173
;glcd.c,765 :: 		}
L_main185:
;glcd.c,766 :: 		}
	GOTO        L_main172
L_main173:
;glcd.c,767 :: 		}
L_main171:
;glcd.c,768 :: 		}
	GOTO        L_main131
L_main130:
	MOVF        _estado+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main132
	MOVF        _estado+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main139
	MOVF        _estado+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main149
L_main131:
;glcd.c,769 :: 		}
	GOTO        L_main128
;glcd.c,770 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
