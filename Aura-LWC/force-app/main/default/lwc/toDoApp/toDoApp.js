import { LightningElement } from 'lwc';

export default class ToDoApp extends LightningElement {
    TodoId = 0;
    todos =[];
    taskDetails; // single user input will be recorded here 



    handleChange(event){
        // console.log(event.target.value);
        this.taskDetails = event.target.value;
    }


    clickHandler(){
        this.TodoId = this.TodoId +1; // each time button pressed Id will increase one ( Basically we create unique id for each variable)
        console.log(this.todos);
        this.todos = [...this.todos, 
            {
                Id:this.TodoId,
                taskDetails:this.taskDetails
            }                
        ];
        console.log(this.todos);


    }

}