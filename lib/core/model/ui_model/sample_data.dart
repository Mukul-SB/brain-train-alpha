import 'user_comment_model.dart';
import 'user_post_model.dart';

class SampleData {
  ///// COMMENTS
  static List<UserCommentModel> sampleComments2 = [
    UserCommentModel(
      userName: 'Hailey Morgan',
      userProfile:
          'https://images.unsplash.com/photo-1482555670981-4de159d8553b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxnaXJsJTIwcHJvZmllbHxlbnwwfHx8fDE2OTc0NDI1MDV8MA&ixlib=rb-4.0.3&q=80&w=1080',
      commentTime: DateTime.now().subtract(const Duration(days: 1)),
      comment: 'Prioritize your well-being',
      // comment: 'I think bitching is healthy. I said what I said.',
    ),
    UserCommentModel(
      userName: 'Kate Nill',
      userProfile:
          'https://images.unsplash.com/photo-1483721310020-03333e577078?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080',
      commentTime: DateTime.now().subtract(const Duration(days: 2)),
      comment:
          'Mindful meditation has been a game-changer for managing my stress levels.',
    ),
    UserCommentModel(
      userName: 'John Doe',
      userProfile:
          'https://images.unsplash.com/photo-1483721310020-03333e577078?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080',
      commentTime: DateTime.now().subtract(const Duration(days: 2)),
      comment: 'Mind, body, spirit connection',
    ),
  ];

  static List<UserCommentModel> sampleComments3 = [
    UserCommentModel(
      userName: 'Emma Watson',
      userProfile:
          'https://images.unsplash.com/photo-1504051771394-dd2e66b2e08f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NDE&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 3)),
      comment: 'Prioritize your well-being.',
    ),
    UserCommentModel(
      userName: 'Daniel Johnson',
      userProfile:
          'https://images.unsplash.com/photo-1579591919791-0e3737ae3808?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NDM&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 4)),
      comment: 'Exercise for heart health.',
    ),
    UserCommentModel(
      userName: 'Sophia Williams',
      userProfile:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NDc&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 5)),
      comment: 'Cherish your mental health.',
    ),
    UserCommentModel(
      userName: 'Oliver Parker',
      userProfile:
          'https://images.unsplash.com/photo-1579380287268-aa88d096651c?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NTQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 6)),
      comment: 'Balance is the key.',
    ),
    UserCommentModel(
      userName: 'Ella Davis',
      userProfile:
          'https://images.unsplash.com/photo-1619412112597-0ac2d2a2d0f7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NjQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 7)),
      comment: 'Wellness is self-love.',
    ),
  ];

  static List<UserCommentModel> sampleComments4 = [
    UserCommentModel(
      userName: 'Ella Davis',
      userProfile:
          'https://images.unsplash.com/photo-1619412112597-0ac2d2a2d0f7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NjQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 8)),
      comment: 'Mindful meditation daily.',
    ),
    UserCommentModel(
      userName: 'Sophia Williams',
      userProfile:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NDc&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 9)),
      comment: 'Healthy habits, happy life.',
    ),
    UserCommentModel(
      userName: 'Benjamin Miller',
      userProfile:
          'https://images.unsplash.com/photo-1502323777036-f29e3972d82f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8cHJvZmlsZXx8fHx8fDE3MDYwOTc4NjY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420',
      commentTime: DateTime.now().subtract(const Duration(days: 10)),
      comment: 'Positive choices, good health.',
    ),
  ];

  /// USER POSTS
  static List<UserPostModel> samplePosts = [
    UserPostModel(
        profileImage:
            'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxQUk9GSUxFfGVufDB8fHx8MTY5NzE5NDQyN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        postImage: [
          "https://player.vimeo.com/external/477953740.sd.mp4?s=554b63e17fa72eb411675be38ebcf0bf55f3dcd9&profile_id=164&oauth2_token_id=57447761",
          'https://images.unsplash.com/photo-1627653789270-c18c6dba4734?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxoeWRyYXRpb258ZW58MHx8fHwxNzA1NjcwODUxfDA&ixlib=rb-4.0.3&q=80&w=1080',
          'https://images.unsplash.com/photo-1598371624473-4d95aca694e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw0fHxOdXRyaWVudHxlbnwwfHx8fDE3MDU2NzA0MDB8MA&ixlib=rb-4.0.3&q=80&w=1080',
          'https://images.unsplash.com/photo-1600618528240-fb9fc964b853?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=720&ixid=MnwxfDB8MXxyYW5kb218MHx8eW9nYXx8fHx8fDE3MDYwOTkxOTI&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=720'
        ],
        userName: 'John Doe',
        dateTime: DateTime.now().subtract(const Duration(hours: 2)),
        isPrimeMember: true,
        caption: 'The Power of Nutrient-Rich Foods',
        likes: 23,
        replies: 2,
        comments: sampleComments3),
    UserPostModel(
      profileImage:
          'https://images.unsplash.com/photo-1483721310020-03333e577078?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080',
      postImage: [
        'https://images.unsplash.com/photo-1593811167562-9cef47bfc4d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxtZWRpdGF0aW9ufGVufDB8fHx8MTcwNTY3MDYxOHww&ixlib=rb-4.0.3&q=80&w=1080',
        "https://player.vimeo.com/external/372301567.sd.mp4?s=6116141894bff25632e5930f3094baa2c2ca9a85&profile_id=164&oauth2_token_id=57447761",
        'https://images.unsplash.com/photo-1623764211727-5a8278662af0?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=720&ixid=MnwxfDB8MXxyYW5kb218MHx8eW9nYXx8fHx8fDE3MDYwOTkxNzg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=720'
      ],
      userName: 'Kate Nill',
      dateTime: DateTime.now().subtract(const Duration(hours: 2)),
      isPrimeMember: false,
      caption: 'Meditation is a bliss',
      likes: 23,
      replies: 2,
      comments: sampleComments2,
    ),
    UserPostModel(
        profileImage:
            'https://images.unsplash.com/photo-1482555670981-4de159d8553b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxnaXJsJTIwcHJvZmllbHxlbnwwfHx8fDE2OTc0NDI1MDV8MA&ixlib=rb-4.0.3&q=80&w=1080',
        postImage: [
          'https://images.unsplash.com/photo-1602192509154-0b900ee1f851?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw2fHxtZWRpdGF0aW9uJTIwfGVufDB8fHx8MTY5NzQ0MjY5NHww&ixlib=rb-4.0.3&q=80&w=1080',
          'https://images.unsplash.com/photo-1545389336-cf090694435e?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=720&ixid=MnwxfDB8MXxyYW5kb218MHx8eW9nYXx8fHx8fDE3MDYwOTkxOTg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=720'
        ],
        userName: 'Hailey Morgan',
        dateTime: DateTime.now().subtract(const Duration(hours: 7)),
        isPrimeMember: false,
        caption: 'Mindful Meditation for Stress Relief',
        likes: 78,
        replies: 13,
        comments: sampleComments4),
    UserPostModel(
      profileImage:
          'https://images.unsplash.com/photo-1483721310020-03333e577078?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080',
      postImage: [
        'https://images.unsplash.com/photo-1499209974431-9dddcece7f88?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyOXx8bWVkaXRhdGlvbnxlbnwwfHx8fDE2OTc0NDA5MzN8MA&ixlib=rb-4.0.3&q=80&w=1080'
      ],
      userName: 'Kate Nill',
      dateTime: DateTime.now().subtract(const Duration(hours: 7)),
      isPrimeMember: false,
      caption: 'Mindful Meditation for Stress Relief',
      likes: 78,
      replies: 13,
      comments: sampleComments2,
    ),
    UserPostModel(
        profileImage:
            'https://images.unsplash.com/photo-1445384763658-0400939829cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw2fHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080',
        postImage: [
          'https://images.unsplash.com/photo-1483721310020-03333e577078?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxfHxDYXJkaW92YXNjdWxhciUyMEV4ZXJjaXNlfGVufDB8fHx8MTcwNTY3MDczMXww&ixlib=rb-4.0.3&q=80&w=1080'
        ],
        userName: 'Caroline Forbes',
        dateTime: DateTime.now().subtract(const Duration(hours: 2)),
        isPrimeMember: false,
        caption: 'Walking For Good Health and Be Productive all day long',
        likes: 23,
        replies: 2,
        comments: sampleComments4),
  ];

  static List<Map<String, String>> newsFeedData = [
    {
      "_id": "920937cnw92x8h92n",
      "image":
          "https://images.unsplash.com/photo-1628619876503-2db74e724757?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxkaWFiZXRlc3xlbnwwfHx8fDE3MDEwNjkwMjF8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title":
          "GLP-1 agonists: Could they be more than just a treatment for diabetes?",
      "description":
          "High-profile coverage of the off-label use of Ozempic, a GLP-1 agonist, for weight loss, has meant that the type 2 diabetes drug has received a lot of bad press. As more studies into the long-term impact of this group of drugs are published, other potential benefits of the drug are emerging.\n\nGlucagon-like peptide-1 (GLP-1) agonist drugs have been prescribed for people with type 2 diabetes and obesity for nearly 20 years, as they were first licensed by the Food and Drug AdministrationTrusted Source (FDA) in 2005.\n\nSince then, a number of long-term studies have emerged evaluating both their benefits and their risks, along with some results suggesting potential for further uses.\n\nGlucagonTrusted Source is a hormone released from the islets of LangerhansTrusted Source in the pancreas, and it plays an important role in maintaining sugar levels balanced in the body.",
      "author": "Hannah Flynn",
      "createdAt": "2022-09-01T05:15:40.702Z"
    },
    {
      "_id": "9204asfdcau64643",
      "image":
          "https://images.unsplash.com/photo-1593491205049-7f032d28cf5c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3fHxwcmUlMjBkaWFiZXRlc3xlbnwwfHx8fDE3MDEwNjkwNjR8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "In Conversation: Can diet and exercise reverse pre diabetes?",
      "description":
          "Explore the intriguing dialogue on whether diet and exercise can reverse pre-diabetes in this engaging conversation. Delve into the insights and discussions surrounding the potential impact of lifestyle choices on pre-diabetic conditions, shedding light on the transformative possibilities for individuals seeking to manage and potentially reverse their pre-diabetes through mindful diet and regular exercise.",
      "author": "Yasemin Nicola Sokay",
      "createdAt": "2023-03-11T05:15:40.702Z"
    },
    {
      "_id": "4ad463asd687y631",
      "image":
          "https://images.unsplash.com/photo-1472141521881-95d0e87e2e39?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxOXx8c2VlZHN8ZW58MHx8fHwxNzAxMDY5MTA4fDA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Aging: Could a moderate protein diet be the key to youth?",
      "description":
          "Uncover the discussion on aging and the potential key to youth—a moderate protein diet. This exploration delves into the idea that dietary choices, particularly focusing on moderate protein intake, could play a crucial role in addressing the effects of aging. Gain insights into the evolving perspectives on nutrition and its impact on the aging process, offering a fresh outlook on maintaining vitality through dietary strategies.",
      "author": "Robby Berman",
      "createdAt": "2022-08-21T05:15:40.702Z"
    },
    {
      "_id": "46346876311214434694da",
      "image":
          "https://images.unsplash.com/photo-1463736932348-4915535cf6f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxoZWFydCUyMGF0dGFja3xlbnwwfHx8fDE3MDEwNzA0MDN8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title":
          "Scientists find 16 genes that increase risk for heart attack in women",
      "description":
          "In a groundbreaking discovery, scientists have identified 16 genes that significantly elevate the risk of heart attacks in women. This research sheds light on the genetic factors that contribute to cardiovascular health, providing crucial information for understanding and mitigating heart attack risks in women. The findings mark a significant step towards personalized approaches in preventing and managing heart-related conditions in female populations.",
      "author": "Erika Watts",
      "createdAt": "2023-07-09T05:15:40.702Z"
    },
    {
      "_id": "463468763112124434694da",
      "image":
          "https://images.unsplash.com/photo-1520206183501-b80df61043c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxOHx8U2xlZXAlMjBhbmQlMjBXZWlnaHQlMjBMb3NzfGVufDB8fHx8MTcwNjA5MzM2NXww&ixlib=rb-4.0.3&q=80&w=1080",
      "title":
          "Breakthrough Study Reveals Surprising Link Between Sleep and Weight Loss",
      "description":
          "New study reveals unexpected link between sleep and weight loss, challenging conventional beliefs and suggesting a fresh perspective on the impact of sleep patterns on metabolic processes and maintaining a healthy body weight.",
      "author": "Olivia Rodriguez",
      "createdAt": "2023-04-08T05:15:40.702Z"
    },
    {
      "_id": "4634687631121443e4694da",
      "image":
          "https://images.unsplash.com/photo-1611689698949-1e776464ff23?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzNnx8QWxsZXJnaWVzfGVufDB8fHx8MTcwNjA5MzUxOXww&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Revolutionary Drug Shows Promise in Curing Common Allergies",
      "description":
          "A groundbreaking drug is showing promise in curing common allergies, offering hope for a transformative shift in allergy treatment. Early trials indicate significant efficacy, raising optimism for those seeking relief from allergic conditions.",
      "author": "Ethan Thompson",
      "createdAt": "2024-01-03T05:15:40.702Z"
    },
    {
      "_id": "4634687631121a4434694da",
      "image":
          "https://images.unsplash.com/photo-1529693662653-9d480530a697?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw2NXx8TWVkaXRhdGlvbnxlbnwwfHx8fDE3MDYwOTM2NTN8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title":
          "The Power of Mindfulness: How Meditation Can Improve Mental Health",
      "description":
          "Discover the transformative impact of mindfulness in this exploration of how meditation can enhance mental health. Unveiling the power of cultivating mindfulness, the article highlights how incorporating meditation practices into daily life can contribute to improved mental well-being. Explore the potential benefits of mindfulness and gain insights into its positive effects on mental health.",
      "author": "Maya Patel",
      "createdAt": "2024-01-11T05:15:40.702Z"
    },
    {
      "_id": "4634687631m1214434694da",
      "image":
          "https://images.unsplash.com/photo-1542990253-a781e04c0082?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxTdXBlcmZvb2R8ZW58MHx8fHwxNzA2MDkzNzY4fDA&ixlib=rb-4.0.3&q=80&w=1080",
      "title":
          "New Research Unveils Superfood That Boosts Immunity and Fights Inflammation",
      "description":
          "Unlock the latest in nutrition with groundbreaking research revealing a superfood that not only boosts immunity but also combats inflammation. This discovery presents a potential game-changer in promoting overall health, offering insights into incorporating this superfood into a balanced diet for enhanced well-being.",
      "author": "Sebastian Chen",
      "createdAt": "2023-12-21T05:15:40.702Z"
    },
    {
      "_id": "4634687631121v4434694da",
      "image":
          "https://images.unsplash.com/photo-1607962837359-5e7e89f86776?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw2M3x8Rml0bmVzcyUyMFRyZW5kc3xlbnwwfHx8fDE3MDYwOTM4MzZ8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Fitness Trends 2024: The Hottest Workouts for a Healthy Body",
      "description":
          "Stay ahead of the curve with a glimpse into the hottest fitness trends of 2024. This article unveils cutting-edge workouts designed to sculpt a healthy body, providing a sneak peek into the exercise routines that are set to dominate the fitness scene. Discover the trends that promise to redefine your fitness journey and contribute to a fitter, healthier you.",
      "author": "Zoe Mitchell",
      "createdAt": "2023-11-11T05:15:40.702Z"
    }
  ];

  static List<Map<String, dynamic>> offersData = [
    {
      "_id": "dha2sdj5kh7khk1412",
      "title":
          "Need an host for a food event that is going to be organized soon",
      "benefitToSponsee":
          "I've an offer for you. Let's connect to discuss my vision about the event I am going to host for the community.",
      "validity": {
        "from": "2023-10-15T12:30:00Z",
        "to": "2023-10-23T12:30:00Z"
      },
      "image":
          "https://images.unsplash.com/photo-1531114297032-fef035025fe7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw5fHxmYWlyfGVufDB8fHx8MTY5ODQwMzM2M3ww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType": "Event Promotion",
      "productName": "MuscleBlaze High Protein Oats",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1566669963596-5ce7ff32eaac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw1fHxnaXJsJTIwc2l0dGluZ3xlbnwwfHx8fDE3MDMxNTQwMzZ8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Josephine Wade",
        "isPractitioner": true,
        "expertiseIn": "Yoga Trainer",
        "location": "San Francisco, California"
      },
      "description":
          "Join us for an extraordinary food event that promises to leave a lasting impression! We are thrilled to invite you to our upcoming marathon, specially organized for 50 enthusiastic participants. Get ready to embark on a memorable journey filled with adrenaline-pumping excitement, while also savoring months of delectable and nourishing culinary delights."
    },
    {
      "_id": "dha2sdj5kh7khk1412a",
      "title": "Wellness Boost Package: Revitalize Mind and Body.",
      "benefitToSponsee":
          "Priority booking, personalized wellness consultations, and exclusive access to virtual mindfulness sessions for an entire month.",
      "validity": {"from": "March 15, 2024", "to": "April 15, 2024"},
      "image":
          "https://images.unsplash.com/photo-1532592068623-db1978e40df5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyOHx8V2VsbG5lc3N8ZW58MHx8fHwxNzA2MDk4OTE4fDA&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Buy the Wellness Boost Package and receive the wellness journal for free.",
      "productName":
          "A wellness journal for self-reflection and goal tracking.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxNnx8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5NjN8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Isabella Thompson",
        "isPractitioner": true,
        "expertiseIn": "Beauty",
        "location": "Serene Springs Retreat, Boulder, Colorado"
      },
      "description":
          "Discover a holistic approach to well-being with our Wellness Boost Package. Immerse yourself in rejuvenating activities designed to revitalize both mind and body, promoting a healthier and more balanced lifestyle."
    },
    {
      "_id": "dha2sdj5kh7khk1412s",
      "title": "Fitness Fusion Deal: Transform Your Workout Routine",
      "benefitToSponsee":
          "Complimentary fitness assessments, a dedicated personal trainer session, and a special discount on fitness gear.",
      "validity": {"from": "April 1, 2024", "to": "April 30, 2024"},
      "image":
          "https://images.unsplash.com/photo-1627483297886-49710ae1fc22?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MXwxfHNlYXJjaHwxfHxGaXRuZXNzfGVufDB8fHx8MTcwNjA5OTAwMXww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Purchase the Fitness Fusion Deal and get the fitness resistance bands at half price.",
      "productName": "High-quality fitness resistance bands.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxN3x8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5NjN8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Malik Johnson",
        "isPractitioner": true,
        "expertiseIn": "Gym Trainer",
        "location": "FitFlex Gym, Miami, Florida"
      },
      "description":
          "Elevate your fitness journey with our Fitness Fusion Deal. Experience a transformative blend of workouts, from high-intensity training to calming yoga sessions, ensuring a well-rounded and effective approach to achieving your fitness goals."
    },
    {
      "_id": "dha2sdj5kh7khk141w2",
      "title": "Culinary Delights Special: Gourmet Cooking Class Series",
      "benefitToSponsee":
          "VIP access to cooking classes, a curated recipe booklet, and an exclusive invitation to a chef-hosted virtual dinner party.",
      "validity": {"from": "April 10, 2024", "to": "May 10, 2024"},
      "image":
          "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw0fHxHb3VybWV0fGVufDB8fHx8MTcwNjA5OTA3MXww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Receive a complimentary chef's knife set with the purchase of the Culinary Delights Special.",
      "productName": "Professional chef's knife set.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxOXx8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5NjN8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Sophia Ramirez",
        "isPractitioner": true,
        "expertiseIn": "Chef",
        "location": "Culinary Arts Institute, Portland, Oregon"
      },
      "description":
          "Unleash your inner chef with our Culinary Delights Special. Embark on a culinary adventure with our gourmet cooking class series, where you'll master the art of creating exquisite dishes and elevate your home cooking skills."
    },
    {
      "_id": "dha2sdj5kqh7khk1412",
      "title": "Ultimate Relaxation Retreat: Spa and Massage Package",
      "benefitToSponsee":
          "Deluxe spa gift set, extended massage sessions, and a complimentary aromatherapy upgrade.",
      "validity": {"from": "March 20, 2024", "to": "April 20, 2024"},
      "image":
          "https://images.unsplash.com/photo-1544161515-4ab6ce6db874?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyfHxTcGF8ZW58MHx8fHwxNzA2MDk5MTIwfDA&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Buy the Ultimate Relaxation Retreat and get the essential oil diffuser at a special discounted price.",
      "productName": "Aromatherapy essential oil diffuser.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyMHx8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5NjN8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Aiden Martinez",
        "isPractitioner": true,
        "expertiseIn": "Maditation Trainer",
        "location": "Tranquil Spa Haven, Sedona, Arizona"
      },
      "description":
          "Indulge in a world of tranquility with our Ultimate Relaxation Retreat. Pamper yourself with rejuvenating spa treatments and soothing massages, providing the perfect escape from the stresses of daily life."
    },
    {
      "_id": "dha2sdj5kh7khck1412",
      "title": "Tech Upgrade Bonanza: Exclusive Discounts on Latest Gadgets",
      "benefitToSponsee":
          "Personalized tech consultation, priority access to new releases, and a limited-edition gadget.",
      "validity": {"from": "April 5, 2024", "to": "May 5, 2024"},
      "image":
          "https://images.unsplash.com/photo-1519389950473-47ba0277781c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw1fHxUZWNofGVufDB8fHx8MTcwNjA5OTE3OHww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Purchase the Tech Upgrade Bonanza and receive the headphones at 20% off.",
      "productName": "Wireless noise-canceling headphones.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1614283233556-f35b0c801ef1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyNHx8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5Njl8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Olivia Foster",
        "isPractitioner": true,
        "expertiseIn": "Techie",
        "location": "Gadget Galaxy, San Francisco, California"
      },
      "description":
          "Stay ahead in the digital age with our Tech Upgrade Bonanza. Enjoy exclusive discounts on the latest gadgets and tech innovations, ensuring you're equipped with cutting-edge technology for both work and play."
    },
    {
      "_id": "dha2sdja5kh7khk1412",
      "title": "Learning Adventure Bundle: Dive into a World of Knowledge",
      "benefitToSponsee":
          "VIP access to expert-led webinars, a dedicated learning mentor, and a certificate of completion for a selected course.",
      "validity": {"from": "March 25, 2024", "to": "April 25, 2024"},
      "image":
          "https://images.unsplash.com/photo-1539635278303-d4002c07eae3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyMXx8QWR2ZW50dXJlfGVufDB8fHx8MTcwNjA5OTIzOXww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Physical"],
      "topics": ["Exercise", "Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Buy the Learning Adventure Bundle and get the e-reader with exclusive e-books for free.",
      "productName":
          "E-reader with a curated collection of educational e-books.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1560250097-0b93528c311a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyMnx8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5Njl8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Ethan Harper",
        "isPractitioner": true,
        "expertiseIn": "Techie",
        "location": "Knowledge Hub Center, Austin, Texas"
      },
      "description":
          "Ignite your curiosity with our Learning Adventure Bundle. Dive into a world of knowledge with a curated selection of courses, workshops, and educational resources designed to broaden your horizons and foster continuous learning."
    },
    {
      "_id": "dha2sdj5kh7akhk1412",
      "title": "Home Makeover Extravaganza: Stylish Decor Discounts",
      "benefitToSponsee":
          "Personalized interior design consultation, early access to new decor arrivals, and an exclusive home decor gift package.",
      "validity": {"from": "April 8, 2024", "to": "May 8, 2024"},
      "image":
          "https://images.unsplash.com/photo-1615875605825-5eb9bb5d52ac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyOXx8SG9tZSUyME1ha2VvdmVyfGVufDB8fHx8MTcwNjA5OTI5M3ww&ixlib=rb-4.0.3&q=80&w=1080",
      "createdAt": "2023-10-26T12:30:00Z",
      "categories": ["Lifestyle"],
      "topics": ["Beauty"],
      "offerType": "Event Promotion",
      "promotionType":
          "Purchase the Home Makeover Extravaganza and receive the smart home lighting system at a discounted rate.",
      "productName": "Smart home lighting system.",
      "sponsor": {
        "profileImage":
            "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzM3x8cHJvZmlsZXxlbnwwfHx8fDE3MDYwOTg5Njl8MA&ixlib=rb-4.0.3&q=80&w=1080",
        "name": "Mia Nguyen",
        "isPractitioner": true,
        "expertiseIn": "Home designer",
        "location": "Chic Living Showroom, New York City, New York"
      },
      "description":
          "Transform your living space with our Home Makeover Extravaganza. Explore stylish decor discounts and exclusive offers on furniture, accessories, and more, turning your home into a haven of comfort and style."
    }
  ];

  static List<Map<String, dynamic>> eventsData = [
    {
      "_id": "1a23b456c",
      "interested": 1505,
      "avatar":
          "https://images.unsplash.com/photo-1526772662000-3f88f10405ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwzfHxIaWtpbmclMjBFeHBlZGl0aW9ufGVufDB8fHx8MTcwNjEwMTUyNXww&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Hiking Expedition",
      "date": "2024-02-15T09:00:00Z",
      "location": "Denver, Colorado",
      "categories": ["Outdoor"],
      "message":
          "Embark on a thrilling hiking adventure through scenic trails and picturesque landscapes!",
      "description":
          "Join us for a memorable hiking expedition with breathtaking views. This event is perfect for nature enthusiasts seeking an exhilarating experience. Don't miss out on the chance to explore the great outdoors and connect with fellow hikers.",
      "validity": {"from": "2023-12-15", "to": "2024-02-10"}
    },
    {
      "_id": "2b45c678d",
      "interested": 778,
      "avatar":
          "https://images.unsplash.com/photo-1577253313708-cab167d2c474?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxMnx8TWVkaXRhdGlvbnxlbnwwfHx8fDE3MDYwOTM2MzB8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Mindfulness Meditation",
      "date": "2024-03-05T18:30:00Z",
      "location": "Seattle, Washington",
      "categories": ["Mental"],
      "message":
          "Discover the art of mindfulness meditation for a peaceful and balanced mind.",
      "description":
          "Join our guided mindfulness meditation session to cultivate inner peace and mental clarity. Immerse yourself in the serenity of the practice, fostering a sense of tranquility and well-being. No prior experience required – everyone is welcome.",
      "validity": {"from": "2024-01-20", "to": "2024-02-28"}
    },
    {
      "_id": "3c67d890e",
      "interested": 612,
      "avatar":
          "https://images.unsplash.com/photo-1612144788280-c9096c34486a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3MHx8cGhvdG9ncmFwaHl8ZW58MHx8fHwxNzA2MTAxNjM5fDA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Photography Workshop",
      "date": "2024-02-22T14:00:00Z",
      "location": "Austin, Texas",
      "categories": ["Creative"],
      "message":
          "Unlock the secrets of photography with our expert-led workshop for all skill levels.",
      "description":
          "Capture the world through your lens! Join our Photography Workshop for a hands-on experience with professional photographers. Whether you're a beginner or an enthusiast, this workshop will enhance your photography skills and ignite your creativity.",
      "validity": {"from": "2024-02-01", "to": "2024-02-20"}
    },
    {
      "_id": "4d89e012f",
      "interested": 520,
      "avatar":
          "https://images.unsplash.com/photo-1566954979172-eaba308acdf0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3fHxhcnQlMjBleGhpYml0aW9ufGVufDB8fHx8MTcwNjEwMTY3Mnww&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Art Exhibition",
      "date": "2024-03-10T17:00:00Z",
      "location": "New York City, New York",
      "categories": ["Creative"],
      "message":
          "Experience the world of art with a diverse collection of captivating masterpieces.",
      "description":
          "Immerse yourself in the world of art at our exclusive Art Exhibition. Explore a diverse collection of paintings, sculptures, and mixed media pieces created by talented artists. This event promises to be a visual feast for art enthusiasts.",
      "validity": {"from": "2024-02-15", "to": "2024-03-08"}
    },
    {
      "_id": "5e01f234g",
      "interested": 722,
      "avatar":
          "https://images.unsplash.com/photo-1524247108137-732e0f642303?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwyMnx8Z2FyZGVuaW5nfGVufDB8fHx8MTcwNjEwMTcwNnww&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Gardening Workshop",
      "date": "2024-03-18T11:00:00Z",
      "location": "Chicago, Illinois",
      "categories": ["Outdoor"],
      "message":
          "Learn the art of gardening and cultivate a green thumb with our hands-on workshop.",
      "description":
          "Join our Gardening Workshop to discover the joys of cultivating your own garden. Whether you're a seasoned gardener or a beginner, this hands-on workshop will provide valuable insights into plant care, landscaping, and sustainable gardening practices.",
      "validity": {"from": "2024-03-01", "to": "2024-03-15"}
    },
    {
      "_id": "6f78g9102",
      "interested": 184,
      "avatar":
          "https://images.unsplash.com/photo-1575220352017-e7e9536b1d37?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxMTd8fGxpYnJhcnl8ZW58MHx8fHwxNzA2MTAxNzk0fDA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Book Club Gathering",
      "date": "2024-02-28T19:30:00Z",
      "location": "Los Angeles, California",
      "categories": ["Mental"],
      "message":
          "Indulge in the pleasure of reading and join our lively book club discussion.",
      "description":
          "Escape into the world of literature at our Book Club Gathering. Engage in meaningful discussions, share insights, and connect with fellow book lovers. Whether you're a casual reader or a book enthusiast, this event promises a delightful literary experience.",
      "validity": {"from": "2024-02-05", "to": "2024-02-25"}
    },
    {
      "_id": "7h89i0123",
      "interested": 120,
      "avatar":
          "https://images.unsplash.com/photo-1545205597-3d9d02c29597?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxNHx8eW9nYXxlbnwwfHx8fDE3MDYxMDE4MjN8MA&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Outdoor Yoga Retreat",
      "date": "2024-03-25T08:00:00Z",
      "location": "Portland, Oregon",
      "categories": ["Physical"],
      "message":
          "Rejuvenate your body and soul with a refreshing outdoor yoga retreat.",
      "description":
          "Join us for a revitalizing Outdoor Yoga Retreat amidst nature's beauty. Immerse yourself in yoga and mindfulness practices, led by experienced instructors. This retreat is designed to promote physical well-being and inner peace.",
      "validity": {"from": "2024-03-10", "to": "2024-03-20"}
    },
    {
      "_id": "8j01k2345",
      "interested": 50,
      "avatar":
          "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw4fHxtdXNpYyUyMGZlc3RpdmFsfGVufDB8fHx8MTcwNjEwMTg1NXww&ixlib=rb-4.0.3&q=80&w=1080",
      "title": "Local Music Festival",
      "date": "2024-04-02T16:00:00Z",
      "location": "San Diego, California",
      "categories": ["Creative"],
      "message":
          "Celebrate local talent and immerse yourself in a vibrant music festival experience.",
      "description":
          "Join us for a Local Music Festival featuring talented local artists and bands. Immerse yourself in a day of live music, entertainment, and community spirit. This festival promises to showcase the diverse and vibrant music scene in our local community.",
      "validity": {"from": "2024-03-15", "to": "2024-03-31"}
    }
  ];

  static List<Map<String, String>> notificationsData = [
    {
      "title": "Attended Art Exhibition",
      "description":
          "Explored the mesmerizing world of art at the latest exhibition in town.",
      "image":
          "https://images.unsplash.com/photo-1593607358685-2aa8e6b48512?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=420&ixid=MnwxfDB8MXxyYW5kb218MHx8YXJ0ZXhoaWJpdGlvbnx8fHx8fDE3MDYxMDMyMjg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=420"
    },
    {
      "title": "Tech Meetup Participant",
      "description":
          "Engaged in insightful discussions on the latest technology trends and innovations.",
      "image":
          "https://images.unsplash.com/photo-1531482615713-2afd69097998?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "title": "Fitness Challenge Achiever",
      "description":
          "Successfully completed a 30-day fitness challenge, feeling accomplished and healthier.",
      "image":
          "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "title": "Book Club Member",
      "description":
          "Dived into captivating stories and shared thoughts with fellow book enthusiasts at the monthly book club meet-up.",
      "image":
          "https://images.unsplash.com/photo-1460518451285-97b6aa326961?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    }
  ];
}
