import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '語言學習應用',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登錄'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: '用戶名'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '密碼'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('登錄'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text('註冊'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('註冊'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: '用戶名'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '密碼'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('註冊'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主頁'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('語言學習'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageLearningScreen()),
              );
            },
          ),
          ListTile(
            title: Text('測驗'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestScreen()),
              );
            },
          ),
          ListTile(
            title: Text('語言交換'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageExchangeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('社區'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityScreen()),
              );
            },
          ),
          ListTile(
            title: Text('個性化推薦'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalizedRecommendationsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class LanguageLearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('語言學習'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('單詞'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WordPracticeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('短語'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasePracticeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('語法規則'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GrammarPracticeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('測驗'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('單詞測驗'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WordQuizScreen()),
              );
            },
          ),
          ListTile(
            title: Text('聽力測驗'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListeningQuizScreen()),
              );
            },
          ),
          ListTile(
            title: Text('閱讀測驗'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReadingQuizScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// 單詞測驗頁面
class WordQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('單詞測驗'),
      ),
      body: Center(
        child: Text('這裡是單詞測驗內容'),
      ),
    );
  }
}

// 聽力測驗頁面
class ListeningQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('聽力測驗'),
      ),
      body: Center(
        child: Text('這裡是聽力測驗內容'),
      ),
    );
  }
}

// 閱讀測驗頁面
class ReadingQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('閱讀測驗'),
      ),
      body: Center(
        child: Text('這裡是閱讀測驗內容'),
      ),
    );
  }
}

// 單詞練習頁面
class WordPracticeScreen extends StatefulWidget {
  @override
  _WordPracticeScreenState createState() => _WordPracticeScreenState();
}

class _WordPracticeScreenState extends State<WordPracticeScreen> {
  List<String> words = [];

  @override
  void initState() {
    super.initState();
    fetchWords();
  }

  Future<void> fetchWords() async {
    final response = await http.get(Uri.parse('https://random-word-api.herokuapp.com/word?number=20'));
    if (response.statusCode == 200) {
      setState(() {
        words = List<String>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load words');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('單詞練習'),
      ),
      body: words.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(words[index]),
          );
        },
      ),
    );
  }
}

// 短語練習頁面
class PhrasePracticeScreen extends StatefulWidget {
  @override
  _PhrasePracticeScreenState createState() => _PhrasePracticeScreenState();
}

class _PhrasePracticeScreenState extends State<PhrasePracticeScreen> {
  List<String> phrases = [];

  @override
  void initState() {
    super.initState();
    fetchPhrases();
  }

  Future<void> fetchPhrases() async {
    final response = await http.get(Uri.parse('https://api.example.com/phrases'));
    if (response.statusCode == 200) {
      setState(() {
        phrases = List<String>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load phrases');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('短語練習'),
      ),
      body: phrases.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(phrases[index]),
          );
        },
      ),
    );
  }
}

// 語法規則練習頁面
class GrammarPracticeScreen extends StatefulWidget {
  @override
  _GrammarPracticeScreenState createState() => _GrammarPracticeScreenState();
}

class _GrammarPracticeScreenState extends State<GrammarPracticeScreen> {
  List<String> grammarRules = [];

  @override
  void initState() {
    super.initState();
    fetchGrammarRules();
  }

  Future<void> fetchGrammarRules() async {
    final response = await http.get(Uri.parse('https://api.example.com/grammar_rules'));
    if (response.statusCode == 200) {
      setState(() {
        grammarRules = List<String>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load grammar rules');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('語法規則練習'),
      ),
      body: grammarRules.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: grammarRules.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(grammarRules[index]),
          );
        },
      ),
    );
  }
}

// 語言交換頁面
class LanguageExchangeScreen extends StatefulWidget {
  @override
  _LanguageExchangeScreenState createState() => _LanguageExchangeScreenState();
}

class _LanguageExchangeScreenState extends State<LanguageExchangeScreen> {
  List<String> partners = [];

  @override
  void initState() {
    super.initState();
    fetchPartners();
  }

  Future<void> fetchPartners() async {
    final response = await http.get(Uri.parse('https://api.example.com/language_partners'));
    if (response.statusCode == 200) {
      setState(() {
        partners = List<String>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load language partners');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('語言交換'),
      ),
      body: partners.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: partners.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(partners[index]),
          );
        },
      ),
    );
  }
}

// 社區頁面
class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('社區'),
      ),
      body: Center(
        child: Text('這裡是社區內容'),
      ),
    );
  }
}

// 個性化推薦頁面
class PersonalizedRecommendationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('個性化推薦'),
      ),
      body: Center(
        child: Text('這裡是個性化推薦內容'),
      ),
    );
  }
}
