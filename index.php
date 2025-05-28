<?php

$conexao = new PDO("mysql:dbname=loja;host=localhost", "root", "ceub123456");

$sql = "SELECT * FROM clientes";

$query = $conexao->query($sql);
$clientes = $query->fetchAll(PDO::FETCH_ASSOC);

?>
<?php
// Simulação de conexão e dados para fins de exemplo.
// Mantenha seu código original de conexão com o banco de dados.
/*
$conexao = new PDO("mysql:dbname=loja;host=localhost", "root", "ceub123456");
$sql = "SELECT * FROM clientes";
$query = $conexao->query($sql);
$clientes = $query->fetchAll(PDO::FETCH_ASSOC);
*/

// Dados de exemplo para demonstração (caso não tenha o banco configurado)
$clientes = [
    ['id' => 1, 'nome' => 'Ana Silva', 'email' => 'ana.silva@example.com', 'telefone' => '(61) 99999-0001'],
    ['id' => 2, 'nome' => 'Bruno Costa', 'email' => 'bruno.costa@example.com', 'telefone' => '(61) 99999-0002'],
    ['id' => 3, 'nome' => 'Carla Mendes', 'email' => 'carla.mendes@example.com', 'telefone' => '(61) 99999-0003'],
    ['id' => 4, 'nome' => 'Diego Souza', 'email' => 'diego.souza@example.com', 'telefone' => '(61) 99999-0004'],
    ['id' => 5, 'nome' => 'Eva Oliveira', 'email' => 'eva.oliveira@example.com', 'telefone' => '(61) 99999-0005'],
    ['id' => 6, 'nome' => 'Fernando Almeida', 'email' => 'fernando.almeida@example.com', 'telefone' => '(61) 99999-0006'],
    ['id' => 7, 'nome' => 'Gabriela Santos', 'email' => 'gabriela.santos@example.com', 'telefone' => '(61) 99999-0007'],
    ['id' => 8, 'nome' => 'Hugo Pereira', 'email' => 'hugo.pereira@example.com', 'telefone' => '(61) 99999-0008'],
    ['id' => 9, 'nome' => 'Isabela Rodrigues', 'email' => 'isabela.rodrigues@example.com', 'telefone' => '(61) 99999-0009'],
    ['id' => 10, 'nome' => 'Joaquim Lima', 'email' => 'joaquim.lima@example.com', 'telefone' => '(61) 99999-0010'],
    ['id' => 11, 'nome' => 'Kamila Martins', 'email' => 'kamila.martins@example.com', 'telefone' => '(61) 99999-0011'],
    ['id' => 12, 'nome' => 'Lucas Ferreira', 'email' => 'lucas.ferreira@example.com', 'telefone' => '(61) 99999-0012'],
    ['id' => 13, 'nome' => 'Maria Oliveira', 'email' => 'maria.oliveira@example.com', 'telefone' => '(61) 99999-0013'],
    ['id' => 14, 'nome' => 'Natalia Costa', 'email' => 'natalia.costa@example.com', 'telefone' => '(61) 99999-0014'],
    ['id' => 15, 'nome' => 'Paulo Almeida', 'email' => 'paulo.almeida@example.com', 'telefone' => '(61) 99999-0015'],
    ['id' => 16, 'nome' => 'Rafaela Santos', 'email' => 'rafaela.santos@example.com', 'telefone' => '(61) 99999-0016'],
    ['id' => 17, 'nome' => 'Sergio Pereira', 'email' => 'sergio.pereira@example.com', 'telefone' => '(61) 99999-0017'],
    ['id' => 18, 'nome' => 'Thais Rodrigues', 'email' => 'thais.rodrigues@example.com', 'telefone' => '(61) 99999-0018'],
    ['id' => 19, 'nome' => 'Vitor Lima', 'email' => 'vitor.lima@example.com', 'telefone' => '(61) 99999-0019'],
    ['id' => 20, 'nome' => 'Zacarias Martins', 'email' => 'zacarias.martins@example.com', 'telefone' => '(61) 99999-0020'],
    ['id' => 21, 'nome' => 'Ana Silva', 'email' => 'ana.silva@example.com', 'telefone' => '(61) 99999-0001'],
    ['id' => 22, 'nome' => 'Beto Oliveira', 'email' => 'beto.oliveira@example.com', 'telefone' => '(61) 99999-0002'],
    ['id' => 23, 'nome' => 'Catarina Costa', 'email' => 'catarina.costa@example.com', 'telefone' => '(61) 99999-0003'],
    ['id' => 24, 'nome' => 'Davi Almeida', 'email' => 'davi.almeida@example.com', 'telefone' => '(61) 99999-0004'],
    ['id' => 25, 'nome' => 'Eduarda Santos', 'email' => 'eduarda.santos@example.com', 'telefone' => '(61) 99999-0005'],
    ['id' => 26, 'nome' => 'Fabio Pereira', 'email' => 'fabio.pereira@example.com', 'telefone' => '(61) 99999-0006'],
    ['id' => 27, 'nome' => 'Gabriela Rodrigues', 'email' => 'gabriela.rodrigues@example.com', 'telefone' => '(61) 99999-0007'],
    ['id' => 28, 'nome' => 'Hugo Lima', 'email' => 'hugo.lima@example.com', 'telefone' => '(61) 99999-0008'],
    ['id' => 29, 'nome' => 'Isabela Martins', 'email' => 'isabela.martins@example.com', 'telefone' => '(61) 99999-0009'],
    ['id' => 30, 'nome' => 'Joaquim Ferreira', 'email' => 'joaquim.ferreira@example.com', 'telefone' => '(61) 99999-0010'],
    ['id' => 31, 'nome' => 'Kamila Oliveira', 'email' => 'kamila.oliveira@example.com', 'telefone' => '(61) 99999-0011'],
    ['id' => 32, 'nome' => 'Lucas Costa', 'email' => 'lucas.costa@example.com', 'telefone' => '(61) 99999-0012'],
    ['id' => 33, 'nome' => 'Mariana Almeida', 'email' => 'mariana.almeida@example.com', 'telefone' => '(61) 99999-0013'],
    ['id' => 34, 'nome' => 'Natalia Santos', 'email' => 'natalia.santos@example.com', 'telefone' => '(61) 99999-0014'],
    ['id' => 35, 'nome' => 'Otávio Pereira', 'email' => 'otavio.pereira@example.com', 'telefone' => '(61) 99999-0015'],
    ['id' => 36, 'nome' => 'Rafaela Rodrigues', 'email' => 'rafaela.rodrigues@example.com', 'telefone' => '(61) 99999-0016'],
    ['id' => 37, 'nome' => 'Sofia Lima', 'email' => 'sofia.lima@example.com', 'telefone' => '(61) 99999-0017'],
    ['id' => 38, 'nome' => 'Thais Martins', 'email' => 'thais.martins@example.com', 'telefone' => '(61) 99999-0018'],
    ['id' => 39, 'nome' => 'Vitor Ferreira', 'email' => 'vitor.ferreira@example.com', 'telefone' => '(61) 99999-0019'],
    ['id' => 40, 'nome' => 'Zacarias Oliveira', 'email' => 'zacarias.oliveira@example.com', 'telefone' => '(61) 99999-0020'],
];

?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Clientes</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <style>
        /* CSS Personalizado para uma Tabela Bonita, Responsiva e Acessível */
        
        /* 1. Estilos Gerais e Amigáveis */
        body {
            background-color: #f8f9fa; /* Cor de fundo suave */
            font-family: 'Poppins', sans-serif; /* Fonte moderna e legível */
            color: #212529;
        }

        .container {
            padding-top: 40px;
            padding-bottom: 40px;
        }
        
        .table-custom-wrapper {
            background-color: #ffffff;
            border-radius: 15px; /* Bordas arredondadas */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05); /* Sombra sutil */
            padding: 2rem;
            overflow: hidden; /* Garante que os cantos arredondados sejam aplicados à tabela */
        }
        
        .table-title {
            margin-bottom: 1.5rem;
            font-weight: 600;
            color: #343a40;
        }
        
        /* 2. Estilos da Tabela (Base Bootstrap + Customizações) */
        .table {
            border-collapse: separate;
            border-spacing: 0;
        }

        /* Cabeçalho da Tabela */
        .table thead th {
            background-color: #4a5568; /* Fundo do cabeçalho mais escuro */
            color: #ffffff; /* Texto branco */
            border-bottom: none; /* Remove a borda padrão do bootstrap */
            font-weight: 600; /* Texto em negrito */
            text-transform: uppercase; /* Letras maiúsculas */
            letter-spacing: 0.5px;
            padding: 1rem;
        }
        
        /* Remove borda arredondada apenas nos cantos do cabeçalho */
        .table thead th:first-child { border-top-left-radius: 8px; }
        .table thead th:last-child { border-top-right-radius: 8px; }
        
        /* Corpo da Tabela */
        .table tbody tr {
            transition: background-color 0.2s ease-in-out, transform 0.2s ease-in-out;
        }

        /* Efeito de hover amigável */
        .table-hover tbody tr:hover {
            background-color: #e9ecef; /* Cor de fundo no hover */
            transform: scale(1.01); /* Leve zoom para destacar a linha */
            cursor: pointer;
        }

        .table tbody td {
            vertical-align: middle; /* Alinha o conteúdo verticalmente */
            padding: 1rem;
            border-top: 1px solid #dee2e6; /* Linha sutil entre as linhas */
        }

        /* Remove a borda da primeira linha para um visual mais limpo */
        .table tbody tr:first-child td {
            border-top: none;
        }

        /* 3. Responsividade e Acessibilidade */

        /* Para telas menores que 768px */
        @media (max-width: 767.98px) {
            .table-custom-wrapper {
                padding: 1rem; /* Menos preenchimento em telas pequenas */
            }
            
            /* Esconde o cabeçalho original da tabela */
            .table thead {
                display: none;
            }

            /* Transforma a tabela em blocos (formato de cartão) */
            .table, .table tbody, .table tr, .table td {
                display: block;
                width: 100%;
            }

            .table tr {
                margin-bottom: 1rem; /* Espaçamento entre os "cartões" */
                border: 1px solid #dee2e6;
                border-radius: 8px;
                overflow: hidden;
            }
            
            .table-hover tbody tr:hover {
                transform: none; /* Remove o efeito de zoom no mobile */
            }

            .table td {
                display: flex; /* Usa flexbox para alinhar texto e conteúdo */
                justify-content: space-between; /* Alinha o título à esquerda e o dado à direita */
                padding: 0.75rem 1rem;
                text-align: right;
                border: none;
                border-bottom: 1px solid #e9ecef;
            }
            
            .table tr td:last-child {
                border-bottom: none;
            }

            /* Adiciona os "cabeçalhos" antes de cada dado usando pseudo-elementos (acessibilidade) */
            .table td::before {
                content: attr(data-label); /* Pega o texto do atributo data-label */
                font-weight: 600;
                text-align: left;
                padding-right: 1rem; /* Espaço entre o título e o dado */
                color: #495057;
            }
        }

    </style>
</head>
<body>

    <main class="container">
        <div class="table-custom-wrapper">
            <h2 class="table-title">Lista de Clientes</h2>
            
            <div class="table-responsive">
                <table class="table table-hover">
                    
                    <caption class="visually-hidden">Tabela de Clientes com ID, Nome, Email e Telefone.</caption>
                    
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Email</th>
                            <th scope="col">Telefone</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <?php foreach ($clientes as $cliente) { ?>
                            <tr>
                                <td data-label="ID"><?=$cliente['id']?></td>
                                <td data-label="Nome"><?=$cliente['nome']?></td>
                                <td data-label="Email"><?=$cliente['email']?></td>
                                <td data-label="Telefone"><?=$cliente['telefone']?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>