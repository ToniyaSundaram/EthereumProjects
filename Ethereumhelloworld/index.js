web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
abi = JSON.parse('[ { constant: false,inputs: [],name: 'sayHello',outputs: [ [Object] ],payable: false,stateMutability: 'nonpayable',type: 'function' } ]')
HelloWorldContract = web3.eth.contract(abi);
// In your nodejs console, execute contractInstance.address to get the address at which the contract is deployed and change the line below to use your deployed address
contractInstance = HelloWorldContract.at('0x91f90fad5b74e285b57ee9b14f6330ed6f059823');

function helloWorld() {
    alert('Hi class');
}


/*$(document).ready(function helloWorld() {

    let val = contractInstance.sayHello.call().toString()
    $("#" + html(val));

 });*/