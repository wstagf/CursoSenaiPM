

const criarItem = (tarefa, status, indice) => {
    const item = document.createElement( 'label');
    item.classList.add('todo_item');
    item.innerHTML = 
        '<input onclick="completarTarefa(event)"  type="checkbox" data-indice="' + indice +'">'
        + '<div class="titulo"> '  + tarefa + ' </div>'
        + '<input onclick="excluirItem(event)" type="button" value="x" data-indice="' + indice + '">'
    document.getElementById("todoList").appendChild(item);
} 

const completarTarefa = (evento) => {
    const novoValor = evento.target.checked; 
    const numeroDoItem = evento.target.dataset.indice;  
    const todoList = document.getElementById("todoList");
    const itemAlterado = todoList.children[numeroDoItem];
   
    if(novoValor) {
        itemAlterado.classList.add('completa');
    } else {
        itemAlterado.classList.remove('completa');
    }
}


const inserirItem = (evento) => {
    const todoList = document.getElementById("todoList");

    if(evento.key === "Enter") {
        criarItem(evento.target.value, null, todoList.children.length);
        evento.target.value = "";
    }
}

const excluirItem = (evento) => {
    const numeroDoItem = evento.target.dataset.indice; 
    const todoList = document.getElementById("todoList");
    todoList.removeChild(todoList.children[numeroDoItem]);
}


const limpaTarefas = () => {
    const todoList = document.getElementById("todoList");
    while ((todoList.firstChild != undefined) || (todoList.firstChild != null)) {
        todoList.removeChild(todoList.lastChild);
    }
}











/* 

// estilo antigo
var criarItemAntigo = Function (mensagem) {
    // codigo aqui
}

// Estilo de escrita arrowfunction
const criarItem = (mensagem) => {
  // codigo aqui
} 

*/