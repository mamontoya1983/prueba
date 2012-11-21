//
//  main.m
//  Fraccion
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>

//Seccion @Interface
@interface Fraccion:NSObject{
    int numerador;
    int denominador;
}

-(void) imprimir;
-(void) setNumerador:(int) n;
-(void) setDenominador: (int) d;

@end


@implementation Fraccion
-(void)imprimir{
    float decimales;
    decimales=(float) numerador/denominador;
    NSLog(@"%2f",decimales);
    NSLog(@"%i/%i",numerador,denominador);
    
}

-(void) setNumerador:(int)n{
    numerador=n;
}
-(void) setDenominador:(int)d{
    denominador=d;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fraccion *miFraccion;
        //Crear una instancia de la fraccion
        miFraccion=[Fraccion alloc];
        miFraccion=[miFraccion init];
        
        //Asignacion de valores de la fraccion
        [miFraccion setNumerador:5];
        [miFraccion setDenominador:50];
        
        //Asignacion de valores de la fraccion
        NSLog(@"El Resultado es:");
        [miFraccion imprimir];
        
    }
    
    return 0;
}

