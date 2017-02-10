template<class T>
class Thing {
  public:
    Thing(T init) {
      value = init;
      valid = true;
    }
    ~Thing() {
      valid = false;
    }
    T operator*() {
      return value;
    }
    T get() {
      return value;
    }
  private:
   T value;
   bool valid;
};
