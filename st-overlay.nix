(self: super: {
  st = super.st.overrideAttrs (oldAttrs: {
    pname = "st-kl";
    version = "420";
    src = (fetchTarball https://github.com/klorophatu/st/archive/master.tar.gz);
    buildInputs = oldAttrs.buildInputs ++ (with super; [ harfbuzz ]);
  });
})
