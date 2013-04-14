Naren Sundar

\begin{code}

{-# LANGUAGE TypeFamilies #-}

module Data.Listing.Text
    (
    ) where

import Data.Int (Int64)
import Data.Listing
import qualified Data.Text as T
import qualified Data.Text.Lazy as LT

instance Listing T.Text where
    type Elem T.Text = Char
    type Length T.Text = Int
    type Index T.Text = Int
    type IndexElem T.Text = Char

    toList = T.unpack
    fromList = T.pack
    -- | no safe lookup for Text
    lookup t i = Just (T.index t i)
    (!) = T.index
    singleton = T.singleton
    size = T.length
    empty = T.empty
    null = T.null
    head = T.head
    tail = T.tail

instance Listing LT.Text where
    type Elem LT.Text = Char
    type Length LT.Text = Int64
    type Index LT.Text = Int64
    type IndexElem LT.Text = Char

    toList = LT.unpack
    fromList = LT.pack
    -- | no safe lookup for Text
    lookup t i = Just (LT.index t i)
    (!) = LT.index
    singleton = LT.singleton
    size = LT.length
    empty = LT.empty
    null = LT.null
    head = LT.head
    tail = LT.tail

\end{code}