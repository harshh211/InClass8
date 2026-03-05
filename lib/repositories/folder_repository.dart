import '../database/database_helper.dart';
import '../models/folder.dart';

class FolderRepository {

  final dbHelper = DatabaseHelper.instance;

  Future<int> insertFolder(Folder folder) async {

    final db = await dbHelper.database;
    return await db.insert('folders', folder.toMap());
  }

  Future<List<Folder>> getFolders() async {

    final db = await dbHelper.database;

    final result = await db.query('folders');

    return result.map((json) => Folder.fromMap(json)).toList();
  }

  Future<int> deleteFolder(int id) async {

    final db = await dbHelper.database;

    return await db.delete(
      'folders',
      where: 'id=?',
      whereArgs: [id],
    );
  }
}