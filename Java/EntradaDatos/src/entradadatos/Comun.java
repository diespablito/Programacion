/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entradadatos;

/**
 *
 * @author daw1-05
 */
import java.util.Scanner;
public class Comun {
   
    int leer_entrada(Persona[] per){
        int longitud_lista;
        int dni;
        String nombre;
        String apellido;
        int edad;
        int indice;
        Persona p;
        indice=0;
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("Comenzar? Y/N");
        var input = System.console().readLine();
        
        while (!input.equals("N")) {
            
            System.out.print("dni: ");
            dni=entrada.nextInt();
            System.out.print("nombre: ");
            nombre=entrada.nextLine();
            System.out.print("apellido: ");
            apellido=entrada.nextLine();
            System.out.print("edad: ");
            edad=entrada.nextInt();
            p = new Persona(dni,nombre,apellido,edad);
            System.out.println("Continuar? Y/N");
            input = System.console().readLine();
            indice+=1;
        }
        
        longitud_lista=indice-1;
        
        
        return longitud_lista;
    }
    
}
