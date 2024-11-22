import 'package:flutter/material.dart';
import 'package:test_app/model/user_model.dart';
import 'package:test_app/model/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> listUser = <UserModel>[];
  final UserService _userService = UserService();

  int? selectedIndex; // Untuk menyimpan indeks item yang sedang diklik

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

  void getDataUser() async {
    try {
      List<UserModel> listUserTemp = await _userService.fetchUser();
      if (listUserTemp.isNotEmpty) {
        setState(() {
          listUser = listUserTemp;
        });
      }
    } catch (e) {
      print('Error fetching users: $e');
    }
  }

  void showUserDetails(UserModel user) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.purple.shade200],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipOval(
                  child: Image.network(
                    user.avatar ?? '',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  '${user.firstName ?? '-'} ${user.lastName ?? '-'}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  user.email ?? '-',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: listUser.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemBuilder: (context, index) {
            final isSelected =
                selectedIndex == index; // Apakah item sedang diklik
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Tandai item yang diklik
                });
                showUserDetails(listUser[index]);
              },
              splashColor: Colors.blue.shade100, // Warna animasi ripple
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: isSelected ? Colors.blue.shade50 : Colors.transparent,
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      listUser[index].avatar ?? '',
                      width: 52.0,
                      height: 52.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    '${listUser[index].firstName ?? '-'} ${listUser[index].lastName ?? '-'}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    listUser[index].email ?? '-',
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 0.8),
        ),
      ),
    );
  }
}
