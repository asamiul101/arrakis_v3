//import { hostNameUrl } from "../config/api";
//import axios from "axios";

//export const findUsers = () => {
 // const bond_holder = axios.get(`${hostNameUrl}/users`);
 // console.log(bond_holder);
  //return bond_holder;
  
//};

import http from '../config/api';

export function getAllUsers(){
  return http.get("/users");
}

export function getSpecificUsers(bond_holder){
  console.log(http.get('/${bond_holder}'))
  return http.get('/${bond_holder}')
}

