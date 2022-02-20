from fastapi import APIRouter, Depends
from contract import *
from pydantic import BaseModel


class Product(BaseModel):
    name: str
    price: str
    description: str
    data: str
    
class Status(BaseModel):
    location :str
    data :int
    wid :int
    pid :int
    flag :int

router = APIRouter(
    prefix='/product',
    tags=['product']
)



@router.get('/')
def index():
    return getProductsList()

@router.post('/')
def index(product: Product):
    return AddProduct(product.name, product.price, product.description, product.data)

@router.post('/status')
def index(status:Status):
    return AddStatus(status.location, status.data,status.wid,status.pid,status.flag)
