(self: super: {
  st = super.st.overrideAttrs (oldAttrs: {
    pname = "st-kl";
    version = "420";
    src = /home/eon/st;
    buildInputs = oldAttrs.buildInputs ++ (with super; [ harfbuzz ]);
  });
})
