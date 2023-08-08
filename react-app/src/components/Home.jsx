import React from "react";
import "../App.css";
import { useLocation, useNavigate } from "react-router-dom";
import { useState } from "react";
import { useEffect } from "react";
import { getAllBonds } from "../services/UserServices";
import { all } from "axios";

const Home = () => {
  const [allData, setAllData] = useState([]);

  const nav = useNavigate();
  const loc = useLocation();
  const state = loc.state;
  console.log(state);

  const handleSubmit = () => {
    nav("/");
  };

  useEffect(() => {
    getBondsFromAPI();
  }, []);

  const getBondsFromAPI = () => {
    getAllBonds()
      .then((res) => {
        console.log(res.data);
        setAllData(res.data);
      })
      .catch((err) => {
        setAllData([]);
        console.log(err);
      });
  };

  console.log(allData);
  console.log(
    allData.map((row) => {
      if (row.bond_holder === state.username) {
        return true;
      } else {
        return false;
      }
    })
  );

  return (
    <div>
      <button type="submit" className="btn" onClick={handleSubmit}>
        Log out
      </button>
      <table>
        <tr>
          <th>bond holder</th>
          <th>trading book</th>
          <th>issuer name</th>
          <th>coupon</th>
          <th>cusip</th>
          <th>isin</th>
          <th>maturity</th>
          <th>settlement</th>
          <th>status</th>
          <th>trade date</th>
          <th>type</th>
        </tr>
        {allData.map((row) => (
          <div key={row.user_id}>
            {row.bond_holder != state.username ? (
              <div></div>
            ) : (
              <tr>
                <td>{row.bond_holder}</td>
                <td>{row.book_name}</td>
                <td>{row.counterparty_name}</td>
                <td>{row.coupon}</td>
                <td>{row.cusip}</td>
                <td>{row.isin}</td>
                <td>{row.maturity_date}</td>
                <td>{row.settlement_date}</td>
                <td>{row.status}</td>
                <td>{row.trade_date}</td>
                <td>{row.type}</td>
              </tr>
            )}
          </div>
        ))}
      </table>
    </div>
  );
};

export default Home;
