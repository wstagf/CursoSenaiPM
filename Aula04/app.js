

// Estilo de escrita arrowfunction
const criarItem = (tarefa, status, indice) => {
    const item = document.createElement( 'label');
    item.classList.add('todo_item');
    item.innerHTML = '<input type="checkbox"> <div> ' + tarefa +' </div> <input type="button" value="x">'
    document.getElementById("todoList").appendChild(item);
} 


const limpaTarefas = () => {
    const todoList = document.getElementById("todoList");
    while ((todoList.firstChild != undefined) || (todoList.firstChild != null)) {
        todoList.removeChild(todoList.lastChild);
    }
}

const inserirItem = (evento) => {
    if(evento.key === "Enter") {
        criarItem(evento.target.value, null, null);
        evento.target.value = "";
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