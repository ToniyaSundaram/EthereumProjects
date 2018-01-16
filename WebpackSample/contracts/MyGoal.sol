pragma solidity ^0.4.2;

contract MyGoal {
    
    // Declaring all the variables for My MyGoal
        address manager;
        address[] employeeaddress;
        
        struct TaskStruct {
        string taskname;
        string taskcategory;
        uint taskcomplexity;
        uint credits;
        uint deadline;
    }
    
    TaskStruct[] public tasks;
    
    // A fuunction to get the Manager address who only has the permission to create task 
    function getAdminAddress() constant returns (address) {
        return msg.sender;
    }
    
     // A function to validate the intermediaries
    function validEmployee(address employee) constant returns (bool) {
       for (uint i = 0; i < employeeaddress.length; i++) {
            if (employeeaddress[i] == employee) {
                return true;
            }
        }
        return false;
    }
    
    function MyGoal (address[] employee_) {
        employeeaddress = employee_;
        manager = msg.sender;
    }
    
    function createTask (string taskname, string taskcategory,uint taskcomplexity,uint credits,uint deadline) constant returns(bool,string) {
        if(manager!=msg.sender)  return (false,"Only Project Manager is allowed to create a task ");
        tasks.push(TaskStruct({taskname:taskname, taskcategory:taskcategory,taskcomplexity:taskcomplexity,credits:credits,deadline:deadline}));
        return (true,"task created successfully");
        
    }
    
    
    // A function to get all the bid details 
    function tasklength() public constant returns(uint){
        return (tasks.length);
    }
    
    function displaytasks () constant returns (string,string,uint,uint,uint) {
        
        for(uint i=0;i<tasks.length;i++) {
            return(tasks[i].taskname,tasks[i].taskcategory,tasks[i].taskcomplexity,tasks[i].credits,tasks[i].deadline);
        }
        
    }
    
    
}