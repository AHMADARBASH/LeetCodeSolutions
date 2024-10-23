class MyHashSet {
  Set<dynamic> data = Set<dynamic>();
  MyHashSet() {}

  void add(int key) {
    data.add(key);
  }

  void remove(int key) {
    data.remove(key);
  }

  bool contains(int key) {
    return data.contains(key);
  }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */