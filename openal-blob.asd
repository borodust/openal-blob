(asdf:defsystem openal-blob
  :author "Pavel Korolev"
  :description "OpenAL Soft foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libopenal.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libopenal.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libopenal.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libopenal.so.bodged" "x86/")
              ((:windows :x86-64) "libopenal.dll.bodged" "x86_64/")
              ((:windows :x86) "libopenal.dll.bodged" "x86/")))
