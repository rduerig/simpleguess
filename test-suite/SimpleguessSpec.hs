--test-suite/SimpleguessSpüec.hs
module SimpleguessSpec (spec) where

import Simpleguess (guess)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
    describe "simpleguess" $ do
        it "returns True through IO for 42 and 42" $ do
            result <- guess 42 42
            result `shouldBe` True

        it "runs forever otherwise" $ do
            guess 3 42 `shouldThrow` anyException
