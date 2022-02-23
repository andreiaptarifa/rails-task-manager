class TasksController < ApplicationController

  # See all tasks
  def index
    @tasks = Task.all
  end

  # See details about one task
  def show
  end

  # Create a task
  def create
    # como vou usar o input do user para criar a nova task, preciso passar como argumento de #new o params de task
    @task = Task.new(task_params)
    @task.save # como vou salvar no db, tbm preciso adicionar o metodo #save na task criada
    # para que o user nao pense que a pag quebrou, preciso redireciona-lo para
    # a pag principal de tasks apos a task ter sido criada com sucesso
  end

  # Update a task
  # Posso quebrar o update em 2 etapas:
  # 1°: exibir a task para o user -> rota get, metodo 'edit'
  # 2°: deixar que ele atualize as infos que quiser(e que eu permitir) -> patch, metodo 'update'
  def edit
  end

  def update
  end

  # Destroy a task

  def task_params
    params.require(:task).permit(:title, :details, :completed) # preciso inserir como argumento de #permit os campos
    # que vou permitir que sejam alterados quando o user cria uma nova task
  end

end
