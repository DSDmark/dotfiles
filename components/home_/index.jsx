import Effects from "./effects";
import SanskarImg from "../../public/image/dsmark.jpg";
import TypeingEffects from "./typingEffects";
import Image from "next/image";

const Home = () => {
  return (
    <>
      <section className="home_section container section">
        <Effects />
        <div className="grid home_data">
          <TypeingEffects />
          <div className="home_img">
            <Image
              src={SanskarImg}
              width={500}
              height={500}
              alt="Profile img"
            />
          </div>
        </div>
      </section>
    </>
  );
};

export default Home;
