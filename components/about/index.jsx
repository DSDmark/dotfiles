import { useState } from "react";
import { About_data } from "../../data";
import AboutDetails from "./aboutDetails";
import ImgIcons from "./imgIcons";
import AboutContant from "./aboutContant";
import Categorys from "./categorys";

const About = () => {
  const [category, setCategory] = useState("skills");
  // console.log(About_data[0].about.title);
  return (
    <>
      <section className="section about_section container">
        <ImgIcons
          ImgUrl={About_data[0].about.img.url}
          imgAlt={About_data[0].about.img.alt}
        />
        <AboutContant data={About_data[0].about}/>
        
          {/* <div className="about_data grid">
        <About_details
         activeLink={state}
         category={e.category}
         skills={e.skills}
         education={e.education}
         expriances={e.expriances}
/>
</div> */}
{/* <Categorys category={About_data[0].category} setCategory={setCategory}/> */}
      </section>
    </>
  );
};

export default About;
