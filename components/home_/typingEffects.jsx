import { ReactTypical } from "@deadcoder0904/react-typical";
import Link from "next/link";

const TypingEffects = () => {
  return (
    <>
      <div className="home_details">
        <h2 className="subtitle">
          <ReactTypical
            steps={["≧◉ᴥ◉≦ 😅 !,", 6000, "hello 😈 !,", 7000]}
            loop={Infinity}
            wrapper="p"
          />
        </h2>
        <h1 className="title">
          i'm [sanskar sahu ||<b>DSmark</b> ]
        </h1>
        <p className="decs">
          <ReactTypical
            steps={[
              "webDeveloper && designer",
              7000,
              "trader && inverster",
              7000,
              "gamer && small gamerDeveloper",
              7000,
              "coder && techSupporter",
              7000,
            ]}
            loop={Infinity}
          />
        </p>
        <Link href="/home">
          <button className="button">
            <ReactTypical steps={["more about me", 10000]} wrapper="p" />
          </button>
        </Link>
      </div>
    </>
  );
};

export default TypingEffects;
