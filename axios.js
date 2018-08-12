// Dependencies
// Dependencias do projeto
const axios = require('axios');
const faker = require('faker/locale/pt_BR');

// # GET /tasks
// Retorna todas as tarefas
axios.get('http://api.localhost:3000/v1/tasks')
 .then(function(response) {
	 data = response['data'];
	 console.log("Response:\n", data);
 }).catch(function(error) {
 	 console.log('failed to fetch data\n', error);
 });

// # GET /tasks/:id
// Retorna um tarefa especifica
axios.get('http://api.localhost:3000/v1/tasks/2')
	.then(function(response){
		data = response['data'];
		console.log("Response:\n", data);
	}).catch(function(error) {
		console.log('failed to fetch data\n', error);
	});

// # POST
// Cria uma nota tarefa através de parametros.
axios.post('http://api.localhost:3000/v1/tasks/', 
	 { 
		 name: faker.name.findName(),
		 description: faker.internet.email()
	 })
	.then(function(response) {
		data = response['data'];
		console.log('Response:\n', data);
	}).catch(function(error) {
		console.log('failed to fetch data \n', error);
	});

// # PATCH
// Atualiza um registro já existente
axios.patch('http://api.localhost:3000/v1/tasks/4', {
	  name: faker.name.findName(),
	  description: faker.internet.email()
	})
	.then(function(response) {
		data = response['data'];
		console.log('Response:\n', data);
	}).catch(function(error){
		console.log('Failed to update data \n', error);
	});

// # DELETE
// Deleta uma tarefa atraves do id 
axios.delete('http://api.localhost:3000/v1/tasks/11')
	.then(function(response) {
		data = response['data'];
		console.log("Destroyed data:\n", data);
	}).catch(function(error) {
		console.log('Failed to delete data, try again', error);
	});