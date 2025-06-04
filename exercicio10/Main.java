public class Main {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.out.println("Informe o arquivo de entrada como argumento.");
            return;
        }
        Lexer2 lexer = new Lexer2(new java.io.FileReader(args[0]));
        Parser2 parser = new Parser2(lexer);
        System.out.println("Resultado: " + parser.parse().value);
    }
}
