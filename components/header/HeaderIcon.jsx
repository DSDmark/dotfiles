import React from "react";
import { GiPirateSkull } from "react-icons/gi";
import Link from "next/link";

const HeaderIcon = ({ data, hendleNevbar,nevState }) => {
  return (
    <div className="header_data grid">
      <div className="logo">
        <Link passHref href="/">
          <a>{data}</a>
        </Link>
      </div>
      <div className="menu-icon">
        <a
          onClick={() => hendleNevbar(!nevState)}
          className="outer-shadow hover-in-shadow"
        >
          <GiPirateSkull />
        </a>
      </div>
    </div>
  );
};

export default HeaderIcon;
