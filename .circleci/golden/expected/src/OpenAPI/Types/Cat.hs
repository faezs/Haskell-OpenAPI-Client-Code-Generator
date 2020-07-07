-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Cat
module OpenAPI.Types.Cat where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified OpenAPI.Common
import OpenAPI.TypeAlias
import {-# SOURCE #-} OpenAPI.Types.PetByType

-- | Defines the object schema located at @components.schemas.Cat@ in the specification.
-- 
-- 
data Cat = Cat {
  -- | age
  catAge :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | ananyoftype
  , catAnanyoftype :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | another_relative
  , catAnother_relative :: (GHC.Maybe.Maybe CatAnother_relativeVariants)
  -- | hunts
  , catHunts :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | relative
  , catRelative :: (GHC.Maybe.Maybe CatRelativeVariants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Cat
    where toJSON obj = Data.Aeson.Types.Internal.object ("age" Data.Aeson.Types.ToJSON..= catAge obj : "ananyoftype" Data.Aeson.Types.ToJSON..= catAnanyoftype obj : "another_relative" Data.Aeson.Types.ToJSON..= catAnother_relative obj : "hunts" Data.Aeson.Types.ToJSON..= catHunts obj : "relative" Data.Aeson.Types.ToJSON..= catRelative obj : [])
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("age" Data.Aeson.Types.ToJSON..= catAge obj) GHC.Base.<> (("ananyoftype" Data.Aeson.Types.ToJSON..= catAnanyoftype obj) GHC.Base.<> (("another_relative" Data.Aeson.Types.ToJSON..= catAnother_relative obj) GHC.Base.<> (("hunts" Data.Aeson.Types.ToJSON..= catHunts obj) GHC.Base.<> ("relative" Data.Aeson.Types.ToJSON..= catRelative obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Cat
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Cat" (\obj -> ((((GHC.Base.pure Cat GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "age")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ananyoftype")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "another_relative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hunts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "relative"))
-- | Create a new 'Cat' with all required fields.
mkCat :: Cat 
mkCat = Cat{catAge = GHC.Maybe.Nothing,
            catAnanyoftype = GHC.Maybe.Nothing,
            catAnother_relative = GHC.Maybe.Nothing,
            catHunts = GHC.Maybe.Nothing,
            catRelative = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.Cat.properties.another_relative.oneOf@ in the specification.
-- 
-- 
data CatAnother_relativeVariants
    = CatAnother_relativeCat Cat
    | CatAnother_relativePetByType PetByType
    | CatAnother_relativeText Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CatAnother_relativeVariants
    where toJSON (CatAnother_relativeCat a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CatAnother_relativePetByType a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CatAnother_relativeText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON CatAnother_relativeVariants
    where parseJSON val = case (CatAnother_relativeCat Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CatAnother_relativePetByType Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CatAnother_relativeText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the oneOf schema located at @components.schemas.Cat.properties.relative.anyOf@ in the specification.
-- 
-- 
data CatRelativeVariants
    = CatRelativeCat Cat
    | CatRelativePetByType PetByType
    | CatRelativeText Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CatRelativeVariants
    where toJSON (CatRelativeCat a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CatRelativePetByType a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CatRelativeText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON CatRelativeVariants
    where parseJSON val = case (CatRelativeCat Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CatRelativePetByType Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CatRelativeText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a