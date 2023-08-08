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
      <table className="table1">
        <tr>
          <th className="th1">bond holder</th>
          <th className="th1">trading book</th>
          <th className="th1">issuer name</th>
          <th className="th1">coupon</th>
          <th className="th1">cusip</th>
          <th className="th1">isin</th>
          <th className="th1">maturity</th>
          <th className="th1">settlement</th>
          <th className="th1">status</th>
          <th className="th1">trade date</th>
          <th className="th1">type</th>
        </tr>
      </table>
      <table>
        {allData.map((row) => (
          <div key={row.user_id}>
            {row.bond_holder != state.username ? (
              <div></div>
            ) : (
              <tr>
                <td className="th1">{row.bond_holder}</td>
                <td className="th1">{row.book_name}</td>
                <td className="th1">{row.counterparty_name}</td>
                <td className="th1">{row.coupon}</td>
                <td className="th1">{row.cusip}</td>
                <td className="th1">{row.isin}</td>
                <td className="th1">{row.maturity_date}</td>
                <td className="th1">{row.settlement_date}</td>
                <td className="th1">{row.status}</td>
                <td className="th1">{row.trade_date}</td>
                <td className="th1">{row.type}</td>
              </tr>
            )}
          </div>
        ))}
      </table>
    </div>
  );
};

export default Home;
