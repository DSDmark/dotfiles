import { useState } from "react";
import { About_data } from "../../data";
import AboutDetails from "./aboutDetails";
import ImgIcons from "./imgIcons";
import AboutContant from "./aboutContant";
import Categorys from "./categorys";

const About = () => {
  // const [state, setstate] = useState("skills");
  console.log();
  return (
    <>
      <section className="section about_section container">
        <ImgIcons
          ImgUrl={About_data[0].about.img.url}
          imgAlt={About_data[0].about.img.alt}
        />
        <>
          <div className="about_data grid"></div>
          {/* <Categorys />
            <AboutContant />
           <About_details
            activeLink={state}
            category={e.category}
            skills={e.skills}
            education={e.education}
            expriances={e.expriances}
  />*/}
        </>
      </section>
    </>
  );
};

export default About;
