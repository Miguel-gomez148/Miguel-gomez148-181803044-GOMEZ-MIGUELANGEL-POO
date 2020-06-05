
public class Exceptions {
    public static void main(String args[]){
        int numerador=20;
        Integer denominador=0;
        float division;
        System.out.println("Antes de la division \n");
        try{
            division=numerador/denominador;
        }catch(Exception e){
            System.out.println(e+"\n");
            division=0;
        }
        System.out.println("Despues de la division \n");
        System.out.println("La division es  = "+division);
    }
}
