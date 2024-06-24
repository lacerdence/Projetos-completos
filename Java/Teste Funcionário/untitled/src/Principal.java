import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

public class Principal {
    private static List<Funcionario> funcionarios = new ArrayList<>();

    public static void main(String[] args) {
        // 3.1 – Inserir todos os funcionários
        inserirFuncionarios();

        // 3.2 – Remover o funcionário “João” da lista
        removerFuncionario("João");

        // 3.3 – Imprimir todos os funcionários com todas suas informações
        imprimirFuncionarios();

        // 3.4 – Os funcionários receberam 10% de aumento de salário
        aumentarSalarios(0.10);

        // 3.5 – Agrupar os funcionários por função em um MAP
        Map<String, List<Funcionario>> funcionariosPorFuncao = agruparFuncionariosPorFuncao();

        // 3.6 – Imprimir os funcionários, agrupados por função
        imprimirFuncionariosAgrupadosPorFuncao(funcionariosPorFuncao);

        // 3.8 – Imprimir os funcionários que fazem aniversário no mês 10 e 12
        imprimirAniversariantes(10, 12);

        // 3.9 – Imprimir o funcionário com a maior idade
        imprimirFuncionarioMaisVelho();

        // 3.10 – Imprimir a lista de funcionários por ordem alfabética
        imprimirFuncionariosPorOrdemAlfabetica();

        // 3.11 – Imprimir o total dos salários dos funcionários
        imprimirTotalSalarios();

        // 3.12 – Imprimir quantos salários mínimos ganha cada funcionário
        imprimirSalariosMinimosPorFuncionario();
    }

    private static void inserirFuncionarios() {
        funcionarios.add(new Funcionario("Maria", LocalDate.of(2000, 10, 18), new BigDecimal("2009.44"), "Operador"));
        funcionarios.add(new Funcionario("João", LocalDate.of(1990, 5, 12), new BigDecimal("2284.38"), "Operador"));
        funcionarios.add(new Funcionario("Caio", LocalDate.of(1961, 5, 2), new BigDecimal("9836.14"), "Coordenador"));
        funcionarios.add(new Funcionario("Miguel", LocalDate.of(1988, 10, 14), new BigDecimal("19119.88"), "Diretor"));
        funcionarios.add(new Funcionario("Alice", LocalDate.of(1995, 1, 5), new BigDecimal("2234.68"), "Recepcionista"));
        funcionarios.add(new Funcionario("Heitor", LocalDate.of(1999, 11, 19), new BigDecimal("1582.72"), "Operador"));
        funcionarios.add(new Funcionario("Arthur", LocalDate.of(1993, 3, 31), new BigDecimal("4071.84"), "Contador"));
        funcionarios.add(new Funcionario("Laura", LocalDate.of(1994, 7, 8), new BigDecimal("3017.45"), "Gerente"));
        funcionarios.add(new Funcionario("Heloísa", LocalDate.of(2003, 5, 24), new BigDecimal("1606.85"), "Eletricista"));
        funcionarios.add(new Funcionario("Helena", LocalDate.of(1996, 9, 2), new BigDecimal("2799.93"), "Gerente"));
    }

    private static void removerFuncionario(String nome) {
        funcionarios.removeIf(funcionario -> funcionario.getNome().equalsIgnoreCase(nome));
    }

    private static void imprimirFuncionarios() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        for (Funcionario f : funcionarios) {
            System.out.println("Nome: " + f.getNome());
            System.out.println("Data de Nascimento: " + f.getDataNascimento().format(formatter));
            System.out.println("Salário: " + String.format("%,.2f", f.getSalario()));
            System.out.println("Função: " + f.getFuncao());
            System.out.println("----------------------");
        }
    }

    private static void aumentarSalarios(double percentual) {
        for (Funcionario f : funcionarios) {
            BigDecimal aumento = f.getSalario().multiply(BigDecimal.valueOf(percentual));
            f.setSalario(f.getSalario().add(aumento));
        }
    }

    private static Map<String, List<Funcionario>> agruparFuncionariosPorFuncao() {
        return funcionarios.stream().collect(Collectors.groupingBy(Funcionario::getFuncao));
    }

    private static void imprimirFuncionariosAgrupadosPorFuncao(Map<String, List<Funcionario>> funcionariosPorFuncao) {
        for (Map.Entry<String, List<Funcionario>> entry : funcionariosPorFuncao.entrySet()) {
            System.out.println("Função: " + entry.getKey());
            for (Funcionario f : entry.getValue()) {
                System.out.println(" - " + f.getNome());
            }
            System.out.println("----------------------");
        }
    }

    private static void imprimirAniversariantes(int... meses) {
        List<Integer> mesesList = Arrays.stream(meses).boxed().collect(Collectors.toList());
        for (Funcionario f : funcionarios) {
            if (mesesList.contains(f.getDataNascimento().getMonthValue())) {
                System.out.println("Nome: " + f.getNome() + " - Aniversário: " + f.getDataNascimento().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            }
        }
    }

    private static void imprimirFuncionarioMaisVelho() {
        Funcionario maisVelho = Collections.min(funcionarios, Comparator.comparing(Funcionario::getDataNascimento));
        int idade = calcularIdade(maisVelho.getDataNascimento());
        System.out.println("Funcionário com a maior idade: " + maisVelho.getNome() + " - Idade: " + idade);
    }

    private static void imprimirFuncionariosPorOrdemAlfabetica() {
        List<Funcionario> funcionariosOrdenados = new ArrayList<>(funcionarios);
        funcionariosOrdenados.sort(Comparator.comparing(Funcionario::getNome));
        for (Funcionario f : funcionariosOrdenados) {
            System.out.println(f.getNome());
        }
    }

    private static void imprimirTotalSalarios() {
        BigDecimal totalSalarios = funcionarios.stream()
                .map(Funcionario::getSalario)
                .reduce(BigDecimal.ZERO, BigDecimal::add);
        System.out.println("Total dos salários: " + String.format("%,.2f", totalSalarios));
    }

    private static void imprimirSalariosMinimosPorFuncionario() {
        BigDecimal salarioMinimo = new BigDecimal("1212.00");
        for (Funcionario f : funcionarios) {
            BigDecimal qtdSalariosMinimos = f.getSalario().divide(salarioMinimo, 2, BigDecimal.ROUND_HALF_UP);
            System.out.println(f.getNome() + " ganha " + qtdSalariosMinimos + " salários mínimos.");
        }
    }

    private static int calcularIdade(LocalDate dataNascimento) {
        return LocalDate.now().getYear() - dataNascimento.getYear();
    }
}
