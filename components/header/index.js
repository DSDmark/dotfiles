import React, { useState } from "react";
import Nevbar from "./Nevbar";
import HeaderIcon from "./HeaderIcon";
import { Header_data } from "../../data/index";

const Header = () => {
  const [state, setstate] = useState(true);
  const [activeLink, setLink] = useState("home");

  return (
    <>
      <header className="header container">
        {Header_data.map((e) => (
          <>
            <HeaderIcon data={e.logoText} nevState={state} hendleNevbar={setstate} />
            <Nevbar
              data={e.nevbar}
              hendleNevbar={setstate}
              nevState={state}
              hendleLink={setLink}
              activeLink={activeLink}
            />
          </>
        ))}
      </header>
    </>
  );
};

export default Header;
