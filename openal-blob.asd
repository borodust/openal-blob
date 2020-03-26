(asdf:defsystem openal-blob
  :author "Pavel Korolev"
  :description "OpenAL Soft foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :depends-on (:base-blobs)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libopenal.dylib" "x86_64/")
              ((:darwin :x86) "libopenal.dylib" "x86/")

              ((:unix (:not :darwin) :x86-64) "libopenal.so" "x86_64/")
              ((:unix (:not :darwin) :x86) "libopenal.so" "x86/")

              ((:windows :x86-64) "libopenal.dll" "x86_64/")
              ((:windows :x86) "libopenal.dll" "x86/")))
