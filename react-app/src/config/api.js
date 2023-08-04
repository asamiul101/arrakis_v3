// export const hostNameUrl = "https://<PROJECT-ID>.<REGION>.r.appspot.com";
//export const hostNameUrl = "http://127.0.0.1:8080/";

import axios from "axios";

export default axios.create({
  baseURL: "http://127.0.0.1:8080",
  headers:{
    "Content-type": "application/json"
  }
});