const API = '/insumos';

let todosInsumos = [];


// ==========================
// CARREGAR INSUMOS
// ==========================

async function carregarInsumos() {

    try {

        const resposta = await fetch(API);

        todosInsumos = await resposta.json();

        mostrarInsumos(todosInsumos);

    } catch (erro) {

        console.error('Erro:', erro);

        alert('Erro ao carregar os insumos.');

    }
}


// ==========================
// MOSTRAR NA TABELA
// ==========================

function mostrarInsumos(insumos) {

    const tabela = document.getElementById('tabelaInsumos');

    tabela.innerHTML = '';

    insumos.forEach(insumo => {

        const linha = document.createElement('tr');

        linha.innerHTML = `

            <td>${insumo.id}</td>

            <td>${insumo.codigo ?? '-'}</td>

            <td>${insumo.descricao}</td>

            <td>${insumo.quantidade}</td>

            <td>${insumo.categoria}</td>

            <td>

                <button
                    class="btn-editar"
                    onclick="abrirEdicao(${insumo.id})"
                >
                    Editar
                </button>

                <button
                    class="btn-excluir"
                    onclick="excluirInsumo(${insumo.id})"
                >
                    Excluir
                </button>

            </td>
        `;

        tabela.appendChild(linha);

    });
}


// ==========================
// CADASTRAR
// ==========================

document
    .getElementById('formInsumo')
    .addEventListener('submit', async function(event) {

        event.preventDefault();

        const codigo =
            document.getElementById('codigo').value;

        const descricao =
            document.getElementById('descricao').value;

        const quantidade =
            document.getElementById('quantidade').value;

        const categoria =
            document.getElementById('categoria').value;


        const novoInsumo = {

            codigo: codigo || null,

            descricao: descricao,

            quantidade: Number(quantidade),

            categoria: categoria

        };


        try {

            const resposta = await fetch(API, {

                method: 'POST',

                headers: {
                    'Content-Type': 'application/json'
                },

                body: JSON.stringify(novoInsumo)

            });


            const dados = await resposta.json();


            if (!resposta.ok) {

                alert(dados.erro);

                return;
            }


            alert('Ferramenta cadastrada!');


            document
                .getElementById('formInsumo')
                .reset();


            carregarInsumos();


        } catch (erro) {

            console.error(erro);

            alert('Erro ao cadastrar.');

        }

    });


// ==========================
// ABRIR EDIÇÃO
// ==========================

async function abrirEdicao(id) {

    try {

        const resposta =
            await fetch(`${API}/${id}`);

        const insumo =
            await resposta.json();


        document.getElementById('editarId').value =
            insumo.id;

        document.getElementById('editarCodigo').value =
            insumo.codigo || '';

        document.getElementById('editarDescricao').value =
            insumo.descricao;

        document.getElementById('editarQuantidade').value =
            insumo.quantidade;

        document.getElementById('editarCategoria').value =
            insumo.categoria;


        document.getElementById('modal').style.display =
            'flex';


    } catch (erro) {

        console.error(erro);

        alert('Erro ao carregar ferramenta.');

    }
}


// ==========================
// FECHAR MODAL
// ==========================

function fecharModal() {

    document.getElementById('modal').style.display =
        'none';

}


// ==========================
// SALVAR EDIÇÃO
// ==========================

document
    .getElementById('formEditar')
    .addEventListener('submit', async function(event) {

        event.preventDefault();


        const id =
            document.getElementById('editarId').value;


        const dados = {

            codigo:
                document.getElementById('editarCodigo').value || null,

            descricao:
                document.getElementById('editarDescricao').value,

            quantidade:
                Number(
                    document.getElementById('editarQuantidade').value
                ),

            categoria:
                document.getElementById('editarCategoria').value

        };


        try {

            const resposta = await fetch(
                `${API}/${id}`,
                {
                    method: 'PUT',

                    headers: {
                        'Content-Type': 'application/json'
                    },

                    body: JSON.stringify(dados)
                }
            );


            const resultado =
                await resposta.json();
            if (!resposta.ok) {
                alert(resultado.erro);
                return;
            }
            alert('Ferramenta atualizada!');
            fecharModal();
            carregarInsumos();
        } catch (erro) {
            console.error(erro);
            alert('Erro ao atualizar.');
        }
    });
// EXCLUIR
async function excluirInsumo(id) {
    const confirmar =
        confirm('Deseja realmente excluir esta ferramenta?');
    if (!confirmar) {
        return;
    }
    try {
        const resposta =
            await fetch(`${API}/${id}`, {
                method: 'DELETE'
            });


        const resultado =
            await resposta.json();


        if (!resposta.ok) {

            alert(resultado.erro);

            return;
        }


        alert('Ferramenta excluída!');


        carregarInsumos();


    } catch (erro) {

        console.error(erro);

        alert('Erro ao excluir.');

    }

}


// ==========================
// PESQUISA
// ==========================

document
    .getElementById('pesquisa')
    .addEventListener('input', filtrar);


document
    .getElementById('filtroCategoria')
    .addEventListener('change', filtrar);


function filtrar() {

    const texto =
        document
            .getElementById('pesquisa')
            .value
            .toLowerCase();


    const categoria =
        document
            .getElementById('filtroCategoria')
            .value;


    const filtrados =
        todosInsumos.filter(insumo => {

            const correspondeTexto =

                insumo.descricao
                    .toLowerCase()
                    .includes(texto)

                ||

                (insumo.codigo &&
                    insumo.codigo
                        .toLowerCase()
                        .includes(texto));


            const correspondeCategoria =

                categoria === ''
                ||
                insumo.categoria === categoria;


            return (
                correspondeTexto &&
                correspondeCategoria
            );

        });


    mostrarInsumos(filtrados);

}


// ==========================
// INICIAR
// ==========================

carregarInsumos();