module Contact
    (
    ) where

import Data.List
import GHC.Generics
import Data.Text.Lazy (Text)
import Data.Text.Lazy.IO as I
import Data.Aeson.Text (encodeToLazyText)
import Data.Aeson (ToJSON)

data Contact = Contact {
  last :: String,
  first :: String,
  phone :: String,
  email :: String
} deriving (Show, Generic, ToJson)

-- saveContact :: Contact -> I
saveContact contact = I.writeFile contact.name:"json" (encodeToLazyText contact)