abstract class Repository<T, U> {
  Future<T> get(U id);
  Future<List<T>> getAll();
  Future<T> add(T item);
  Future<T> update(T item);
  Future<T> delete(T item);
}