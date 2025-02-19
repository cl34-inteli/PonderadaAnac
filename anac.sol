// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Anac {
    uint private idade; // Armazena a idade do passageiro
    string private nacionalidade; // Armazena a nacionalidade do passageiro
    address private dono; // Dono do contrato

    // Construtor: idade padrão é 18 anos e nacionalidade "Brasileiro"
    constructor() {
        idade = 18;
        nacionalidade = "Brasileiro";
        dono = msg.sender; // Define o criador do contrato como dono
    }

    // Função para obter a idade armazenada
    function getIdade() public view returns (uint) {
        return idade;
    }

    // Função para definir a idade, apenas pelo dono do contrato
    function setIdade(uint novaIdade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a idade");
        idade = novaIdade;
    }

    // Função para definir a nacionalidade, apenas pelo dono do contrato
    function setNacionalidade(string memory novaNacionalidade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a nacionalidade");
        nacionalidade = novaNacionalidade;
    }

    // Função para obter a nacionalidade armazenada
    function getNacionalidade() public view returns (string memory) {
        return nacionalidade;
    }

    // Função que retorna o hash da nacionalidade (para testes)
    function getHashNacionalidade() public view returns (bytes32) {
        return keccak256(abi.encodePacked(nacionalidade));
    }

    // Função que classifica o passageiro em um dos três casos
    function classificarPassageiro() public view returns (string memory) {
        bytes32 nacionalidadeHash = keccak256(abi.encodePacked(nacionalidade));
        bytes32 brasileiroHash = keccak256(abi.encodePacked("Brasileiro"));

        if (nacionalidadeHash == brasileiroHash) {
            if (idade >= 18) {
                return "Adulto brasileiro - Documentacao: Passaporte ou RG";
            } else {
                return "Crianca ou adolescente brasileiro - Documentacao: Passaporte e autorizacao dos responsaveis";
            }
        } else {
            return "Estrangeiro - Documentacao: Passaporte e visto se necessario";
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Anac {
    uint private idade; // Armazena a idade do passageiro
    string private nacionalidade; // Armazena a nacionalidade do passageiro
    address private dono; // Dono do contrato

    // Construtor: idade padrão é 18 anos e nacionalidade "Brasileiro"
    constructor() {
        idade = 18;
        nacionalidade = "Brasileiro";
        dono = msg.sender; // Define o criador do contrato como dono
    }

    // Função para obter a idade armazenada
    function getIdade() public view returns (uint) {
        return idade;
    }

    // Função para definir a idade, apenas pelo dono do contrato
    function setIdade(uint novaIdade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a idade");
        idade = novaIdade;
    }

    // Função para definir a nacionalidade, apenas pelo dono do contrato
    function setNacionalidade(string memory novaNacionalidade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a nacionalidade");
        nacionalidade = novaNacionalidade;
    }

    // Função para obter a nacionalidade armazenada
    function getNacionalidade() public view returns (string memory) {
        return nacionalidade;
    }

    // Função que retorna o hash da nacionalidade (para testes)
    function getHashNacionalidade() public view returns (bytes32) {
        return keccak256(abi.encodePacked(nacionalidade));
    }

    // Função que classifica o passageiro em um dos três casos
    function classificarPassageiro() public view returns (string memory) {
        bytes32 nacionalidadeHash = keccak256(abi.encodePacked(nacionalidade));
        bytes32 brasileiroHash = keccak256(abi.encodePacked("Brasileiro"));

        if (nacionalidadeHash == brasileiroHash) {
            if (idade >= 18) {
                return "Adulto brasileiro - Documentacao: Passaporte ou RG";
            } else {
                return "Crianca ou adolescente brasileiro - Documentacao: Passaporte e autorizacao dos responsaveis";
            }
        } else {
            return "Estrangeiro - Documentacao: Passaporte e visto se necessario";
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Anac {
    uint private idade; // Armazena a idade do passageiro
    string private nacionalidade; // Armazena a nacionalidade do passageiro
    address private dono; // Dono do contrato

    // Construtor: idade padrão é 18 anos e nacionalidade "Brasileiro"
    constructor() {
        idade = 18;
        nacionalidade = "Brasileiro";
        dono = msg.sender; // Define o criador do contrato como dono
    }

    // Função para obter a idade armazenada
    function getIdade() public view returns (uint) {
        return idade;
    }

    // Função para definir a idade, apenas pelo dono do contrato
    function setIdade(uint novaIdade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a idade");
        idade = novaIdade;
    }

    // Função para definir a nacionalidade, apenas pelo dono do contrato
    function setNacionalidade(string memory novaNacionalidade) public {
        require(msg.sender == dono, "Apenas o dono pode alterar a nacionalidade");
        nacionalidade = novaNacionalidade;
    }

    // Função para obter a nacionalidade armazenada
    function getNacionalidade() public view returns (string memory) {
        return nacionalidade;
    }

    // Função que retorna o hash da nacionalidade (para testes)
    function getHashNacionalidade() public view returns (bytes32) {
        return keccak256(abi.encodePacked(nacionalidade));
    }

    // Função que classifica o passageiro em um dos três casos
    function classificarPassageiro() public view returns (string memory) {
        bytes32 nacionalidadeHash = keccak256(abi.encodePacked(nacionalidade));
        bytes32 brasileiroHash = keccak256(abi.encodePacked("Brasileiro"));

        if (nacionalidadeHash == brasileiroHash) {
            if (idade >= 18) {
                return "Adulto brasileiro - Documentacao: Passaporte ou RG";
            } else {
                return "Crianca ou adolescente brasileiro - Documentacao: Passaporte e autorizacao dos responsaveis";
            }
        } else {
            return "Estrangeiro - Documentacao: Passaporte e visto se necessario";
        }
    }
}
