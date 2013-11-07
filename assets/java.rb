module Jni
  module J
    module Java
      module Io
        class File < Java::Lang::Object
          attach_init Java::Io::File, Java::Lang::String
          attach Java::Lang::String, "getAbsolutePath"
        end
      end
      module Net
        class Socket < Java::Lang::Object
          attach_init Java::Lang::String, Int
        end
      end
      module Lang
        module Reflect
          class Field < Java::Lang::Object
            attach Java::Lang::String, "toString"
          end
        end
        class Object < Jni::Object
          attach Class, "getClass"
        end
        class Class < Java::Lang::Object
          attach String, "getName"
          attach [Reflect::Field], "getFields"
        end
      end
      module Util
        module List
          extend Generics
          extend Interface
          attach Int, "size"
          attach Generics, "get", Int
        end
        class Calendar < Java::Lang::Object
          attach_const Int, "YEAR"
          attach_const Int, "MONTH"
          attach_const Int, "DAY_OF_MONTH"
          attach_const Int, "HOUR_OF_DAY"
          attach_const Int, "MINUTE"
          attach_static self, "getInstance"
          attach Int, "get", Int
        end
      end
    end
  end
end
