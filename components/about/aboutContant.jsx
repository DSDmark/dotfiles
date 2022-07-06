import React from "react";

const AboutContant = () => {
  return (
    <>
      <div className="about_details">
        <h1 className="title">{e.about.title}</h1>
        <h2 className="subtitle">{e.about.subtitle}</h2>
        <p className="decs">
          <b> Youth is a lie. It is nothing but evil. </b>
          {e.about.decs} <b>Drop dead.</b>
        </p>
        <button className="button">download cv</button>
      </div>
    </>
  );
};

export default AboutContant;
