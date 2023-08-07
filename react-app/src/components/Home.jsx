import React from "react";
import "../App.css";

const Home = () => {
  return (
  <div>
    <table className="HomeTable">
      <tr>
        <th>book_name</th>
        <th>bond_maturity_date</th>
        <th>issuer_name</th>
        <th>isin</th>
        <th>cusip</th>
      </tr>
    </table>
  </div>
  )
};

export default Home;
