/* declaraciones */
const code char portada[1024];
const code char GameOver[1024];
const code char TEC[1024];
unsigned short estado = 0;  // Me define si estoy en menu princimal, modo 1 o modo 2
unsigned short score[] = {0,0};
unsigned short count = 0;  //Contador para el movimiento de la bola
unsigned y = 0;


typedef struct players{
      unsigned short x;
      unsigned short y;
      unsigned short w;
      unsigned short h;
}paletas;

typedef struct ball{
         signed short x;
         signed short y;
         signed short dx;
         signed short dy;
}balls;

paletas paddle[2];
balls ball;
char serial_data[9]; // Para crear el paquete de datos a enviar

// Estructuras utilizadas para el borrado en el esclavo
paletas old_paddle[2];
balls old_ball;

/* Las conexiones en en PIC se deciden segun 
   la conexcion del socket en la placa*/
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at LATB0_bit;
sbit GLCD_CS2 at LATB1_bit;
sbit GLCD_RS  at LATB2_bit;
sbit GLCD_RW  at LATB3_bit;
sbit GLCD_EN  at LATB4_bit;
sbit GLCD_RST at LATB5_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction  at TRISB2_bit;
sbit GLCD_RW_Direction  at TRISB3_bit;
sbit GLCD_EN_Direction  at TRISB4_bit;
sbit GLCD_RST_Direction at TRISB5_bit;
///////////////////////////////////////////
void draw_player(unsigned short x, unsigned short y, unsigned short w, unsigned short h);
void draw_ball(unsigned short x, unsigned short y);

void borrar_player(unsigned short x, unsigned short y, unsigned short w, unsigned short h){
        Glcd_V_Line(y, y+h, x, 0);
}

void port_pong(){          // Para mostrar la portada principal
       Glcd_Image(portada);
       Glcd_Write_Text("One player", 35, 4,1);
       Glcd_Write_Text("Two players", 32, 6,1);
}

void game_over(){
  Glcd_Image(GameOver);
}

void first_CoverP(){
   Glcd_Image(TEC);
   Glcd_Write_Text_Adv("Andrey Sequeira", 4, 21);
   Glcd_Write_Text_Adv("Erick Quiros", 4, 31);
   Glcd_Write_Text_Adv("Prof. Ernesto Rivera", 4, 42);
   Glcd_Write_Text_Adv("Taller de Sist. Embebidos", 4, 52);
   Delay_ms(3000);
}

void init(){
     // Para jugador 1 //
    paddle[0].x =  5;
    paddle[0].y = 30;
    paddle[0].w = 2;
    paddle[0].h = 9;

    // Para jugador 2 //
    paddle[1].x =  121;
    paddle[1].y = 30;
    paddle[1].w = 2;
    paddle[1].h = 9;

    ball.x = 64;
    ball.y = 32;
    ball.dx = 2;
    ball.dy = 2;

    draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
    draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
    draw_ball(ball.x, ball.y);

}

short check_coll(balls b, paletas p, unsigned short number){
    if(number == 1){
       if((b.x+1 == p.x ) && (b.y >= p.y) && (b.y < (p.y+ p.h))){
           return 1;
       }
       else{
           return 0;
       }
    }
    else {
        if((b.x == p.x + 1) && (b.y >= p.y) && (b.y < (p.y + p.h))){
           return 1;
        }
        else{
           return 0;
        }
    }
}

unsigned short score_check(){      // Funcion que verifica si alguno llego al puntaje de gane
     unsigned short i;
     for(i=0; i<2; i++){
          if(score[i] == 3){
              score[0] = 0;
              score[1] = 0;
              if(i == 0){ //Jugador 1 es el ganador
                  return 1;
              }
              else{
                  return 2;
              }
          }
     }
     return 0;
}

void draw_score_1(){
     if(score[0] == 0){
           Glcd_Write_Char('0',50, 0, 1);
     }
     else if(score[0] == 1){
            Glcd_Write_Char('1',50, 0, 1);
     }
     else if(score[0] == 2){
           Glcd_Write_Char('2',50, 0, 1);
     }
     else if(score[0] == 3){
            Glcd_Write_Char('3',50, 0, 1);
     }
     else if(score[0] == 4){
            Glcd_Write_Char('4',50, 0, 1);
     }
     else if(score[0] == 5){
            Glcd_Write_Char('5',50, 0, 1);
     }
     else if(score[0] == 6){
            Glcd_Write_Char('6',50, 0, 1);
     }
     else if(score[0] == 7){
            Glcd_Write_Char('7',50, 0, 1);
     }
     else if(score[0] == 8){
            Glcd_Write_Char('8',50, 0, 1);
     }
     else if(score[0] == 9){
            Glcd_Write_Char('9',50, 0, 1);
     }
}

void draw_score_2(){
     if(score[1] == 0){
           Glcd_Write_Char('0',74,0,1);
     }
     else if(score[1] == 1){
           Glcd_Write_Char('1',74,0,1);
     }
     else if(score[1] == 2){
           Glcd_Write_Char('2',74,0,1);
     }
     else if(score[1] == 3){
           Glcd_Write_Char('3',74,0,1);
     }
     else if(score[1] == 4){
           Glcd_Write_Char('4',74,0,1);
     }
     else if(score[1] == 5){
           Glcd_Write_Char('5',74,0,1);
     }
     else if(score[1] == 6){
           Glcd_Write_Char('6',74,0,1);
     }
     else if(score[1] == 7){
           Glcd_Write_Char('7',74,0,1);
     }
     else if(score[1] == 8){
           Glcd_Write_Char('8',74,0,1);
     }
     else if(score[1] == 9){
           Glcd_Write_Char('9',74,0,1);
     }
}

void draw_score_Mult(){
     char *text;
     char text_1[5];
     ShortToStr(score[0],text_1);
     text = Ltrim(text_1);
     Glcd_Write_Text(text, 50, 0, 1);
     ShortToStr(score[1],text_1);
     text = Ltrim(text_1);
     Glcd_Write_Text(text,74 , 0, 1);
}

void draw_player(unsigned short x, unsigned short y, unsigned short w, unsigned short h){
        Glcd_V_Line(y, y+h, x, 1);
}

void draw_net(){
        unsigned short y = 5;
        unsigned short i = 0;
        for( i = 0; i<6; i++ ){
              Glcd_V_Line(y, y + 5, 63, 1);
              y += 10;
        }
}

void draw_ball(unsigned short x, unsigned short y){
         Glcd_Dot(x,y, 1);
}

void move_players(unsigned short direc, unsigned short player){
      if(direc == 0){ // Direccion hacia abajo
        if(paddle[player].y >= 63 - paddle[player].h){
            paddle[player].y = 63 - paddle[player].h;
        }
        else{
            paddle[player].y += 2;
        }
      }
      if(direc == 1){
        if(paddle[player].y <= 0){
                paddle[player].y = 0;
        }
        else{
                paddle[player].y -= 2;
        }
      }
}

void move_ia(){  // Funcion que mueve la paleta contraria en modo un jugador
    unsigned short centerP =  paddle[0].y + 4;
    unsigned short centerS = 32;
    short speed_ball = ball.dy;
    
    if(count == 2){
      borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
      if(speed_ball < 0){
                   speed_ball = -speed_ball;
      }
      // Bola moviendose a la derecha //
      if(ball.dx > 0 ){
             if(centerP < centerS){  // Buscamos centrar la paleta con respecto al centro de pantalla
                  paddle[0].y += speed_ball;
             }
             else {
                  paddle[0].y -= speed_ball;
             }
      }
      // Bola moviendose a la izquierda //
      else{
           if(ball.x < 64){
              if(ball.dy > 0){   // Si la bola se mueve hacia abajo

                   /* Se busca centrar la paleta con respecto a la bola*/
                    if(ball.y > centerP ){
                           // Poner limite aqui de paredes inferiores y superiores
                           if(paddle[0].y + speed_ball < 64){
                                    paddle[0].y += (speed_ball);
                           }
                           else {
                                   paddle[0].y = 63 - paddle[0].h;
                           }
                    }
                    else{
                           if(paddle[0].y - speed_ball > 0){
                                   paddle[0].y -= (speed_ball);
                           }
                           else{
                                   paddle[0].y = 0;
                           }
                    }
              }
              if(ball.dy < 0){ // Si la bola se mueve hacia arriba
                        if(ball.y < centerP){
                            if(paddle[0].y - speed_ball > 0){
                                    paddle[0].y -= (speed_ball);
                            }
                            else{
                                  paddle[0].y = 0;
                            }
                        }
                        else{
                            if(paddle[0].y < 64){
                                    paddle[0].y += (speed_ball);
                            }
                            else{
                                paddle[0].y = 63 - paddle[0].h;
                            }
                        }
              }
              if(ball.dy == 0){
                    if(ball.y < centerP){
                         paddle[0].y -= 3;
                    }
                    else {
                         paddle[0].y += 3;
                    }
              }
           }
      }
    }
}

void move_ball(){
   unsigned short i;
   unsigned short posHit;
   
   if(count == 2){
     // Borramos en la posicion anterior
     Glcd_Dot(ball.x, ball.y, 0);

     // Para mover la bala en un vecto rde movimiento
     ball.x += ball.dx;
     ball.y += ball.dy;

     // Aqui definimos si se marca un punto //
     if(ball.x < 3){
            score[1] += 1;
            borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
            borrar_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
            init();
     }
     if(ball.x > 125){
            score[0] += 1;
            borrar_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
            borrar_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
            init();
     }
     ////////////////////////////////////////

     // Para deteccion de choque con pared superior e inferior
     if(ball.y <= 0 || ball.y >= 63){
          ball.dy = -ball.dy;
     }
     // Para la colision con la paleta //
     for(i = 0 ; i<2; i++){
          if(check_coll(ball, paddle[i], i)){ // En caso de que se detecte colision
              // Aqui se presenta el problema //
              //Mover a la izquierda
              /*if(ball.dx < 0 && ball.dx > -2){
                 ball.dx -= 1;
              }
              else if(ball.dx > 0 && ball.dx < 2) {   // Mover a la derecha
                 ball.dx += 1;
              }*/
              // Cambiamos direccion de la bola
              ball.dx = -ball.dx;

              // cambiando el angulo de direccion basado en golpe en la paleta //
              posHit = (paddle[i].y + paddle[i].h) - ball.y;
              if(posHit >= 0 && posHit<2){
                 ball.dy = 3;
              }
              if(posHit >= 2 && posHit<4){
                 ball.dy = 2;
              }
              if(posHit >= 4 && posHit<6){
                 ball.dy = 0;
              }
              if(posHit >= 6 && posHit<8){
                 ball.dy = -2;
              }
              if(posHit >= 8 && posHit<9){
                 ball.dy = -3;
              }

              //La bola se mueve hcia la derecha
              if(ball.dx > 0){
                           //Para evitar fallas de colision multiple
                           if(ball.x < 0){
                                  ball.x = 0;
                           }
              }
              //La bola se mueve hacia la izquierda
              else{
                   if(ball.x > 127){
                             ball.x = 127;
                   }
              }
          }


     }
   }
}

void serial_pack_data() {  //Funcion para empaquetar datos a enviar
      // INFO DE BOLA //
      serial_data[0] = ball.x + '0';
      serial_data[1] = ball.y + '0';

      // INFO DE SCORE //
      serial_data[2] = score[0] + '0';
      serial_data[3] = score[1] + '0';
      
      //INFO DE LAS PALETAS //
      serial_data[4] = paddle[0].y + '0';  //Maestro
      serial_data[5] = paddle[1].y + '0';  // Esclavo
      
      // DELIMITADORES PARA FUNCION DE LECTURA //
      serial_data[6] = 'O';
      serial_data[7] = 'K';
      serial_data[8] = 0;
}

void deserial_pack_data(){   // Funcion para extraer datos del paquete recibido por esclavo
    ball.x = serial_data[0] - '0';
    ball.y = serial_data[1] - '0';
    
    score[0] = serial_data[2] - '0';
    score[1] = serial_data[3] - '0';
    
    paddle[0].y = serial_data[4] - '0';
    paddle[1].y = serial_data[5] - '0';
}

void send_char(char charValue){
     while (UART1_Tx_Idle()!= 1);
       UART1_Write(charValue);
}

void reciv_char(char char_dir){
      while (UART1_Data_Ready() == 0);
      char_dir = UART1_Read();
}

void send_pack_data(char *serial_dir){
     while (UART1_Tx_Idle()!= 1);
     UART1_Write_Text(serial_dir);
}

void reciv_pack_data(char *text_dir){
     while(UART1_Data_Ready()==0);
     UART1_Read_Text(text_dir, "OK", 255);
}

void save_old_data(){
       old_paddle[0].y = paddle[0].y;
       old_paddle[1].y = paddle[1].y;
       
       old_ball.x = ball.x;
       old_ball.y = ball.y;
       old_ball.dx = ball.dx;
       old_ball.dy = ball.dy;
}

void prueba(unsigned y){
     char *text;
     char text_1[5];
     ShortTostr(y,text_1);
     text = Ltrim(text_1);
     Glcd_Write_Text(text, 50, 4, 1);
}
void main() {


   unsigned short Player= 0;
   unsigned short winner;
   char uart_rd = '0';
   char button = 0;
   char E_M = '3';
   
   // Declaramos las entradas //
   PORTC = 0;      //Ponemos todo el puerto C en 0
   TRISC.F0 = 1;   //Se declara como una entrada
   TRISC.F1 = 1;
   ////////////////////////////
   
   // GLCD //
   Glcd_Init();         // Para inicialzar el modulo glcd
   Glcd_Fill(0x00);        // Para limpiar la pantalla
   ///////////////////////////

   // Inicializar el modulo UART1 //
   UART1_Init(9600);
   Delay_ms(200);
   //////////////////////////
   
   // Inicializamos convertidor A-D //
   ADC_Init();
   //////////////////////////////////
   
   first_CoverP();
   while(1){
          switch (estado){
              case 0:
                   port_pong();
                   while (1){
                       y = ADC_Read(0);
                       //prueba(y);
                       if(y <= 100){
                                   Glcd_Write_Text("One player", 35, 4,0);
                                   estado = 1;
                                   Delay_ms(1000);
                                   break;
                       }
                       if(y >= 600){
                                   Glcd_Write_Text("Two players", 32, 6,0);
                                   estado = 2;
                                   Delay_ms(1000);

                                   break;
                       }
                       /*if(PORTC.F0){
                                   Glcd_Write_Text("One player", 35, 4,0);
                                   estado = 1;
                                   Delay_ms(1000);
                                   break;
                       }
                       if(PORTC.F1){
                                   Glcd_Write_Text("Two players", 32, 6,0);
                                   estado = 2;
                                   Delay_ms(1000);
                                   break;
                       }*/
                   }
                   Glcd_Fill(0x00);
                   break;
              case 1:
                   // Para cuando se seleccione one player
                   init();
                   draw_net();
                   while(1){
                        y = ADC_Read(0);
                        
                        if(count > 2){
                            count = 0;
                        }
                        // Para mover la paleta //
                        if(y >= 600){   // Hacia abajo
                                  borrar_player(paddle[1].x, paddle[1].y-2, paddle[1].w, paddle[1].h);
                                  move_players(0,1);
                                  draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
                        }
                        if(y <= 100){      // Hacia arriba
                                  borrar_player(paddle[1].x, paddle[1].y+2, paddle[1].w, paddle[1].h);
                                  move_players(1,1);
                                  draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
                        }
                        // movimieto de la bola //
                        move_ball();
                        draw_ball(ball.x,ball.y);
                        ///////////////////////////
                        // Movimiento del IA //
                        move_ia();
                        draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
                        /////////////////////////
                        // Actualizacion del puntaje //
                        draw_score_1();
                        draw_score_2();
                        ///////////////////////////
                        
                        winner = score_check();
                        if(winner == 1 ){   // Gana la maquina
                            game_over();
                            Glcd_Write_Text("PC WIN !!", 43, 4,1);
                            Delay_ms(3000);
                            Glcd_Fill(0x00);
                            estado = 0;
                            break;
                        }
                        if(winner == 2 ){   // Gana el jugador
                            game_over();
                            Glcd_Write_Text("Player WIN", 36, 4,1);
                            Delay_ms(3000);
                            Glcd_Fill(0x00);
                            estado = 0;
                            break;
                        }
                        count ++;
                   }
                   break;
               case 2:   // PARA EL MODO MULTIJUGADOR
                  init();
                  draw_net();
                  Glcd_Write_Text("Wait",0,0,1);
                  
                  if(UART1_Data_Ready()==0){
                     E_M = '1';
                     UART1_Write('2');
                  }
                  else{
                     E_M = UART1_Read();
                  }

                  if(E_M == '2'){
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P2",115,0,1);
                      Player = 2;
                  }
                  else{
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P1",0,0,1);
                      Player = 1;
                  }
                  
                  /*send_char('2');

                  while(UART1_Data_Ready()==0); // Espera a que haya algo en el buffer para leer
                  uart_rd = UART1_Read();

                  // Para seleccion de esclavo y  maestro //
                  if (uart_rd == '1'){
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P1",0,0,1);
                      Player = 1;
                  }
                  else if (uart_rd == '2'){
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P2",115,0,1);
                      Player = 2;
                  }*/
                  ///////////////////////////////////////////
                  
                  if(Player == 1){  // PARA EL MAESTRO
                    /* El maestro realiza todos los calculos del juego y envia los datos actualizados a
                       el esclavo*/
                       while(1){
                          y = ADC_Read(0);

                          if(count > 2){
                                   count = 0;
                          }
                          if(y >= 600){  // Hacia abajo
                                  borrar_player(paddle[0].x, paddle[0].y-2, paddle[0].w, paddle[0].h);
                                  move_players(0,0);
                                  draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
                          }
                          if(y <= 100){ // Hacia arriba
                                  borrar_player(paddle[0].x, paddle[0].y+2, paddle[0].w, paddle[0].h);
                                  move_players(1,0);
                                  draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
                          }
                          

                          /*reciv_char(down_P2);
                          reciv_char(up_P2);*/
                          while(UART1_Data_Ready()==0);
                          if(UART1_Read() == '1' ){  // Hacia abajo
                                  borrar_player(paddle[1].x, paddle[1].y-2, paddle[1].w, paddle[1].h);
                                  move_players(0,1);
                                  draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
                          }
                          else if(UART1_Read() == '2'){  // Hacia arriba
                                  borrar_player(paddle[1].x, paddle[1].y+2, paddle[1].w, paddle[1].h);
                                  move_players(1,1);
                                  draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
                          }
                          
                          move_ball();
                          draw_ball(ball.x,ball.y);
                          draw_score_1();
                          draw_score_2();
                          
                          //Empaquetamos la informacion a enviar a esclavo //
                          serial_pack_data();
                          send_pack_data(serial_data);
                          while (UART1_Tx_Idle()!=1);
                          
                          winner = score_check();
                          if(winner == 1 ){   // Gana el maestro (player 1)
                              game_over();
                              Glcd_Write_Text("You WIN !!", 43, 4,1);
                              Delay_ms(3000);
                              Glcd_Fill(0x00);
                              estado = 0;
                              break;
                          }
                          if(winner == 2 ){   // Gana el jugador
                              game_over();
                              Glcd_Write_Text("You Lose !!", 36, 4,1);
                              Delay_ms(3000);
                              Glcd_Fill(0x00);
                              estado = 0;
                              break;
                          }
                          
                          count ++;
                       }

                  }
                  if(Player == 2){    // PARA ESCLAVO
                    
                    /* El esclavo solamente enviara el estado de los botones, no realiza ningun calculo
                       solamente recibe y pinta */
                      while(1){

                         y = ADC_Read(0);
                         save_old_data();
                         
                         if(y >= 600){  // Hacia abajo
                              button ='1';
                         }
                         else if(y <= 100){     // Hacia arriba
                              button ='2';
                         }
                         else {
                              button = '0';
                         }
                         send_char(button);
                         
                         /*down = Button(&PORTC, 0, 1, 1);
                         up = Button(&PORTC, 1, 1, 1);
                         if(down){
                           send_char(down);
                           while (UART1_Tx_Idle()!=1);
                         }
                         if(up){
                            send_char(up);
                            while (UART1_Tx_Idle()!=1);
                         }*/

                         reciv_pack_data(serial_data);
                         deserial_pack_data();
                         
                         if(old_ball.x != ball.x || old_ball.y != ball.y){
                             Glcd_Dot(old_ball.x, old_ball.y, 0);
                         }
                         if(old_paddle[0].y != paddle[0].y){
                                 borrar_player(paddle[0].x, old_paddle[0].y, paddle[0].w, paddle[0].h);
                         }
                         if(old_paddle[1].y != paddle[1].y){
                                 borrar_player(paddle[1].x, old_paddle[1].y, paddle[1].w, paddle[1].h);
                         }
                         draw_score_Mult();
                         draw_player(paddle[0].x, paddle[0].y, paddle[0].w, paddle[0].h);
                         draw_player(paddle[1].x, paddle[1].y, paddle[1].w, paddle[1].h);
                         draw_ball(ball.x,ball.y);
                         
                         winner = score_check();
                          if(winner == 1 ){   // Gana el maestro (player 1)
                              game_over();
                              Glcd_Write_Text("You Lose !!", 36, 4,1);
                              Delay_ms(3000);
                              Glcd_Fill(0x00);
                              estado = 0;
                              break;
                          }
                          if(winner == 2 ){   // Gana el esclavo (player 2)
                              game_over();
                              Glcd_Write_Text("You WIN !!", 43, 4,1);
                              Delay_ms(3000);
                              Glcd_Fill(0x00);
                              estado = 0;
                              break;
                          }
                     }
                  }
          }
    }
}