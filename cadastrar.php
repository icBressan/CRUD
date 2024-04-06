<?php
$dsn = 'mysql:host=localhost;dbname=cadastro;charset=utf8mb4';
$usuario = 'root';
$senha = '';

try {
    $pdo = new PDO($dsn, $usuario, $senha);
} catch (PDOException $e) {
    echo 'Erro ao conectar com o MySQL: ' . $e->getMessage();
    exit();
}

$nome = $_POST['nome'];
$email = $_POST['email'];
$cidade = $_POST['cidade'];
$endereco = $_POST['endereco'];
$telefone = $_POST['telefone'];
$senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

$sql = "INSERT INTO usuarios (nome, email, cidade, endereco, telefone, senha) VALUES (:nome, :email, :cidade, :endereco, :telefone, :senha)";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':nome', $nome, PDO::PARAM_STR);
$stmt->bindParam(':email', $email, PDO::PARAM_STR);
$stmt->bindParam(':cidade', $cidade, PDO::PARAM_STR);
$stmt->bindParam(':endereco', $endereco, PDO::PARAM_STR);
$stmt->bindParam(':telefone', $telefone, PDO::PARAM_STR);
$stmt->bindParam(':senha', $senha, PDO::PARAM_STR);
if ($stmt->execute()) {
    echo 'Usuário cadastrado com sucesso!';
} else {
    echo 'Erro ao cadastrar usuário.';
}
?>

