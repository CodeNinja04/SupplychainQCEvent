// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0;

contract Supplychain{
string product_id;
string worker_id;

struct Product{
    string id;
    string name;
    string price;
    string description;
    string data;
    uint256 timestamp;
}
struct Status{
    string location;
    uint256 timestamp;
    string data;
    string worker_id;
    bool flasg;

}

struct Worker{
    string name;
    string id;
    uint256 timestamp;
}

Product[] public products_list;
Product public productInfo;
Status[] public productStatus;
Status public statusInfo;
Worker[] public workers_list;
Worker public workerInfo;
mapping(string => Product) public product_Status;
mapping (string => Product) public products;
mapping (string => Worker) public workers;


function setWorker(string memory name,string memory id) public  payable{
    workerInfo=Worker(name,id,block.timestamp);
    workers[id]=workerInfo;
    workers_list.push(workerInfo);

}

function AddProduct(string memory  id,
    string memory name,
    string memory price,
    string memory description,
    string memory data) public payable
{
    productInfo=Product(id,name,price,description,data,block.timestamp);
    products[id]=(productInfo);
    products_list.push(productInfo);
    }

}