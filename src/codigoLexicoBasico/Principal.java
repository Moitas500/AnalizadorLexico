
package codigoLexicoBasico;

import java.io.File;

public class Principal {
    public static void main(String[] args) {
        String ruta = "../AnalizadorLexicoBasico/src/codigoLexicoBasico/LexicoBasico.flex";
        generarLexicoBasico(ruta);
    }
    public static void generarLexicoBasico(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
