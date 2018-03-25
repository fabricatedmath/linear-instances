{-# LANGUAGE DeriveGeneric #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Data.Aeson.Linear where

import Data.Aeson
  (ToJSON, FromJSON, toEncoding, defaultOptions, genericToEncoding)

import Linear

instance ToJSON a => ToJSON (V1 a) where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON a => FromJSON (V1 a)

instance ToJSON a => ToJSON (V2 a) where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON a => FromJSON (V2 a)

instance ToJSON a => ToJSON (V3 a) where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON a => FromJSON (V3 a)

instance ToJSON a => ToJSON (V4 a) where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON a => FromJSON (V4 a)

instance ToJSON a => ToJSON (Quaternion a) where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON a => FromJSON (Quaternion a)
