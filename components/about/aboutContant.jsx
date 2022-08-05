import React from "react";

const AboutContant = ({data}) => {
  return (
    <>
      <div className="about_details">
        <h1 className="title">{data.title}</h1>
        <h2 className="subtitle">{data.subtitle}</h2>
        <p className="decs">
          <b> Youth is a lie. It is nothing but evil. </b>
          {data.desc} <b>Drop dead.</b>
        </p>
        <button className="button">download cv</button>
      </div>
    </>
  );
};

export default AboutContant;
