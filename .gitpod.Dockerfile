FROM gitpod/workspace-full:latest

RUN sh -c "$(curl -sSfL https://release.solana.com/v1.8.3/install)" 
ENV PATH="/home/gitpod/.local/share/solana/install/active_release/bin:$PATH"
RUN npm install -g mocha 
RUN sudo apt install pkg-config libudev-dev 
RUN cargo install --git https://github.com/project-serum/anchor anchor-cli --locked