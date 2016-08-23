module BookkeeperSpec (spec) where

import Data.Char (toUpper)
import Test.Hspec

import Bookkeeper

spec :: Spec
spec = describe "books" $ do

    {-it "allows creation" $ do-}
      {-let _p :: Person-}
             {-= emptyBook-}
             {-& #name =: "Julian K. Arni"-}
             {-& #age  =:  28-}
      {-return ()-}

    it "allows access" $ do
      let p :: Person
             = emptyBook
             & set #name "Julian K. Arni"
             & set #age 28
      get #name p  `shouldBe` "Julian K. Arni"

{-
    it "allows update" $ do
      let p :: Person
             = #name "Julian K. Arni"
               #age 28
               $ book
      let p' = #name (fmap toUpper) p
      #name p' `shouldBe` "JULIAN K. ARNI"

    it "allows extension" $ do
      let p :: Person
             = #name "Julian K. Arni"
               #age 28
               $ book
      let p' = #email "jkarni<at>turingjump<dot>com" p
      #email p' `shoulBe` "jkarni<at>turingjump<dot>com"
-}

type Person = Book '[ "name" :=> String , "age" :=> Int]
