using northbreeze from '../db/schema';

@path: '/northbreeze'
service Main {

  entity Products   as projection on northbreeze.Products;
  entity Suppliers  as projection on northbreeze.Suppliers;

  @readonly
  entity Categories as projection on northbreeze.Categories;

}
