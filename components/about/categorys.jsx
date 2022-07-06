import React from "react";

const Categorys = () => {
  return (
    <>
      <div className="grid category-area">
        <ul className="about_details-menu">
          {e.category.map((e, i) => {
            return (
              <li
                style={
                  state == e
                    ? {
                        boxShadow:
                          "inset 3px 3px 3px #d0d0d0, inset -3px -3px 3px #f8f8f8",
                        color: "#496fe3bf",
                      }
                    : {}
                }
                key={i}
                onClick={() => setstate(e)}
                className="menu-items button"
              >
                {e}
              </li>
            );
          })}
        </ul>
      </div>
    </>
  );
};

export default Categorys;
