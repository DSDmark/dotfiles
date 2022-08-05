import React from "react";
import Image from "next/image";
import Link from "next/link";
import { AiFillInstagram, AiFillGithub } from "react-icons/ai";
import { SiFiverr } from "react-icons/si";
import { BsStackOverflow, BsDiscord } from "react-icons/bs";

const ImgIcons = ({ ImgUrl, ImgAlt }) => {
  return (
    <>
      <div className="about_content">
        <div className="about_img">
          <div className="shadow">
            <Image
              src={ImgUrl}
              className="img_dsmark outer-shadow"
              height={500}
              width={500}
              alt={ImgAlt}
            />
          </div>
        </div>
        <div className="about_icons">
          <Link href="#">
            <button className="hover-in-shadow">
              <AiFillGithub />
            </button>
          </Link>
          <Link href="#">
            <button className="hover-in-shadow">
              <AiFillInstagram />
            </button>
          </Link>
          <Link href="#">
            <button className="hover-in-shadow">
              <SiFiverr />
            </button>
          </Link>
          <Link href="#">
            <button className="hover-in-shadow">
              <BsStackOverflow />
            </button>
          </Link>
          <Link href="#">
            <button className="hover-in-shadow">
              <BsDiscord />
            </button>
          </Link>
        </div>
      </div>
    </>
  );
};

export default ImgIcons;
