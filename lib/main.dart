import 'package:flutter/material.dart';

void main() => runApp(MyPortfolio());

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        child: ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(description),
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Text(skill),
      ),
    );
  }
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harsh Tiwari - Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.deepPurple.shade200],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/73609540?s=400&u=7aca915a9b094dc62bc19a7a5f7ffb94e8f58949&v=4',
                            ),
                            // foregroundImage: ,
                          ),
                          SizedBox(height: 4,),
                          Text(
                            'Harsh Tiwari',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Flutter Developer | Cyber Security Enthusiast',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[900],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Experience'),
            ExperienceCard(
              title: 'Tasaya, Indore — Flutter Developer Intern',
              date: 'NOV 2023 - PRESENT',
              description:
              'Firebase connection, API handling, Google Sign-in, GetX, Google Maps',
            ),
            ExperienceCard(
              title: 'Techtwins Technologies, Remote — Cyber Security Intern',
              date: 'JUL 2022 - OCT 2022',
              description:
              'Scripting, Python, LINUX, Penetration Testing, Networking, BurpSuite, WireShark',
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Education'),
            EducationCard(
              institute: 'Prestige Institute of Engineering Management & Research, Indore',
              degree: 'B.Tech. CS',
              date: 'AUG 2020 - JUNE 2024',
              cgpa: '8.62 CGPA',
            ),
            EducationCard(
              institute: 'ST. Stephens Global School, Jhansi',
              degree: 'Intermediate',
              date: 'APR 2018 - JUNE 2019',
              details: r'Physics School Topper - 94/100\n82.60 %',
            ),
            EducationCard(
              institute: 'ST. Stephens Global School, Jhansi',
              degree: 'High School',
              date: 'MAY 2016 - JUNE 2017',
              cgpa: '10 CGPA',
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Projects'),
            ProjectCard(
              title: 'Saturday — AI Enhanced Flutter App',
              description:
              'Spearheaded a groundbreaking Flutter app, fusing ChatGPT-3.5, DALL·E API, and advanced speech to text for real-time AI interactions.',
            ),
            ProjectCard(
              title: 'I Attend — Smart Attendance Management App',
              description:
              'Uses face Recognition and QR scanning for marking Attendance.',
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Skills'),
            // Row(
            //   children: [
            //     SkillIcon(icon: Icons.code, label: 'C++'),
            //     SkillIcon(icon: Icons.flutter_dash, label: 'Flutter'),
            //     SkillIcon(icon: Icons.code, label: 'Python'),
            //     SkillIcon(icon: Icons.data_usage, label: 'SQL'),
            //     SkillIcon(icon: Icons.code, label: 'DSA'),
            //     SkillIcon(icon: Icons.code, label: 'Git'),
            //   ],
            // ),
            SizedBox(height: 20),
            SectionTitle(title: 'Achievements'),
            AchievementCard(achievement: 'President of Prestige Cyber Security Club - 1 Year'),
            AchievementCard(achievement: 'Selected as Chairperson for UNSC at PMUN 2023'),
            AchievementCard(achievement: '1200 Rated Chess Player at Chess.com'),
            SizedBox(height: 20),
            SectionTitle(title: 'Awards'),
            AwardCard(award: 'First position in Group Presentation'),
            AwardCard(award: 'First position in College Hackathon'),
            SizedBox(height: 20),
            SectionTitle(title: 'Certifications'),
            CertificationCard(certification: 'Basics of RS GIS and GNSS - ISRO IIRS, Dehradun'),
            CertificationCard(certification: 'Ethical Hacking Essentials'),
            SizedBox(height: 20),
            SectionTitle(title: 'Languages'),
            LanguageCard(language: 'English'),
            LanguageCard(language: 'Hindi'),
            LanguageCard(language: 'Sanskrit'),
            SizedBox(height: 20),
            SectionTitle(title: 'Contact Information'),
            ContactCard(
              email: 'harsh@example.com',
              phoneNumber: '+1234567890',
              linkedInUrl: 'https://www.linkedin.com/in/harsh-tiwari-a65406179/',
              githubUrl: 'https://github.com/harshtiwari0627',
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  ExperienceCard({required this.title, required this.date, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String institute;
  final String degree;
  final String date;
  final String? cgpa;
  final String? details;

  EducationCard({
    required this.institute,
    required this.degree,
    required this.date,
    this.cgpa,
    this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              institute,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              '$degree - $date',
              style: TextStyle(color: Colors.grey),
            ),
            if (cgpa != null) ...[
              SizedBox(height: 4),
              Text(
                'CGPA: $cgpa',
                style: TextStyle(color: Colors.grey),
              ),
            ],
            if (details != null) ...[
              SizedBox(height: 8),
              Text(details!, style: TextStyle(fontSize: 16)),
            ],
          ],
        ),
      ),
    );
  }
}
//
// class SkillIcon extends StatelessWidget {
//   final IconData icon;
//   final String label;
//
//   SkillIcon({required this.icon, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
//         title: Column(
//
//           children: [
//             Icon(icon, size: 40, color: Theme.of(context).primaryColor),
//             SizedBox(height: 8),
//             Text(
//               label,
//               style: TextStyle(fontSize: 12),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AchievementCard extends StatelessWidget {
  final String achievement;

  AchievementCard({required this.achievement});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          achievement,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}

class AwardCard extends StatelessWidget {
  final String award;

  AwardCard({required this.award});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          award,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}

class CertificationCard extends StatelessWidget {
  final String certification;

  CertificationCard({required this.certification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          certification,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}

class LanguageCard extends StatelessWidget {
  final String language;

  LanguageCard({required this.language});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          language,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String email;
  final String phoneNumber;
  final String linkedInUrl;
  final String githubUrl;

  ContactCard({
    required this.email,
    required this.phoneNumber,
    required this.linkedInUrl,
    required this.githubUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Email: $email'),
            Text('Phone: $phoneNumber'),
            InkWell(
              // onTap: () => _launch(linkedInUrl),
              child: Text('LinkedIn: $linkedInUrl', style: TextStyle(color: Colors.blue)),
            ),
            InkWell(
              // onTap: () => _launch(githubUrl),
              child: Text('GitHub: $githubUrl', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}