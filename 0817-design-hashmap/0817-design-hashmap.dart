class MyHashMap {
    Map<int,dynamic> data = {};
  MyHashMap() {
    
  }
  
  void put(int key, int value) {
    data[key] = value;
  }
  
  int get(int key) {
     var b = data.containsKey(key);
    return b ? data[key] : -1;
  }
  
  void remove(int key) {
    data.remove(key);
  }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param2 = obj.get(key);
 * obj.remove(key);
 */