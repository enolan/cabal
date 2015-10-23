# Helper to run Cabal
cabal() {
    $CABAL $CABAL_ARGS "$@"
}

die() {
    echo "die: $@"
    exit 1
}

cabal sandbox init
cabal sandbox add-source a
cabal sandbox add-source b
cabal install --enable-tests a
